# -*- encoding: utf-8 -*-
require "spec_helper"

describe "Create Question" do

  it "Home Page" do
    visit "/"
    page.should have_content("Últimas perguntas")
  end
end
