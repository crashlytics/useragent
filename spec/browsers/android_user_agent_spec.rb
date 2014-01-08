require 'user_agent'

# Nexus 7 through Chrome App
describe "UserAgent: 'Mozilla/5.0 (Linux; Android 4.2; Nexus 7 Build/JOP40C) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Safari/535.19'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Linux; Android 4.2; Nexus 7 Build/JOP40C) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Safari/535.19")
  end

  it "should return 'Chrome' as its browser" do
    @useragent.browser.should == "Chrome"
  end

  it "should return 'Android' as its platform" do
    @useragent.platform.should == "Android"
  end

  it { @useragent.should be_mobile }
end

# Nexus 5 through Chrome App
describe "UserAgent: 'Mozilla/5.0 (Linux; Android 4.4.2; Nexus 5 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.59 Mobile Safari/537.36'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Linux; Android 4.4.2; Nexus 5 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.59 Mobile Safari/537.36")
  end

  it "should return 'Chrome' as its browser" do
    @useragent.browser.should == "Chrome"
  end

  it "should return 'Android' as its platform" do
    @useragent.platform.should == "Android"
  end

  it { @useragent.should be_mobile }
end

# Moto Xoom through stock Browser App
describe "UserAgent: 'Mozilla/5.0 (Linux; U; Android 4.0.4; en-us; Xoom Build/IMM76) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Linux; U; Android 4.0.4; en-us; Xoom Build/IMM76) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30")
  end

  it "should return 'Android' as its browser" do
    @useragent.browser.should == "Android"
  end

  it "should return 'Android' as its platform" do
    @useragent.platform.should == "Android"
  end

  it { @useragent.should be_mobile }
end

# Moto Atrix through stock Browser App
describe "UserAgent: 'Mozilla/5.0 (Linux; U; Android 2.3.6; en-us; MB860 Build/4.5.141) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Linux; U; Android 2.3.6; en-us; MB860 Build/4.5.141) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "should return 'Android' as its browser" do
    @useragent.browser.should == "Android"
  end

  it "should return 'Android' as its platform" do
    @useragent.platform.should == "Android"
  end

  it { @useragent.should be_mobile }
end
