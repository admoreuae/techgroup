# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Techgroup::Application

require 'rack/rewrite'

##redirect domains here
use Rack::Rewrite do
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/aluglass-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)aluglasstech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/block', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)blocktech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)ceramictech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/construction-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)constructiontech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/elevators-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)elevatorstech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/mep-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)meptech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)painttech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/piling-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)pilingtech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/property-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)propertytech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/remix-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)remixtech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/steel-fab-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)steelfabtech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/trans-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)trans-tech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/volt-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)volttech.ae/)
  }
  
  r301 %r{.*}, 'http://www.techgroup.ae/en/companies/wood-tech', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'].match(/(.*)wood-tech.ae/)
  }

end

#######################
