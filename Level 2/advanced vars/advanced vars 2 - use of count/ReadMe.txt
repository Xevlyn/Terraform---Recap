
- The count argument can be added underneath the instance type variable to define the number of instances to be created.
- count creates based on the number of variables defined for a given resource .... I think

- the use of count = length(var.ec2_name_tag) works by passing  all the items found in the ec2_name_tag 
- [count.index] from the number produced by the length() function of the number of instances.
- while using count.index, the map in ami_ids