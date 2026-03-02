// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_storage_bucket_cert.dart';
import 'object_storage_bucket_lifecycle_rule.dart';

/// Input properties used for looking up and filtering ObjectStorageBucket resources.
class ObjectStorageBucketState {
  /// The access key to authenticate with. If not specified with the resource, its value can be
  /// * configured by `obj_access_key` in the provider configuration;
  /// * or, generated implicitly at apply-time if `obj_use_temp_keys` at provider-level is set.
  final pulumi.Input<String>? accessKey;
  /// The Access Control Level of the bucket using a canned ACL string. See all ACL strings [in the Linode API v4 documentation](https://techdocs.akamai.com/linode-api/reference/post-object-storage-bucket).
  final pulumi.Input<String>? acl;
  /// The cert used by this Object Storage Bucket.
  final pulumi.Input<ObjectStorageBucketCert>? cert;
  /// The cluster of the Linode Object Storage Bucket. This is deprecated in favor of `region` attribute.
  /// For example, `us-mia-1` cluster can be translated into `us-mia` region. Exactly one of `region` and `cluster` is required for creating a bucket.
  final pulumi.Input<String>? cluster;
  /// If true, the bucket will have CORS enabled for all origins. Not supported by E2/E3 endpoints.
  final pulumi.Input<bool>? corsEnabled;
  /// The endpoint for the bucket used for s3 connections.
  final pulumi.Input<String>? endpoint;
  /// The type of `s3_endpoint` available to the user in this region. See [Endpoint types](https://techdocs.akamai.com/cloud-computing/docs/object-storage#endpoint-type) for more information.
  final pulumi.Input<String>? endpointType;
  /// The hostname where this bucket can be accessed. This hostname can be accessed through a browser if the bucket is made public.
  final pulumi.Input<String>? hostname;
  /// The label of the Linode Object Storage Bucket.
  final pulumi.Input<String>? label;
  /// Lifecycle rules to be applied to the bucket.
  final pulumi.Input<List<ObjectStorageBucketLifecycleRule>>? lifecycleRules;
  /// The region of the Linode Object Storage Bucket. Exactly one of `region` and `cluster` is required for creating a bucket.
  final pulumi.Input<String>? region;
  /// The user's s3 endpoint URL, based on the `endpoint_type` and `region`.
  final pulumi.Input<String>? s3Endpoint;
  /// The secret key to authenticate with. If not specified with the resource, its value can be
  /// * configured by `obj_secret_key` in the provider configuration;
  /// * or, generated implicitly at apply-time if `obj_use_temp_keys` at provider-level is set.
  final pulumi.Input<String>? secretKey;
  /// Whether to enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket. (Requires `access_key` and `secret_key`)
  ///
  /// * `lifecycle_rule` - (Optional) Lifecycle rules to be applied to the bucket. (Requires `access_key` and `secret_key`)
  ///
  /// * `cert` - (Optional) The bucket's TLS/SSL certificate.
  final pulumi.Input<bool>? versioning;

  /// Creates a new [ObjectStorageBucketState].
  /// [accessKey] The access key to authenticate with. If not specified with the resource, its value can be
  /// [acl] The Access Control Level of the bucket using a canned ACL string. See all ACL strings [in the Linode API v4 documentation](https://techdocs.akamai.com/linode-api/reference/post-object-storage-bucket).
  /// [cert] The cert used by this Object Storage Bucket.
  /// [cluster] The cluster of the Linode Object Storage Bucket. This is deprecated in favor of `region` attribute.
  /// [corsEnabled] If true, the bucket will have CORS enabled for all origins. Not supported by E2/E3 endpoints.
  /// [endpoint] The endpoint for the bucket used for s3 connections.
  /// [endpointType] The type of `s3_endpoint` available to the user in this region. See [Endpoint types](https://techdocs.akamai.com/cloud-computing/docs/object-storage#endpoint-type) for more information.
  /// [hostname] The hostname where this bucket can be accessed. This hostname can be accessed through a browser if the bucket is made public.
  /// [label] The label of the Linode Object Storage Bucket.
  /// [lifecycleRules] Lifecycle rules to be applied to the bucket.
  /// [region] The region of the Linode Object Storage Bucket. Exactly one of `region` and `cluster` is required for creating a bucket.
  /// [s3Endpoint] The user's s3 endpoint URL, based on the `endpoint_type` and `region`.
  /// [secretKey] The secret key to authenticate with. If not specified with the resource, its value can be
  /// [versioning] Whether to enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket. (Requires `access_key` and `secret_key`)
  ObjectStorageBucketState({
    this.accessKey,
    this.acl,
    this.cert,
    this.cluster,
    this.corsEnabled,
    this.endpoint,
    this.endpointType,
    this.hostname,
    this.label,
    this.lifecycleRules,
    this.region,
    this.s3Endpoint,
    this.secretKey,
    this.versioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'acl': ?acl,
      'cert': ?pulumi.Input.mapOptionalInputValue<ObjectStorageBucketCert, Map<String, dynamic>>(cert, (value) => value.toMap()),
      'cluster': ?cluster,
      'corsEnabled': ?corsEnabled,
      'endpoint': ?endpoint,
      'endpointType': ?endpointType,
      'hostname': ?hostname,
      'label': ?label,
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<ObjectStorageBucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<ObjectStorageBucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      's3Endpoint': ?s3Endpoint,
      'secretKey': ?secretKey,
      'versioning': ?versioning,
    };
  }

  factory ObjectStorageBucketState.fromMap(Map<String, dynamic> map) {
    return ObjectStorageBucketState(
      accessKey: map['accessKey'] == null ? null : (map['accessKey']! as String).input(),
      acl: map['acl'] == null ? null : (map['acl']! as String).input(),
      cert: map['cert'] == null ? null : (ObjectStorageBucketCert.fromMap((map['cert']! as Map).cast<String, dynamic>())).input(),
      cluster: map['cluster'] == null ? null : (map['cluster']! as String).input(),
      corsEnabled: map['corsEnabled'] == null ? null : (map['corsEnabled']! as bool).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      lifecycleRules: map['lifecycleRules'] == null ? null : (pulumi.Input.decodeList<ObjectStorageBucketLifecycleRule>(map['lifecycleRules']!, (value) => ObjectStorageBucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      s3Endpoint: map['s3Endpoint'] == null ? null : (map['s3Endpoint']! as String).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey']! as String).input(),
      versioning: map['versioning'] == null ? null : (map['versioning']! as bool).input(),
    );
  }
}

