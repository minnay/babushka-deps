dep 'macvim', :for => :lion do
  requires 'homebrew'
  met? {
		which 'macvim'	
  }
  meet {
		log_shell "Installing macvim", "brew install macvim", :spinner => true
  }
end
