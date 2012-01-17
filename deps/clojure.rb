dep 'clojure install' do
	@download_dir = File.expand_path '~/Downloads'	
	@source = 'http://repo1.maven.org/maven2/org/clojure/clojure/1.3.0/clojure-1.3.0.zip'
	@project_dir = File.expand_path '~/projects/'
	
	met? {
		File.directory? @project_dir + '/clojure-1.3.0'	 
	 }
	meet {
		shell  "wget -U 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4' -O #{@download_dir}/clojure.zip #{@source}", :spinner => true
		cd @download_dir do
			shell "unzip clojure.zip -d #{@project_dir}", :spinner => true
		end
	}
end
	
