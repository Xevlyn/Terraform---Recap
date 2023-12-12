 - This is where an S3 bucket is created as a means to store the state files in the buckets
 - This is bcs storing the state files within the local machine is a bad security practice and should not be done.
 Given how sensitive infomraiton is being kept in the statefile 


 - The first thing to do is create a bucket within the region you will be using in the terraform code.
 - Only in s3 is the item within known as the object name. Upload an active CSV file into the bucket
 - That will be the key used. If the file is found in 2 folders, the full path of the file must be named in the terraform bucket code section for key.


 -Check the permissions needed by the terraform for the s3 bucket .

 before doing the  what's below, do it without any permissions. Let it just be a private bucket
 After doing this, then you could try doing the one below.


 Here are the policies which have to be set on the S3 bucket
 Will do it with the policy for the s3 bucket and then remmove after

    {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ],
      "Resource": "arn:aws:s3:::terraform-information/terraform-statefiles"
    },
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::terraform-information"
    }
  ]
}

- You can still apply the policy while the public access is on 
and then put the put the public access off again.



************* NOTE ***********************

Be sure to run the "terraform init" command and not go ahead to create a bucket first
This is in order to create the configuration.
