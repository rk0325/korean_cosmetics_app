# frozen_string_literal: true

class UpdateSchema < ActiveRecord::Migration[7.0]
  def change
    remove_reference :addresses, :user, index: true, foreign_key: true
  end
end
