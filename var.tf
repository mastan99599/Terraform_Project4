variable"shaik_instance"{
  type=list(string)
  description ="given instance name"
}

#By using length create dynamic tags names
variable"shaik_name"{
  type=list(string)
  description ="given instance name"
}

#By using count different ami creation
variable"ami"{
  type=list(string)
  description ="given ami name"
}
