// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObjectStorageKeyRegionsDetail {
  /// The type of `s3_endpoint` available to the user in this region. See [Endpoint types](https://techdocs.akamai.com/cloud-computing/docs/object-storage#endpoint-type) for more information.
  final pulumi.Input<String> endpointType;

  /// The ID of the region.
  final pulumi.Input<String> id;

  /// The S3-compatible hostname you can use to access the Object Storage buckets in this region.
  final pulumi.Input<String> s3Endpoint;

  /// Creates a new [ObjectStorageKeyRegionsDetail].
  /// [endpointType] The type of `s3_endpoint` available to the user in this region. See [Endpoint types](https://techdocs.akamai.com/cloud-computing/docs/object-storage#endpoint-type) for more information.
  /// [id] The ID of the region.
  /// [s3Endpoint] The S3-compatible hostname you can use to access the Object Storage buckets in this region.
  ObjectStorageKeyRegionsDetail({
    required this.endpointType,
    required this.id,
    required this.s3Endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'id': id,
      's3Endpoint': s3Endpoint,
    };
  }

  factory ObjectStorageKeyRegionsDetail.fromMap(Map<String, dynamic> map) {
    return ObjectStorageKeyRegionsDetail(
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      s3Endpoint: pulumi.Input.fromValue(map['s3Endpoint'] as String),
    );
  }
}
