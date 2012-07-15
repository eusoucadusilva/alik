require "spec_helper"

describe Question, "validations" do
  it { should allow("Question").for(:title) }
  it { should_not allow(nil).for(:title) }

  it { should allow("Some Description").for(:description) }
  it { should_not allow(nil).for(:description) }
  
  it { should allow("Jose Maria").for(:requester_name) }
  it { should_not allow(nil).for(:requester_name) }
  
  it { should allow("jose@gmail.com").for(:requester_email) }
  it { should_not allow(nil).for(:requester_email) }
  
  it { should allow("99").for(:requester_phone_area_code) }
  it { should_not allow(nil).for(:requester_phone_area_code) }
  
  it { should allow("99999999").for(:requester_phone_number) }
  it { should_not allow(nil).for(:requester_phone_number) }


end
