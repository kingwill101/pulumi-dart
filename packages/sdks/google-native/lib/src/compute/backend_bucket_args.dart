// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy.dart';
import 'backend_bucket_compression_mode.dart';

/// {@template pulumi_compute_alpha_backend_bucket_args_doc}
/// The set of arguments for BackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_backend_bucket_args_doc}
class BackendBucketArgs {
  /// Cloud Storage bucket name.
  final pulumi.Input<String>? bucketName;
  /// Cloud CDN configuration for this BackendBucket.
  final pulumi.Input<BackendBucketCdnPolicy>? cdnPolicy;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final pulumi.Input<BackendBucketCompressionMode>? compressionMode;
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

  /// Creates a new [BackendBucketArgs].
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
  BackendBucketArgs({
    pulumi.Output<String>? bucketName,
    pulumi.Output<BackendBucketCdnPolicy>? cdnPolicy,
    pulumi.Output<BackendBucketCompressionMode>? compressionMode,
    pulumi.Output<List<String>>? customResponseHeaders,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableCdn,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
  }) :
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      cdnPolicy = pulumi.Input.asOptionalInput<BackendBucketCdnPolicy>(cdnPolicy),
      compressionMode = pulumi.Input.asOptionalInput<BackendBucketCompressionMode>(compressionMode),
      customResponseHeaders = pulumi.Input.asOptionalInput<List<String>>(customResponseHeaders),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableCdn = pulumi.Input.asOptionalInput<bool>(enableCdn),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'cdnPolicy': ?pulumi.Input.mapOptionalInputValue<BackendBucketCdnPolicy, Map<String, dynamic>>(cdnPolicy, (value) => value.toMap()),
      'compressionMode': ?pulumi.Input.mapOptionalInputValue<BackendBucketCompressionMode, String>(compressionMode, (value) => value.value),
      'customResponseHeaders': ?customResponseHeaders,
      'description': ?description,
      'enableCdn': ?enableCdn,
      'kind': ?kind,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory BackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketArgs(
      bucketName: map['bucketName'] == null ? null : pulumi.Output.create<String>(map['bucketName'] as String),
      cdnPolicy: map['cdnPolicy'] == null ? null : pulumi.Output.create<BackendBucketCdnPolicy>(BackendBucketCdnPolicy.fromMap((map['cdnPolicy'] as Map).cast<String, dynamic>())),
      compressionMode: map['compressionMode'] == null ? null : pulumi.Output.create<BackendBucketCompressionMode>(BackendBucketCompressionMode.fromValue(map['compressionMode'] as String)),
      customResponseHeaders: map['customResponseHeaders'] == null ? null : pulumi.Output.create<List<String>>((map['customResponseHeaders'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableCdn: map['enableCdn'] == null ? null : pulumi.Output.create<bool>(map['enableCdn'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
    );
  }
}

