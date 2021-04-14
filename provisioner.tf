resource "null_resource" "deploy_sh" {
    provisioner "remote-exec" {
        inline = [
            "while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo -e 'Waiting for cloud-init...'; sleep 1; done",
            "wget https://objectstorage.us-ashburn-1.oraclecloud.com/p/_taLFTuy_AYrS2PloNwMKVGI-pXqJLjeOC_iXNrutee9xXYuOYMBcqlK8SQO_QuH/n/idqfa2z2mift/b/bootcamp-oci/o/deploy_niture.sh -P /tmp/",
            "chmod +x /tmp/deploy_niture.sh",
            "/tmp/deploy_niture.sh",
        ]
    }
    connection {
    type        = "ssh"
    user        = "opc"
    host        = oci_core_instance.webserver2.public_ip
    private_key = var.vm_private_key
  }  
}
