module Api
  module V1
    class CosmeticUsagesController < ApplicationController
      before_action :set_current_user

      def create
        cosmetic_usage = @current_user.cosmetic_usages.build(cosmetic_usage_params)

        if cosmetic_usage.save
          render json: cosmetic_usage, status: :created
        else
          render json: cosmetic_usage.errors, status: :unprocessable_entity
        end
      end

      def index
        cosmetic_usages = @current_user.cosmetic_usages
        render json: cosmetic_usages
      end

      def destroy
        cosmetic_usage = @current_user.cosmetic_usages.find(params[:id])
        if cosmetic_usage.destroy
          render json: { message: '通知設定を削除しました。' }, status: :ok
        else
          render json: { error: '通知設定の削除に失敗しました。' }, status: :unprocessable_entity
        end
      end

      private

      def cosmetic_usage_params
        params.require(:cosmetic_usage).permit(:item_type, :open_date, :expiry_date)
      end
    end
  end
end