// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy.dart';
import 'backend_bucket_params.dart';

/// {@template pulumi_compute_backend_bucket_backend_bucket_args_doc}
/// The set of arguments for BackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_backend_bucket_backend_bucket_args_doc}
class BackendBucketArgs {
  /// Cloud Storage bucket name.
  final pulumi.Input<String> bucketName;
  /// Cloud CDN configuration for this Backend Bucket.
  /// Structure is documented below.
  final pulumi.Input<BackendBucketCdnPolicy>? cdnPolicy;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  final pulumi.Input<String>? compressionMode;
  /// Headers that the HTTP/S load balancer should add to proxied responses.
  final pulumi.Input<List<String>>? customResponseHeaders;
  /// An optional textual description of the resource; provided by the
  /// client when the resource is created.
  final pulumi.Input<String>? description;
  /// The security policy associated with this backend bucket.
  final pulumi.Input<String>? edgeSecurityPolicy;
  /// If true, enable Cloud CDN for this BackendBucket.
  /// Note: This cannot be set to true when loadBalancingScheme is set to INTERNAL_MANAGED.
  final pulumi.Input<bool>? enableCdn;
  /// The value can only be INTERNAL_MANAGED for cross-region internal layer 7 load balancer.
  /// If loadBalancingScheme is not specified, the backend bucket can be used by classic global external load balancers, or global application external load balancers, or both.
  /// Important: CDN cannot be enabled (enableCdn cannot be set to true) when loadBalancingScheme is set to INTERNAL_MANAGED.
  /// Possible values are: `INTERNAL_MANAGED`.
  final pulumi.Input<String>? loadBalancingScheme;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<BackendBucketParams>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackendBucketArgs].
  /// [bucketName] Cloud Storage bucket name.
  /// [cdnPolicy] Cloud CDN configuration for this Backend Bucket.
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// [customResponseHeaders] Headers that the HTTP/S load balancer should add to proxied responses.
  /// [description] An optional textual description of the resource; provided by the
  /// [edgeSecurityPolicy] The security policy associated with this backend bucket.
  /// [enableCdn] If true, enable Cloud CDN for this BackendBucket.
  /// [loadBalancingScheme] The value can only be INTERNAL_MANAGED for cross-region internal layer 7 load balancer.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  const BackendBucketArgs({
    required this.bucketName,
    this.cdnPolicy,
    this.compressionMode,
    this.customResponseHeaders,
    this.description,
    this.edgeSecurityPolicy,
    this.enableCdn,
    this.loadBalancingScheme,
    this.name,
    this.params,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'cdnPolicy': ?pulumi.Input.mapOptionalInputValue<BackendBucketCdnPolicy, Map<String, dynamic>>(cdnPolicy, (value) => value.toMap()),
      'compressionMode': ?compressionMode,
      'customResponseHeaders': ?customResponseHeaders,
      'description': ?description,
      'edgeSecurityPolicy': ?edgeSecurityPolicy,
      'enableCdn': ?enableCdn,
      'loadBalancingScheme': ?loadBalancingScheme,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<BackendBucketParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory BackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketArgs(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      cdnPolicy: (() { final guardedValue = map['cdnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBucketCdnPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customResponseHeaders: (() { final guardedValue = map['customResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeSecurityPolicy: (() { final guardedValue = map['edgeSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableCdn: (() { final guardedValue = map['enableCdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBucketParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

