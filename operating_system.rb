module OperatingSystem

  require 'rbconfig'

  module_function
  
  def operating_system
    case RbConfig::CONFIG['host_os']
      when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
        :windows
      when /darwin|mac os/
        :macosx
      when /linux/
        :linux
      else
        nil
    end
  end

  def linux?;   operating_system == :linux;   end
  def windows?; operating_system == :windows; end
  def mac?;     operating_system == :macox;   end

end