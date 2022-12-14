# frozen_string_literal: true

class Web::SessionsController < Web::ApplicationController
  def new
    @sign_in_form = SignInForm.new
  end

  def create
    @sign_in_form = SignInForm.new(params[:sign_in_form])

    # Rollbar.log('debug', 'Session create', {
    #               origin: request.origin,
    #               base_url: request.base_url
    #             })

    if @sign_in_form.valid?
      sign_in @sign_in_form.user
      f(:success)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
