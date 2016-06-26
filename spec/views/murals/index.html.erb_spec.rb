require 'rails_helper'

RSpec.describe "murals/index", type: :view do
  before(:each) do
    assign(:murals, [
      Mural.create!(
        :mensagem => "MyText"
      ),
      Mural.create!(
        :mensagem => "MyText"
      )
    ])
  end

  it "renders a list of murals" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
