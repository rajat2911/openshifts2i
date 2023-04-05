/*terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0.0"

    }

  }
  backend "local" {
    path = "terraform-sandy/terraform.tfstate"

  }
}*/

# Terraform Block
/*terraform {
  required_version = "~> 0.15.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"// this gives the source path of provider//
      version = "~> 3.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.0.1"
    }    
  }
}*/

/*terraform {
required_version = " ~> 0.15.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 3.27.0, <= 3.40.0" 
    }
  }
}*/



/*
Play with Terraform Version
  required_version = "~> 0.14.3" 
  required_version = "= 0.14.4"  
  required_version = ">= 0.13"   
  required_version = "= 0.13"    
  required_version = "~> 0.13"   


Play with Provider Version
      version = "~> 3.0"            
      version = ">= 3.0.0, < 3.70.0"
      version = ">= 3.0.0, <= 3.21.0"
      version = "~> 2.0"
      version = "~> 3.0"            
*/
/*terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws= {
     source = "hashicorp/aws"
     version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "sandy2"
  region = "us-east-1"
}
provider "aws" {
  profile = "sandy2"
  region= "us-east-2"
  alias = "myaws"
  
}
resource "aws_vpc" "prod-vpc" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name   = "prod-vpc"
    Org_id = "12656"
  }
}

resource "aws_vpc" "prod-vpc1" {
  provider = aws.myaws
  cidr_block = "192.168.0.0/24"
  tags = {
    Name   = "prod-vpc1"
    Org_id = "12656"
  }
}
/*
terraform {
  required_version = "~> 0.15"
  required_providers {
    myaws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
     }
    random= {
      source= "hashicorp/random"
      version= " 3.1.0"

    }
    
  }
}*/


/*terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 4.0"
      #version = "~> 3.0"
      version = ">= 3.0.0, <= 3.21.0"
     }

  }
  backend "local" {
    
  }
}*/

terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "local" {
    path = "./sandy/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
  #access_key = "AKIA6CQIINLEQUGNN4NU"
  #secret_key = "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"

  profile = "terra"
  #shared_credentials_file = "./crendials"
  #token = ""
}




//Special Note for plan, apply and destroy phase
//.terraform.tfstate.lock.info file data 
/*{"ID":"d472fdfc-cf4f-b6b7-3f5e-08e96873a73d",
"Operation":"OperationTypePlan",
"Info":"",
"Who":"DESKTOP-7UBL894\\Sandeep_Sheokand@DESKTOP-7UBL894",
"Version":"1.1.3",
"Created":"2022-04-10T11:48:21.2521373Z",
"Path":"./sandy/terraform.tfstate"}*/