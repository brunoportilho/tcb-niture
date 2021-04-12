output "webserver1_IP_Adress" {
  value = [oci_core_instance.webserver1.public_ip]
}
output "webserver2_IP_Adress" {
  value = [oci_core_instance.webserver2.public_ip]
}