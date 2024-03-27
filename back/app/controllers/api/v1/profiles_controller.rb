# frozen_string_literal: true

module Api
  module V1
    class ProfilesController < ApplicationController
      before_action :set_current_user

      def update
        profile = @current_user.profile || @current_user.build_profile

        address = Address.find_by(address: profile_params[:prefecture])
        if address
          profile.address_id = address.id
        else
          render json: { status: 'failure', message: 'Address not found', data: {} }, status: :not_found
          return
        end

        if profile.update(profile_params)
          render json: profile, status: :ok
        else
          render json: { status: 'failure', message: profile.errors.full_messages.to_sentence, data: {} },
                 status: :unprocessable_entity
        end
      end

      def show
        profile = Profile.find_or_create_by(user_id: current_user.id) do |new_profile|
          new_profile.name = current_user.name
          new_profile.avatar = current_user.avatar
        end
        render json: profile
      end

      private

      def profile_params
        params.require(:profile).permit(:name, :age, :skin_type, :skin_trouble, :avatar, :prefecture)
      end
    end
  end
end
