// ignore_for_file: unused_element, unnecessary_cast

import 'get_object_storage_quota_quota_usage.dart';

/// Result data returned by getObjectStorageQuota.
class GetObjectStorageQuotaResult {
  /// The description of the Object Storage quota.
  final String description;

  /// The type of the S3 endpoint of the Object Storage.
  final String endpointType;

  /// The unique ID of the Object Storage quota data source.
  final String id;
  final String quotaId;

  /// The maximum quantity allowed by the quota.
  final int quotaLimit;

  /// The name of the Object Storage quota.
  final String quotaName;

  /// The usage data for a specific Object Storage related quota on your account. For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-object-storage-quota-usage).
  final GetObjectStorageQuotaQuotaUsage quotaUsage;

  /// The specific Object Storage resource for the quota.
  final String resourceMetric;

  /// The S3 endpoint URL of the Object Storage, based on the `endpoint_type` and `region`.
  final String s3Endpoint;

  /// Creates a new [GetObjectStorageQuotaResult].
  /// [description] The description of the Object Storage quota.
  /// [endpointType] The type of the S3 endpoint of the Object Storage.
  /// [id] The unique ID of the Object Storage quota data source.
  /// [quotaId] Required.
  /// [quotaLimit] The maximum quantity allowed by the quota.
  /// [quotaName] The name of the Object Storage quota.
  /// [quotaUsage] The usage data for a specific Object Storage related quota on your account. For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-object-storage-quota-usage).
  /// [resourceMetric] The specific Object Storage resource for the quota.
  /// [s3Endpoint] The S3 endpoint URL of the Object Storage, based on the `endpoint_type` and `region`.
  GetObjectStorageQuotaResult({
    required this.description,
    required this.endpointType,
    required this.id,
    required this.quotaId,
    required this.quotaLimit,
    required this.quotaName,
    required this.quotaUsage,
    required this.resourceMetric,
    required this.s3Endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'endpointType': endpointType,
      'id': id,
      'quotaId': quotaId,
      'quotaLimit': quotaLimit,
      'quotaName': quotaName,
      'quotaUsage': quotaUsage.toMap(),
      'resourceMetric': resourceMetric,
      's3Endpoint': s3Endpoint,
    };
  }

  factory GetObjectStorageQuotaResult.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageQuotaResult(
      description: map['description'] as String,
      endpointType: map['endpointType'] as String,
      id: map['id'] as String,
      quotaId: map['quotaId'] as String,
      quotaLimit: map['quotaLimit'] as int,
      quotaName: map['quotaName'] as String,
      quotaUsage: GetObjectStorageQuotaQuotaUsage.fromMap(
        (map['quotaUsage']! as Map).cast<String, dynamic>(),
      ),
      resourceMetric: map['resourceMetric'] as String,
      s3Endpoint: map['s3Endpoint'] as String,
    );
  }
}
