require 'rails_helper'

RSpec.describe "murals/show", type: :view do
  before(:each) do
    @mural = assign(:mural, Mural.create!(
      :mensagem => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
