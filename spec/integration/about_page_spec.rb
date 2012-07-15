# -*- encoding: utf-8 -*-
require "spec_helper"

describe "Show About Page" do

  it "About Page" do
    visit about_path
    page.should have_content I18n.t("site.about.container_title")
  end
end
