locals{
 common_name= "${var.project}-${var.environment}"
 common_tags={
    Teraform= "true"
    project= var.project
 }   
}