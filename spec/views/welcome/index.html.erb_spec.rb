require 'rails_helper'

RSpec.describe 'welcome/index.html.erb', :type => :view do
  before do
    render
  end

  it 'ng-view を含むこと' do
    expect(rendered).to match 'ng-view'
  end
end
