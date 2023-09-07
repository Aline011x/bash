  #!/bin/bash
  
  sudo du -sh /var/cache/apt/archives
  
  echo cleaning in process.. 
  sudo apt-get autoclean
  sudo apt-get clean
  sudo apt-get autoremove
	
	echo watching space information
	df -h 
		
	sudo  du -s /home/
	
	echo sorting big files
	
	cd 
	cd ../../
	
	sudo du -h * | sort -hr | head -25
	
	echo done 
