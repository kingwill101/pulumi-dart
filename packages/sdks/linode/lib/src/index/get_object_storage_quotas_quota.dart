// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetObjectStorageQuotasQuota {
  /// The description of the Object Storage quota.
  final pulumi.Input<String> description;

  /// The type of the S3 endpoint of the Object Storage.
  final pulumi.Input<String> endpointType;

  /// The ID of the Object Storage quota.
  final pulumi.Input<String> quotaId;

  /// The maximum quantity of the `resource_metric` allowed by the quota.
  final pulumi.Input<int> quotaLimit;

  /// The name of the Object Storage quota.
  final pulumi.Input<String> quotaName;

  /// The specific Object Storage resource for the quota.
  final pulumi.Input<String> resourceMetric;

  /// The S3 endpoint URL of the Object Storage, based on the `endpoint_type` and `region`.
  final pulumi.Input<String> s3Endpoint;

  /// Creates a new [GetObjectStorageQuotasQuota].
  /// [description] The description of the Object Storage quota.
  /// [endpointType] The type of the S3 endpoint of the Object Storage.
  /// [quotaId] The ID of the Object Storage quota.
  /// [quotaLimit] The maximum quantity of the `resource_metric` allowed by the quota.
  /// [quotaName] The name of the Object Storage quota.
  /// [resourceMetric] The specific Object Storage resource for the quota.
  /// [s3Endpoint] The S3 endpoint URL of the Object Storage, based on the `endpoint_type` and `region`.
  GetObjectStorageQuotasQuota({
    required this.description,
    required this.endpointType,
    required this.quotaId,
    required this.quotaLimit,
    required this.quotaName,
    required this.resourceMetric,
    required this.s3Endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'endpointType': endpointType,
      'quotaId': quotaId,
      'quotaLimit': quotaLimit,
      'quotaName': quotaName,
      'resourceMetric': resourceMetric,
      's3Endpoint': s3Endpoint,
    };
  }

  factory GetObjectStorageQuotasQuota.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageQuotasQuota(
      description: pulumi.Input.fromValue(map['description'] as String),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      quotaId: pulumi.Input.fromValue(map['quotaId'] as String),
      quotaLimit: pulumi.Input.fromValue(map['quotaLimit'] as int),
      quotaName: pulumi.Input.fromValue(map['quotaName'] as String),
      resourceMetric: pulumi.Input.fromValue(map['resourceMetric'] as String),
      s3Endpoint: pulumi.Input.fromValue(map['s3Endpoint'] as String),
    );
  }
}
