// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy_compute_beta.dart';
import 'backend_bucket_compression_mode_compute_beta.dart';

/// {@template pulumi_compute_beta_backend_bucket_compute_beta_args_doc}
/// The set of arguments for BackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_backend_bucket_compute_beta_args_doc}
class BackendBucketComputeBetaArgs {
  /// Cloud Storage bucket name.
  final pulumi.Input<String>? bucketName;
  /// Cloud CDN configuration for this BackendBucket.
  final pulumi.Input<BackendBucketCdnPolicyComputeBeta>? cdnPolicy;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final pulumi.Input<BackendBucketCompressionModeComputeBeta>? compressionMode;
  /// Headers that the Application Load Balancer should add to proxied responses.
  final pulumi.Input<List<String>>? customResponseHeaders;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;
  /// If true, enable Cloud CDN for this BackendBucket.
  final pulumi.Input<bool>? enableCdn;
  /// Type of the resource.
  final pulumi.Input<String>? kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [BackendBucketComputeBetaArgs].
  /// [bucketName] Cloud Storage bucket name.
  /// [cdnPolicy] Cloud CDN configuration for this BackendBucket.
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// [customResponseHeaders] Headers that the Application Load Balancer should add to proxied responses.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [enableCdn] If true, enable Cloud CDN for this BackendBucket.
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  BackendBucketComputeBetaArgs({
    this.bucketName,
    this.cdnPolicy,
    this.compressionMode,
    this.customResponseHeaders,
    this.description,
    this.enableCdn,
    this.kind,
    this.name,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'cdnPolicy': ?pulumi.Input.mapOptionalInputValue<BackendBucketCdnPolicyComputeBeta, Map<String, dynamic>>(cdnPolicy, (value) => value.toMap()),
      'compressionMode': ?pulumi.Input.mapOptionalInputValue<BackendBucketCompressionModeComputeBeta, String>(compressionMode, (value) => value.value),
      'customResponseHeaders': ?customResponseHeaders,
      'description': ?description,
      'enableCdn': ?enableCdn,
      'kind': ?kind,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory BackendBucketComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketComputeBetaArgs(
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      cdnPolicy: map['cdnPolicy'] == null ? null : (BackendBucketCdnPolicyComputeBeta.fromMap((map['cdnPolicy'] as Map).cast<String, dynamic>())).input(),
      compressionMode: map['compressionMode'] == null ? null : (BackendBucketCompressionModeComputeBeta.fromValue(map['compressionMode'] as String)).input(),
      customResponseHeaders: map['customResponseHeaders'] == null ? null : ((map['customResponseHeaders'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableCdn: map['enableCdn'] == null ? null : (map['enableCdn'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
    );
  }
}

