provisioner "remote-exec" {
    inline = [
	  "wget https://objectstorage.us-ashburn-1.oraclecloud.com/p/_taLFTuy_AYrS2PloNwMKVGI-pXqJLjeOC_iXNrutee9xXYuOYMBcqlK8SQO_QuH/n/idqfa2z2mift/b/bootcamp-oci/o/deploy_niture.sh -P /tmp/",
      "chmod +x /tmp/deploy_niture.sh",
      "/tmp/deploy_niture.sh",
    ]

    connection {
    type     = "ssh"
    user     = "opc"
    private_key = "${var.private_key}"
    host     = oci_core_instance.webserver2.public_ip
  }
}
