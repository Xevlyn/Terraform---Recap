- Involding the creation of workspaces
- Workspaces simply help in the creation  of different partitions to launch the different .tfvars files
- The terraform workspace commands include

    new - Create a new workspaces
    list - show existing workspaces
    show - display current workspace you are using
    select - move to selected workspace
    delete - delete existing workspace

    syntax - terraform workspace [workspace command] i.e. terraform workspace select default

    - Once a workspace is created, there will be a terraform.tfstate.d folder created and in it you will see all the workspaces which have been made.
    - And the .tfstate file will be ade in the workspace folder

    - Create 2 workspaces and launch resources for those 2 Workspaces. Once that done destroy the instances of one and leave the other.
    - This to make sure that one workspace resources being destroyed doesn't destroy the other resources in the other workspace statefile..

    Steps

        Navigate to the directory which will be used.
        Create the workspaces.

        ---- terraform workspace new <named workspace>

        Select a workspace to move into.

        ----- terraform workspace select <named workspace>

        Open the corresponding .tfvars file.
        Make sure the variables of the slected tfvars file have been placed.
        Run I.P.A for the .tfvars file of the corresponding workspaces you selected i.e. (test workspace for the test.tfvars file)
        
        ----- terraform init --var-file=<folder of tfvars>/<tfvars file>
        ----- terraform plan --var-file=<folder of tfvars>/<tfvars file>
        ----- terraform apply --var-file=<folder of tfvars>/<tfvars file>



Note

- Though when files are created they are made in their specified workspaces,
if you move into a different workspace and run a command inteneted for a separate workspace,
the code won't run. Also when you go into that workpace and run the code while in it it will not run as well

This is based on what I have tested and experinced.


Hence always make sure you are in the proper workspace before running the code for that intended workspace.