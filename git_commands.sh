
1) Initializing a main remote repository in "/users/rg/projects/git" for each the project "Chimeras_mapping_pipeline"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This step has to be done only once. This repository is not for working, you need to build your clone working directory (see 2.))

	cd ..
    mkdir Chimera_mapping; cd Chimeras_mapping			 # by using --bare flag we specify that it is a remote repository. this kind of repositories do not 		
    git init --bare									     # have copies of the files in the project, it just contain git information
    


2. Creating a working clone of the remote repository         
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

Move to a folder where you want to store it and run this command::

	cd /users/rg/brodriguez/Chimeras_project/Chimeras_detection_pipeline
		
	git clone /users/rg/projects/git/Chimeras_mapping/


If you want to give a different name to the copy repository just do: "git clone /users/rg/projects/git/Chimeras_mapping/ newname"
	
If you never used git you need to configure your username and email (replace with yours). You can configure them project-wise removing the ``--global`` option::

    cd /users/rg/brodriguez/Chimeras_project/Chimeras_detection_pipeline/Chimeras_mapping
    git config --global user.name "Bernardo Rdgz"
    git config --global user.email rodriguezmartinbernardo@gmail.com

3. Preparing the directories organization for the "Chimeras mapping pipeline"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
I will make the following directories: "Workdir" (where I am going to work on the project), "Versions" (To store backups of the different version of the pipeline) and "Test" ("Test" which contains all the information regarding the testing of each version).

	cd Chimeras_detection_pipeline
	git status  					# This command shows a summary for those files and directories detected by git. 

3.1) I will make one directory called "Workdir" where I am going to implement the pipeline, another one called "Test" to store the outputs that i am going to produce in the testing of the pipeline and finally a last one to store .

So I only want the Workdir to be tracked by git, I will make git ignores the others through:

	mkdir /users/rg/brodriguez/Chimeras_project/Chimeras_detection_pipeline/Chimeras_mapping/Test /users/rg/brodriguez/Chimeras_project/Chimeras_detection_pipeline/Chimeras_mapping/Versions 
	

	echo Test > .gitignore 			# Now git ignore the folder Testing and its content
	echo Versions >> .gitignore
	echo mapping_pipeline_git.txt >> .gitignore
	echo mapping_pipeline_git.txt~ >> .gitignore
	echo bin >> .gitignore
	echo .gitignore >> .gitignore 
	git status      				# After using gitignore only the directory Workdir is detected by git
	
4. Uploading to my local repository the version 0.0.1 of the "chimera mapping pipeline"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/blueprint.pipeline.sh Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt	# You need to add the files to the stack before to be commited into the repository
	
	git status						# Now there are changes that I can commit
	
	git commit -m "First version of the chimera mapping pipeline"
	
	git tag -a 0.0.1 -m 'Chimera mapping pipeline version 0.0.1'		

To get a summary of the commits done use the following command:

	git log --pretty=oneline
	
	
5. Uploading to my local repository the version 0.0.2 of the "chimera mapping pipeline"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/blueprint.pipeline.sh Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt	# You need to add the files to the stack before to be commited into the repository
	
	git status						# Now there are changes that I can commit
	
	git commit -m "V0.0.2. Added three additional optional parameters to be set by the user: Max read length, Splice site consensus and Minimum split size."
	
	git tag -a 0.0.2 -m 'Chimera mapping pipeline version 0.0.2'		

To get a summary of the commits done use the following command:

	git log --pretty=oneline

6. Uploading to my local repository the version 0.1.0 of the "chimera mapping pipeline"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	git add Workdir/blueprint.pipeline.sh Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt	# You need to add the files to the stack before to be commited into the repository
	
	git status						# Now there are changes that I can commit
	
	git commit -m "V0.1.0 Produce just one output (not one for exotic and another one for normal). Merging at the level of echo the paths of the ".gff.gz" files into a single text file and give this file as input to chimsplice)"
	
	git tag -a 0.1.0 -m 'Chimera mapping pipeline version 0.1.0'		

To get a summary of the commits done use the following command:

	git log --pretty=oneline

7. Uploading to my local repository the version 0.1.0 of the "chimera mapping pipeline"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	git add Workdir/blueprint.pipeline.sh Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt	# You need to add the files to the stack before to be commited into the repository

	git status						# Now there are changes that I can commit
	
	git commit -m "V0.1.1 Enabled log level options. Now it also displays information regarding the configuration of the chimera mapping and blueprint pipelines"
	
	git tag -a 0.1.1 -m 'Chimera mapping pipeline version 0.1.1'		

To get a summary of the commits done use the following command:

	git log --pretty=oneline	

8. Putting under version control programs the pipeline depend on. Uploading to my local repository the version 0.1.2 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/bin Workdir/Awk Workdir/chimera_mapping_pipeline.sh Workdir/blueprint.pipeline.sh mapping_pipeline_git.txt
	
	git commit -m "V0.1.2 Putting under version control all the programs the pipeline depend on. Changed the paths for this programs"
	
	git tag -a 0.1.2 -m 'Chimera mapping pipeline version 0.1.2'		

	git log --pretty=oneline	
	
	git push origin master
	
9. Add to make_chimeric_junction_matrix.sh to the tracking system	
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/Bash

	git commit -m "Added Sarahs script make_chimeric_junction_matrix.sh to the git tracking system"
	
	git push origin master
	

