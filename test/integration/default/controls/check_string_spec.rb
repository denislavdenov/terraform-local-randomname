tags = attribute(
  "tags",
  description: "The Terraform configuration under test must define an "
)

control 'check_string' do
  describe tags do 
    it { should_not eq "nil" } 
    it { should_not eq "" }
    it { should_not eq "default_value" }  
  end
end