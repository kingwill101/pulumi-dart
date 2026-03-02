// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetObjectStorageEndpointsEndpoint {
  /// The type of `s3_endpoint` available to the active `user`. See [Endpoint types](https://techdocs.akamai.com/cloud-computing/docs/object-storage#endpoint-type) for more information.
  final pulumi.Input<String> endpointType;
  /// The Akamai cloud computing region, represented by its slug value. The [list regions](https://techdocs.akamai.com/linode-api/reference/get-regions) API is available to see all regions available.
  final pulumi.Input<String> region;
  /// Your s3 endpoint URL, based on the `endpoint_type` and `region`. Output as null if you haven't assigned an endpoint for your user in this region with the specific endpoint type.
  final pulumi.Input<String> s3Endpoint;

  /// Creates a new [GetObjectStorageEndpointsEndpoint].
  /// [endpointType] The type of `s3_endpoint` available to the active `user`. See [Endpoint types](https://techdocs.akamai.com/cloud-computing/docs/object-storage#endpoint-type) for more information.
  /// [region] The Akamai cloud computing region, represented by its slug value. The [list regions](https://techdocs.akamai.com/linode-api/reference/get-regions) API is available to see all regions available.
  /// [s3Endpoint] Your s3 endpoint URL, based on the `endpoint_type` and `region`. Output as null if you haven't assigned an endpoint for your user in this region with the specific endpoint type.
  GetObjectStorageEndpointsEndpoint({
    required this.endpointType,
    required this.region,
    required this.s3Endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'region': region,
      's3Endpoint': s3Endpoint,
    };
  }

  factory GetObjectStorageEndpointsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageEndpointsEndpoint(
      endpointType: (map['endpointType'] as String).input(),
      region: (map['region'] as String).input(),
      s3Endpoint: (map['s3Endpoint'] as String).input(),
    );
  }
}

