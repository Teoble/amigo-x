require 'rails_helper'

RSpec.describe "murals/new", type: :view do
  before(:each) do
    assign(:mural, Mural.new(
      :mensagem => "MyText"
    ))
  end

  it "renders new mural form" do
    render

    assert_select "form[action=?][method=?]", murals_path, "post" do

      assert_select "textarea#mural_mensagem[name=?]", "mural[mensagem]"
    end
  end
end