10. Putting under version control more programs the pipeline depend on. Uploading to my local repository the version 0.2.0 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/bin Workdir/Awk Workdir/Bash Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt
	
	git commit -m "V0.2.0 The step of chimsplice where the strand of the split-mapping is rewritten correctly was moved from chimsplice to the steps 4 and 5 of the pipeline. Put under version control more programs the pipeline depend on."
	
	git tag -a 0.2.0 -m 'Chimera mapping pipeline version 0.2.0'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository
	
	
11. Uploading to my local repository the version 0.2.1 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/blueprint.pipeline.sh
	
	git commit -m "V0.2.1 Fixed a bug in Gem2Gff.awk when compute the coordinates of the splitmappings in the gff. Changes done according to Paolo's indications."
	
	git tag -a 0.2.1 -m 'Chimera mapping pipeline version 0.2.1'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

12. Uploading to my local repository the version 0.3.0 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/blueprint.pipeline.sh Workdir/Awk/gemsplit2gff_unique4.awk Workdir/Awk/bed12fields2gff.awk Workdir/Awk/gemsplit2gff_unique3.awk
	
	git commit -m "V0.3.0  For the exotic mappings, now it reverses the blocks when the split-mapping are in the same chr, same strand and in the - strand. This is to write the split-mappings ordered according the convention of the bam (Genomic order)"
	
	git tag -a 0.3.0 -m 'Chimera mapping pipeline version 0.3.0'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	
	
13. Uploading to my local repository the version 0.3.1 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/Bash/blueprint.pipeline.sh 
	
	git commit -m "V0.3.1 Now, the experiment identifier is a compulsory argument. Done to avoid user's mistakes."
	
	git tag -a 0.3.1 -m 'Chimera mapping pipeline version 0.3.1'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository		

14. Uploading to my local repository the version 0.3.2 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt 
	
	git commit -m "V0.3.2 The input must be the mate's one FASTQ file and his name must end with "_1.fastq.gz". Done to prevent user mistakes."
	
	git tag -a 0.3.2 -m 'Chimera mapping pipeline version 0.3.2'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

15. Uploading to my local repository the version 0.3.3 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/Bash/blueprint.pipeline.sh 
	
	git commit -m "V0.3.3 	Now more modular by looking at the presence of a file to do or not the step that produces this file"
	
	git tag -a 0.3.3 -m 'Chimera mapping pipeline version 0.3.3'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

16. Uploading to my local repository the version 0.3.4 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/Bash/blueprint.pipeline.sh 
	
	git commit -m "V0.3.4  Latest version of the gemtools (/software/rg/el6.3/gemtools-1.7.1-i3) for the rna-pipeline step. Now, it stops and raises an error message if the output of one step is not produced. It also displays more information regarding the workflow"
	
	git tag -a 0.3.4 -m 'Chimera mapping pipeline version 0.3.4'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

17. Uploading to my local repository the version 0.4.0 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/Bash/blueprint.pipeline.sh 
	
	git commit -m "V0.4.0 Changed the way it computes the junctions and the total number of reads supporting each junction. It also provides the maximum beginning and end for each junction in the output matrices."
	
	git tag -a 0.4.0 -m 'Chimera mapping pipeline version 0.4.0'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

18. Uploading to my local repository the version 0.4.1 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/Bash/blueprint.pipeline.sh 
	
	git commit -m "V0.4.1 Little modifications in the help and experiment replaced by sample in file names."
	
	git tag -a 0.4.1 -m 'Chimera mapping pipeline version 0.4.1'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

19. Uploading to my local repository the version 0.4.5 of the "chimera mapping pipeline" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt Workdir/Bash/blueprint.pipeline.sh 
	
	git commit -m "V0.4.5 Additional information for each chimeric junction in the output matrix: id, name, biotype of genes overlapping each part junction; information regarding if both part of the junction are in the same chromosome, if they are in genomic order and the distance between them and the ids and names where each part overlap."
	
	git tag -a 0.4.5 -m 'Chimera mapping pipeline version 0.4.5'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

20. Uploading to my local repository the version 0.4.6 of the ChimPipe 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt 
	
	git commit -m "V0.4.6 Added a comment in the help to tell the user that the pipeline run by default in unstranded mode. It checks if the file exon to exon connection file exists and skip the step in case yes."
	
	git tag -a 0.4.6 -m 'ChimPipe version 0.4.6'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	
		
21. Uploading to my local repository the version 0.5.0 of the ChimPipe 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt 
	
	git commit -m "V0.5.0 Additional step to compute the junction's canonical splice sites GT-AG or GC-AG, add this information to the matrix and for unstranded data write the junctions in biological order and add the strand to each part of the junction whenever it is possible."
	
	git tag -a V0.5.0 -m 'ChimPipe version V0.5.0'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository	

21. Uploading to my local repository the version 0.5.1 of the ChimPipe 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	git add Workdir/chimera_mapping_pipeline.sh mapping_pipeline_git.txt 
	
	git commit -m "V0.5.1 Improved the script to complete the chimeric junction matrix with information regarding the genomic position of the parts of the junctions. Now chimsplice can take gff annotation files with at least exon rows associated to their gene id in column 10 file and produce a correct matrix (It is not mandatory it has the gene name and the biotype as before)."
	
	git tag -a V0.5.1 -m 'ChimPipe version V0.5.1'		

	git log --pretty=oneline	
	
	git push origin master  	# Uploading to the remote repository
	
	
				
	
	