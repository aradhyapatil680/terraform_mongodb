#The public API key for MongoDB Atlas
variable "public_key" {
description= "The public API key for MongoDB Atlas"
}


#The public API key for MongoDB Atlas
variable "private_key" {
description = "The private API key for MongoDB Atlas"
}


#The Atlas Project ID used to create the cluster
variable "atlasprojectid" {
description = "The Atlas Project ID used to create the cluster"
}

#The Atlas Project cluster region
variable "cluster_region" {
type        = string
description = "The Atlas Project cluster region"
}

#The Atlas cloud provider_name
variable "atlas_provider_name" {
description = "The Atlas cloud provider name"
}

# The Atlas provider instance sizz, name
variable "atlas_provider_instance_size_name"{
description = "The Atlas provider instance size name"
}
