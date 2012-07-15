require "spec_helper"

describe Question, "assignment" do
  it "doesn't throw exception" do
    expect{
      Question.create({
       :title                     => "Question One",
       :description               => "Description Question",
       :requester_name            => "Jose Maria",
       :requester_email           => "jose@gmail.com",
       :requester_phone_area_code => "91",
       :requester_phone_number    => "99999999"
      })
    }.to_not raise_error
  end
end
