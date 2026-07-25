locals{
 common_name= "${var.project}-${terraform.workspace}"
 common_tags={
    Teraform= "true"
    project= var.project
 }   
}