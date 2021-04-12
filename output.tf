output "Instance_IP_Adress" {
  value = "${oci_core_instance.webserver1.public_ip}"
}