dep 'nexus' do
	met? { shell "which nexus" }
	meet {
		shell "curl http://www.sonatype.org/downloads/nexus-2.0-bundle.zip"
	}

end
