require 'rails_helper'

RSpec.describe "murals/edit", type: :view do
  before(:each) do
    @mural = assign(:mural, Mural.create!(
      :mensagem => "MyText"
    ))
  end

  it "renders the edit mural form" do
    render

    assert_select "form[action=?][method=?]", mural_path(@mural), "post" do

      assert_select "textarea#mural_mensagem[name=?]", "mural[mensagem]"
    end
  end
end
