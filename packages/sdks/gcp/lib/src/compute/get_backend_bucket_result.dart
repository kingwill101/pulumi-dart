// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_bucket_cdn_policy.dart';
import 'get_backend_bucket_param.dart';

/// Result data returned by getBackendBucket.
class GetBackendBucketResult {
  final String? bucketName;
  final List<GetBackendBucketCdnPolicy>? cdnPolicies;
  final String? compressionMode;
  final String? creationTimestamp;
  final List<String>? customResponseHeaders;
  final String? deletionPolicy;
  final String? description;
  final String? edgeSecurityPolicy;
  final bool? enableCdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? loadBalancingScheme;
  final String? name;
  final List<GetBackendBucketParam>? params;
  final String? project;
  final String? selfLink;

  /// Creates a new [GetBackendBucketResult].
  /// [bucketName] Optional.
  /// [cdnPolicies] Optional.
  /// [compressionMode] Optional.
  /// [creationTimestamp] Optional.
  /// [customResponseHeaders] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [edgeSecurityPolicy] Optional.
  /// [enableCdn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancingScheme] Optional.
  /// [name] Optional.
  /// [params] Optional.
  /// [project] Optional.
  /// [selfLink] Optional.
  const GetBackendBucketResult({
    this.bucketName,
    this.cdnPolicies,
    this.compressionMode,
    this.creationTimestamp,
    this.customResponseHeaders,
    this.deletionPolicy,
    this.description,
    this.edgeSecurityPolicy,
    this.enableCdn,
    this.id,
    this.loadBalancingScheme,
    this.name,
    this.params,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'cdnPolicies': ?(() { final guardedValue = cdnPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendBucketCdnPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'compressionMode': ?compressionMode,
      'creationTimestamp': ?creationTimestamp,
      'customResponseHeaders': ?customResponseHeaders,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'edgeSecurityPolicy': ?edgeSecurityPolicy,
      'enableCdn': ?enableCdn,
      'id': ?id,
      'loadBalancingScheme': ?loadBalancingScheme,
      'name': ?name,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendBucketParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GetBackendBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketResult(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cdnPolicies: (() { final guardedValue = map['cdnPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendBucketCdnPolicy>(guardedValue, (value) => GetBackendBucketCdnPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customResponseHeaders: (() { final guardedValue = map['customResponseHeaders']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      edgeSecurityPolicy: (() { final guardedValue = map['edgeSecurityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableCdn: (() { final guardedValue = map['enableCdn']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendBucketParam>(guardedValue, (value) => GetBackendBucketParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
