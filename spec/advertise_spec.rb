Config.load_and_set_settings("./config/settings.yml")

RSpec.describe Advertise do
  it "has a version number" do
    expect(Advertise::VERSION).not_to be nil
  end
end
