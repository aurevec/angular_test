class Api::V1::ContactsController < ApplicationController
  skip_before_filter :set_request_format
  respond_to :json

  def index
    respond_with(Contact.all)
  end

  def default_serializer_options
    {
        root: false
    }
  end

  private

  def contact_params
    params.require(:contact).permit(
      :first_name,
      :last_name
    )
  end
end
