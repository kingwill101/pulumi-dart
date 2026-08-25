// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_replication.dart';
import 'get_secret_rotation.dart';
import 'get_secret_topic.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  final Map<String, String>? annotations;
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final String? expireTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetSecretReplication>? replications;
  final List<GetSecretRotation>? rotations;
  final String? secretId;
  final Map<String, String>? tags;
  final List<GetSecretTopic>? topics;
  final String? ttl;
  final Map<String, String>? versionAliases;
  final String? versionDestroyTtl;

  /// Creates a new [GetSecretResult].
  /// [annotations] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [expireTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [replications] Optional.
  /// [rotations] Optional.
  /// [secretId] Optional.
  /// [tags] Optional.
  /// [topics] Optional.
  /// [ttl] Optional.
  /// [versionAliases] Optional.
  /// [versionDestroyTtl] Optional.
  const GetSecretResult({
    this.annotations,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.expireTime,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.replications,
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
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'expireTime': ?expireTime,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'replications': ?(() { final guardedValue = replications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretReplication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rotations': ?(() { final guardedValue = rotations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretRotation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretId': ?secretId,
      'tags': ?tags,
      'topics': ?(() { final guardedValue = topics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretTopic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ttl': ?ttl,
      'versionAliases': ?versionAliases,
      'versionDestroyTtl': ?versionDestroyTtl,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      replications: (() { final guardedValue = map['replications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretReplication>(guardedValue, (value) => GetSecretReplication.fromMap((value as Map).cast<String, dynamic>())); })(),
      rotations: (() { final guardedValue = map['rotations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretRotation>(guardedValue, (value) => GetSecretRotation.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretTopic>(guardedValue, (value) => GetSecretTopic.fromMap((value as Map).cast<String, dynamic>())); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionAliases: (() { final guardedValue = map['versionAliases']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      versionDestroyTtl: (() { final guardedValue = map['versionDestroyTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
