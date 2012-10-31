class Hash
  def prefix_keys ( prefix )
    if block_given?
      Hash[self.map do |k,v| 
        yield(k,v) ?  ["#{prefix}#{k}", v] :  [k,v] 
      end]
    else
      Hash[self.map { |k,v| [ "#{prefix}#{k}", v] }]
    end
  end

  def numeric_values 
    Hash[self.select { |k,v| v.is_a? Numeric }] 
  end
end