RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:all) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end
