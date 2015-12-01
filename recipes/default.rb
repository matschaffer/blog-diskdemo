cookbook_file '/app.rb'

control_group 'My awesome app' do
  control 'deployment' do
    it 'should be deployed' do
      expect(file('/app.rb')).to contain('awesome')
    end
  end
end
