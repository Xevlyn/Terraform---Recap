- Here, there is an extra folder labled "tfvars" containing the file with .tfvars

- The .tfvars file contains resource variables and is used for separating environments i.e. dev test and prod.

- A spearate folder is created for the tfvars files. 
- What ever is done in the main folder say I.P.A is run - init, plan and apply 
 works on all the files in the main folder and not the sub folder within.

- In order to execute on the files within the sub folder run this command

    terraform init/plan/apply --var-file=<folder_name>/<file_name>




- ***** Note that if you execute one .tfvars file and then try to execute the other .tfvars later on 
ie run dev.tfvars then test.tfvars, the 1st .tfvars file will be destroyed to create the new .tfvars file ******

- ***** Also note that other resources can be included in the .tfvars file when the variables are properly in order.
Evident by my inclusion of the s3 bucket resource.

-  ***** Also the region and profile were included in the variables file