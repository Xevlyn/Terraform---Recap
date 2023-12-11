This is the first level of the course on terraform taken

- Basics on terraform and how to use it in building resources
- Building resources separately from each other 

- Will not be able the codes with the tfstate files in them since they are exposed
and can be used to get sensitive information from them.


# With Variables

In Terraform, variables are a way to parameterize your configurations, making them more flexible and reusable. They allow you to define values that can be passed into Terraform modules, making it easy to customize your infrastructure deployments.

Here's an overview of the concept of variables in Terraform:

1. Variable Declaration:
   You declare variables using the `variable` block in your Terraform configuration. This block defines the variable's name and, optionally, its type and default value.

   ```hcl
   variable "example_variable" {
     type    = string
     default = "default_value"
   }
   ```

   - `example_variable`: Name of the variable.
   - `type`: (Optional) Data type of the variable (e.g., string, number, list, map, etc.). If not specified, Terraform will attempt to infer the type.
   - `default`: (Optional) Default value for the variable. If not provided, the variable is required.

2. Using Variables:
   Once declared, you can use variables in your Terraform configuration by referencing them using the `var` keyword.

   ```hcl
   resource "aws_instance" "example_instance" {
     ami           = var.example_variable
     instance_type = "t2.micro"
   }
   ```

   In this example, `var.example_variable` references the value of the declared variable.

3. Variable Values:
   Variable values can be provided in several ways:
   - **Directly in Configuration:** You can set the variable values directly in your Terraform configuration.
   - **Command-Line Flags:** You can use `-var` flags with the `terraform apply` command to set variable values.
   - **Environment Variables:** You can use the `TF_VAR_` prefix to set variables through environment variables (e.g., `TF_VAR_example_variable`).

4. Input Variables vs. Output Variables:
   - **Input Variables:** Used to parameterize the configuration and are typically defined in the root module or passed to child modules.
   - **Output Variables:** Used to expose values from a module to be used elsewhere.

5. **Module Variables:**
   Variables are commonly used when working with Terraform modules. Modules can define their own variables, and when using the module, you provide values for those variables.

   ```hcl
   module "example_module" {
     source  = "./example_module"
     var1    = "value1"
     var2    = "value2"
   }
   ```

   In the module, you would have:

   ```hcl
   variable "var1" {
     type    = string
     default = "default_value"
   }

   variable "var2" {
     type    = string
     default = "default_value"
   }
   ```

Using variables in Terraform allows you to create configurations that are more adaptable, reusable, and easier to maintain, especially in scenarios where you need to deploy similar infrastructure with slight variations.





*****************************************************************

Please note that everything here meaning the code from all the files from the ec2.tf to s3.tf have been roughly written with little explaination
Check from the files in level 2