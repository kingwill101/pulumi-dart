// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_replication.dart';
import 'get_secret_rotation.dart';
import 'get_secret_topic.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  final Map<String, String> annotations;
  final String createTime;
  final bool deletionProtection;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String expireTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetSecretReplication> replications;
  final List<GetSecretRotation> rotations;
  final String secretId;
  final Map<String, String> tags;
  final List<GetSecretTopic> topics;
  final String ttl;
  final Map<String, String> versionAliases;
  final String versionDestroyTtl;

  /// Creates a new [GetSecretResult].
  /// [annotations] Required.
  /// [createTime] Required.
  /// [deletionProtection] Required.
  /// [effectiveAnnotations] Required.
  /// [effectiveLabels] Required.
  /// [expireTime] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [replications] Required.
  /// [rotations] Required.
  /// [secretId] Required.
  /// [tags] Required.
  /// [topics] Required.
  /// [ttl] Required.
  /// [versionAliases] Required.
  /// [versionDestroyTtl] Required.
  GetSecretResult({
    required this.annotations,
    required this.createTime,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.expireTime,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.replications,
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
      'deletionProtection': deletionProtection,
      'effectiveAnnotations': effectiveAnnotations,
      'effectiveLabels': effectiveLabels,
      'expireTime': expireTime,
      'id': id,
      'labels': labels,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'replications': pulumi.Input.encodeList<GetSecretReplication, Map<String, dynamic>>(replications, (value) => value.toMap()),
      'rotations': pulumi.Input.encodeList<GetSecretRotation, Map<String, dynamic>>(rotations, (value) => value.toMap()),
      'secretId': secretId,
      'tags': tags,
      'topics': pulumi.Input.encodeList<GetSecretTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
      'ttl': ttl,
      'versionAliases': versionAliases,
      'versionDestroyTtl': versionDestroyTtl,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveAnnotations: (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project']! as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      replications: pulumi.Input.decodeList<GetSecretReplication>(map['replications'], (value) => GetSecretReplication.fromMap((value as Map).cast<String, dynamic>())),
      rotations: pulumi.Input.decodeList<GetSecretRotation>(map['rotations'], (value) => GetSecretRotation.fromMap((value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      topics: pulumi.Input.decodeList<GetSecretTopic>(map['topics'], (value) => GetSecretTopic.fromMap((value as Map).cast<String, dynamic>())),
      ttl: map['ttl'] as String,
      versionAliases: (map['versionAliases'] as Map).cast<String, String>(),
      versionDestroyTtl: map['versionDestroyTtl'] as String,
    );
  }
}

