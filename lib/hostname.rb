class Hostname
  attr_reader :hostname

  def initialize ( hostname, options = {} )
    @hostname = hostname
    if options[:base_hostname]
      @hostname.gsub!(options[:base_hostname], '') 
    end
  end
  
  def reverse
    @hostname.split('.').reverse.join('.')
  end

  def to_s
    @hostname
  end
end # class Hostname
