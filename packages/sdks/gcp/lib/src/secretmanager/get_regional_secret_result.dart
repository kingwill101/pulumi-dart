// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secret_customer_managed_encryption.dart';
import 'get_regional_secret_rotation.dart';
import 'get_regional_secret_topic.dart';

/// Result data returned by getRegionalSecret.
class GetRegionalSecretResult {
  final Map<String, String>? annotations;
  final String? createTime;
  final List<GetRegionalSecretCustomerManagedEncryption>? customerManagedEncryptions;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final String? expireTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetRegionalSecretRotation>? rotations;
  final String? secretId;
  final Map<String, String>? tags;
  final List<GetRegionalSecretTopic>? topics;
  final String? ttl;
  final Map<String, String>? versionAliases;
  final String? versionDestroyTtl;

  /// Creates a new [GetRegionalSecretResult].
  /// [annotations] Optional.
  /// [createTime] Optional.
  /// [customerManagedEncryptions] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [expireTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [rotations] Optional.
  /// [secretId] Optional.
  /// [tags] Optional.
  /// [topics] Optional.
  /// [ttl] Optional.
  /// [versionAliases] Optional.
  /// [versionDestroyTtl] Optional.
  const GetRegionalSecretResult({
    this.annotations,
    this.createTime,
    this.customerManagedEncryptions,
    this.deletionPolicy,
    this.deletionProtection,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.expireTime,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.rotations,
    this.secretId,
    this.tags,
    this.topics,
    this.ttl,
    this.versionAliases,
    this.versionDestroyTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'customerManagedEncryptions': ?(() { final guardedValue = customerManagedEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionalSecretCustomerManagedEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'expireTime': ?expireTime,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rotations': ?(() { final guardedValue = rotations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionalSecretRotation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretId': ?secretId,
      'tags': ?tags,
      'topics': ?(() { final guardedValue = topics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionalSecretTopic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ttl': ?ttl,
      'versionAliases': ?versionAliases,
      'versionDestroyTtl': ?versionDestroyTtl,
    };
  }

  factory GetRegionalSecretResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedEncryptions: (() { final guardedValue = map['customerManagedEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionalSecretCustomerManagedEncryption>(guardedValue, (value) => GetRegionalSecretCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      rotations: (() { final guardedValue = map['rotations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionalSecretRotation>(guardedValue, (value) => GetRegionalSecretRotation.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionalSecretTopic>(guardedValue, (value) => GetRegionalSecretTopic.fromMap((value as Map).cast<String, dynamic>())); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionAliases: (() { final guardedValue = map['versionAliases']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      versionDestroyTtl: (() { final guardedValue = map['versionDestroyTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
