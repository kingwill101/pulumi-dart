// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret_replication.dart';
import 'get_secrets_secret_rotation.dart';
import 'get_secrets_secret_topic.dart';

class GetSecretsSecret {
  /// Custom metadata about the secret.
  final pulumi.Input<Map<String, String>> annotations;

  /// The time at which the Secret was created.
  final pulumi.Input<String> createTime;
  final pulumi.Input<bool> deletionProtection;
  final pulumi.Input<Map<String, String>> effectiveAnnotations;
  final pulumi.Input<Map<String, String>> effectiveLabels;

  /// Timestamp in UTC when the Secret is scheduled to expire.
  final pulumi.Input<String> expireTime;

  /// The labels assigned to this Secret.
  final pulumi.Input<Map<String, String>> labels;

  /// The resource name of the Pub/Sub topic that will be published to.
  final pulumi.Input<String> name;

  /// The ID of the project.
  final pulumi.Input<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;

  /// The replication policy of the secret data attached to the Secret.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretReplication>> replications;

  /// The rotation time and period for a Secret.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretRotation>> rotations;

  /// This must be unique within the project.
  final pulumi.Input<String> secretId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>> tags;

  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretTopic>> topics;

  /// The TTL for the Secret.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// Only one of 'ttl' or 'expire_time' can be provided.
  final pulumi.Input<String> ttl;

  /// Mapping from version alias to version name.
  final pulumi.Input<Map<String, String>> versionAliases;

  /// The version destroy ttl for the secret version.
  final pulumi.Input<String> versionDestroyTtl;

  /// Creates a new [GetSecretsSecret].
  /// [annotations] Custom metadata about the secret.
  /// [createTime] The time at which the Secret was created.
  /// [deletionProtection] Required.
  /// [effectiveAnnotations] Required.
  /// [effectiveLabels] Required.
  /// [expireTime] Timestamp in UTC when the Secret is scheduled to expire.
  /// [labels] The labels assigned to this Secret.
  /// [name] The resource name of the Pub/Sub topic that will be published to.
  /// [project] The ID of the project.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [replications] The replication policy of the secret data attached to the Secret.
  /// [rotations] The rotation time and period for a Secret.
  /// [secretId] This must be unique within the project.
  /// [tags] A map of resource manager tags.
  /// [topics] A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// [ttl] The TTL for the Secret.
  /// [versionAliases] Mapping from version alias to version name.
  /// [versionDestroyTtl] The version destroy ttl for the secret version.
  GetSecretsSecret({
    required this.annotations,
    required this.createTime,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.expireTime,
    required this.labels,
    required this.name,
    required this.project,
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
      'labels': labels,
      'name': name,
      'project': project,
      'pulumiLabels': pulumiLabels,
      'replications':
          pulumi.Input.mapInputValue<
            List<GetSecretsSecretReplication>,
            List<Map<String, dynamic>>
          >(
            replications,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecretsSecretReplication,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'rotations':
          pulumi.Input.mapInputValue<
            List<GetSecretsSecretRotation>,
            List<Map<String, dynamic>>
          >(
            rotations,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecretsSecretRotation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'secretId': secretId,
      'tags': tags,
      'topics':
          pulumi.Input.mapInputValue<
            List<GetSecretsSecretTopic>,
            List<Map<String, dynamic>>
          >(
            topics,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecretsSecretTopic,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ttl': ttl,
      'versionAliases': versionAliases,
      'versionDestroyTtl': versionDestroyTtl,
    };
  }

  factory GetSecretsSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecret(
      annotations: pulumi.Input.fromValue(
        (map['annotations'] as Map).cast<String, String>(),
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionProtection: pulumi.Input.fromValue(
        map['deletionProtection'] as bool,
      ),
      effectiveAnnotations: pulumi.Input.fromValue(
        (map['effectiveAnnotations'] as Map).cast<String, String>(),
      ),
      effectiveLabels: pulumi.Input.fromValue(
        (map['effectiveLabels'] as Map).cast<String, String>(),
      ),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      pulumiLabels: pulumi.Input.fromValue(
        (map['pulumiLabels'] as Map).cast<String, String>(),
      ),
      replications: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetSecretsSecretReplication>(
          map['replications']!,
          (value) => GetSecretsSecretReplication.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      rotations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetSecretsSecretRotation>(
          map['rotations']!,
          (value) => GetSecretsSecretRotation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      topics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetSecretsSecretTopic>(
          map['topics']!,
          (value) => GetSecretsSecretTopic.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      ttl: pulumi.Input.fromValue(map['ttl'] as String),
      versionAliases: pulumi.Input.fromValue(
        (map['versionAliases'] as Map).cast<String, String>(),
      ),
      versionDestroyTtl: pulumi.Input.fromValue(
        map['versionDestroyTtl'] as String,
      ),
    );
  }
}
