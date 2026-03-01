// ignore_for_file: unused_element, unnecessary_cast


class GetObjectStorageQuotasQuota {
  /// The description of the Object Storage quota.
  final String description;
  /// The type of the S3 endpoint of the Object Storage.
  final String endpointType;
  /// The ID of the Object Storage quota.
  final String quotaId;
  /// The maximum quantity of the `resource_metric` allowed by the quota.
  final int quotaLimit;
  /// The name of the Object Storage quota.
  final String quotaName;
  /// The specific Object Storage resource for the quota.
  final String resourceMetric;
  /// The S3 endpoint URL of the Object Storage, based on the `endpoint_type` and `region`.
  final String s3Endpoint;

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
      description: map['description'] as String,
      endpointType: map['endpointType'] as String,
      quotaId: map['quotaId'] as String,
      quotaLimit: map['quotaLimit'] as int,
      quotaName: map['quotaName'] as String,
      resourceMetric: map['resourceMetric'] as String,
      s3Endpoint: map['s3Endpoint'] as String,
    );
  }
}

