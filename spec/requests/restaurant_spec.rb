require 'spec_helper'

context "GET /" do
  subject { get "/" }
  it "renders index" do
    expect(subject).to render_template(:index)
  end
end
