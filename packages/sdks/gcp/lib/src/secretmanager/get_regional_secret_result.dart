// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secret_customer_managed_encryption.dart';
import 'get_regional_secret_rotation.dart';
import 'get_regional_secret_topic.dart';

/// Result data returned by getRegionalSecret.
class GetRegionalSecretResult {
  final Map<String, String> annotations;
  final String createTime;
  final List<GetRegionalSecretCustomerManagedEncryption> customerManagedEncryptions;
  final String deletionPolicy;
  final bool deletionProtection;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String expireTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetRegionalSecretRotation> rotations;
  final String secretId;
  final Map<String, String> tags;
  final List<GetRegionalSecretTopic> topics;
  final String ttl;
  final Map<String, String> versionAliases;
  final String versionDestroyTtl;

  /// Creates a new [GetRegionalSecretResult].
  /// [annotations] Required.
  /// [createTime] Required.
  /// [customerManagedEncryptions] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [effectiveAnnotations] Required.
  /// [effectiveLabels] Required.
  /// [expireTime] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [rotations] Required.
  /// [secretId] Required.
  /// [tags] Required.
  /// [topics] Required.
  /// [ttl] Required.
  /// [versionAliases] Required.
  /// [versionDestroyTtl] Required.
  const GetRegionalSecretResult({
    required this.annotations,
    required this.createTime,
    required this.customerManagedEncryptions,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.expireTime,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.rotations,
    required this.secretId,
    required this.tags,
    required this.topics,
    required this.ttl,
    required this.versionAliases,
    required this.versionDestroyTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'customerManagedEncryptions': pulumi.Input.encodeList<GetRegionalSecretCustomerManagedEncryption, Map<String, dynamic>>(customerManagedEncryptions, (value) => value.toMap()),
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'effectiveAnnotations': effectiveAnnotations,
      'effectiveLabels': effectiveLabels,
      'expireTime': expireTime,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'rotations': pulumi.Input.encodeList<GetRegionalSecretRotation, Map<String, dynamic>>(rotations, (value) => value.toMap()),
      'secretId': secretId,
      'tags': tags,
      'topics': pulumi.Input.encodeList<GetRegionalSecretTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
      'ttl': ttl,
      'versionAliases': versionAliases,
      'versionDestroyTtl': versionDestroyTtl,
    };
  }

  factory GetRegionalSecretResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      customerManagedEncryptions: pulumi.Input.decodeList<GetRegionalSecretCustomerManagedEncryption>(map['customerManagedEncryptions']!, (value) => GetRegionalSecretCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveAnnotations: (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      rotations: pulumi.Input.decodeList<GetRegionalSecretRotation>(map['rotations']!, (value) => GetRegionalSecretRotation.fromMap((value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      topics: pulumi.Input.decodeList<GetRegionalSecretTopic>(map['topics']!, (value) => GetRegionalSecretTopic.fromMap((value as Map).cast<String, dynamic>())),
      ttl: map['ttl'] as String,
      versionAliases: (map['versionAliases'] as Map).cast<String, String>(),
      versionDestroyTtl: map['versionDestroyTtl'] as String,
    );
  }
}
