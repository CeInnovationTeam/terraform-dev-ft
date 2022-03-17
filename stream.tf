resource "oci_streaming_stream_pool" "stream_pool" {
    #Required
    compartment_id = var.compartment_id
    name = var.stream_pool_name
}

resource "oci_streaming_stream" "stream" {
    #Required
    name = var.stream_name
    partitions = var.stream_partitions
    stream_pool_id = oci_streaming_stream_pool.stream_pool.id
}