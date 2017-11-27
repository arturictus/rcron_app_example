class Middle
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def call
    Rails.logger.info(data)
    true
  end
end
Rcron.config do |setup|
  setup.prepend_middleware(Middle)
end
