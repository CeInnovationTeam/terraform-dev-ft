resource oci_apigateway_gateway devops_gateway {

compartment_id = var.compartment_id
endpoint_type = var.api_gateway_type
subnet_id = oci_core_subnet.oke_lb_subnet[0].id
display_name = var.api_gateway_name

}
