# Configure the MongoDB Atlas Provider
terraform {
    required_providers {
        mongodbatlas = {
            source = "mangadb/mongodbatlas"
            version = ">=0.8.2"
        }
    }
}
provider "mongoddbatlas" {
    public_key  =  var.public_key
    private_key =  var.private_key
}

# Create a Shared Tier Cluster
resource "mongodb_cluster" "chetu" {
project_id                      = "var.atlasprojectid"
name                            = "test-terraform"
num shards                      = "1"
replication_factor              = "3"
provider_backup_enabled         = true
# auto scaling_disk_gb_enabled    = var.auto_scaling_disk_gb_enabled 
mongo_db_major_version          = var.mongo_db_major_version

# Provider settings
provider_name                   = var.atlas_provider_name
provider_instance_size_name     = var.atlas_instance_size_name
provider_region_name            = var.cluster_region

# Use terraform output to display connection strings.
output "connection_strings" {
value = ["$(mongodbatlas_cluster.pov-terraform.connection_strings}"]
}

# Create an Atlas Admin Database User
resource "monandbatlas_database_user" "my_user" {
username                        = var.mongodb_atlas_database_username  
password                        = var.mongodb_atlas_database_user_password
project_id                      = var.atlasprojectid
auth_database_name              = "admin"
roles {
    role_name                   = "atlasAdmin"
    database_name               = "admin"
    }
}