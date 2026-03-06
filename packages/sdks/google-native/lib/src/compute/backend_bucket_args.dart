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
  const BackendBucketArgs({
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
      'cdnPolicy': ?pulumi.Input.mapOptionalInputValue<BackendBucketCdnPolicy, Map<String, dynamic>>(cdnPolicy, (value) => value.toMap()),
      'compressionMode': ?pulumi.Input.mapOptionalInputValue<BackendBucketCompressionMode, String>(compressionMode, (value) => value.wireValue),
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
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cdnPolicy: (() { final guardedValue = map['cdnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBucketCdnPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBucketCompressionMode.fromValue(guardedValue as String)); })(),
      customResponseHeaders: (() { final guardedValue = map['customResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableCdn: (() { final guardedValue = map['enableCdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

