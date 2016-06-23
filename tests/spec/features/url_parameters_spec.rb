require 'spec_helper'
require 'support/editor'

RSpec.feature "Configuration by URL parameters", type: :feature, js: true do
  scenario "loading from a Gist" do
    visit '/?gist=20fb1e0475f890d0fdb7864e3ad0820c'

    expect(editor).to have_line 'This source code came from a Gist'
  end

  def editor
    Editor.new(page)
  end
end
