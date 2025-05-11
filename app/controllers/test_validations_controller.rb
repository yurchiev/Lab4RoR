class TestValidationsController < ApplicationController
  def create_user
    user = User.create(name: 'John Doe', email: 'john@example.com')
    render json: user.errors.full_messages
  end

  def create_expense
    user = User.first
    category = Category.first
    expense = Expense.new(amount: -50, date: Time.now, user: user, category: category)
    render json: expense.errors.full_messages
  end
end
