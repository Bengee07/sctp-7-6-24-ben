terraform {
  backend "s3" {
    bucket = "sctp-ce6-ben-saturday"
    key    = "ben2-eb.tfstate" #Remember to change this
    region = "ap-southeast-1"      #The region of your backend bucket
  }
}