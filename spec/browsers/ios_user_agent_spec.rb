require 'user_agent'

describe "UserAgent: 'Mozilla/5.0 (iPod; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPod; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329")
  end

  it "should return 'UIWebView' as its browser" do
    @useragent.browser.should == "UIWebView"
  end

  it "should return 'iOS' as its platform" do
    @useragent.os.should match /^iOS/
  end

  it { @useragent.should be_mobile }
end

describe "UserAgent: 'Mozilla/5.0 (iPod; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPod; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25")
  end

  it "should return 'Safari' as its browser" do
    @useragent.browser.should == "Safari"
  end

  it "should return 'iOS' as its platform" do
    @useragent.os.should match /^iOS/
  end

  it { @useragent.should be_mobile }
end

# Appears to be desktop chrome doing a bad job of emuulating
describe "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53")
  end

  it "should return 'Safari' as its browser" do
    @useragent.browser.should == "Safari"
  end

  it "should return 'iOS' as its platform" do
    @useragent.os.should match /^iOS/
  end


  it { @useragent.should be_mobile }
end

describe "UserAgent: 'Mozilla/5.0 (iPod; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/27.0.1453.10 Mobile/10B329 Safari/8536.25'" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPod; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/27.0.1453.10 Mobile/10B329 Safari/8536.25")
  end

  it "should return 'Chrome' as its browser" do
    @useragent.browser.should == "Chrome"
  end

  it "should return 'iOS' as its platform" do
    @useragent.os.should match /^iOS/
  end

  it { @useragent.should be_mobile }
end

