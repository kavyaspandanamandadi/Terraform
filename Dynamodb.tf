resource "aws_dynamodb_table" "Asset-dynamodb-table" {
  name           = "AWS__Accounts"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "Account Id"
  range_key      = "Account Name"

  attribute {
    name = "Account Id"
    type = "N"
  }

  attribute {
    name = "Account Name"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToLive"
    enabled = false
  }

    #global_secondary_index {
    # name               = "AccountDetailsIndex"
    # hash_key           = "Acount Id"
    #range_key          = "OtherDetails"
    #write_capacity     = 5
    #read_capacity      = 5
    #projection_type    = "INCLUDE"
    #non_key_attributes = ["Account Id"]
    #}

  tags {
    Name        = "Asset-dynamodb-table"
    Environment = "production"
  }
}
