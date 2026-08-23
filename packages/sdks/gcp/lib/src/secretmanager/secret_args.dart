// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_replication.dart';
import 'secret_rotation.dart';
import 'secret_topic.dart';

/// {@template pulumi_secretmanager_secret_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_secret_secret_args_doc}
class SecretArgs {
  /// Custom metadata about the secret.
  /// Annotations are distinct from various forms of labels. Annotations exist to allow
  /// client tools to store their own state information without requiring a database.
  /// Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
  /// may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
  /// symbols.
  /// The total size of annotation keys and values must be less than 16KiB.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the secret. Defaults to false.
  /// When the field is set to true in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the secret will fail.
  final pulumi.Input<bool>? deletionProtection;
  /// Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// Only one of `expireTime` or `ttl` can be provided.
  final pulumi.Input<String>? expireTime;
  /// The labels assigned to this Secret.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The replication policy of the secret data attached to the Secret. It cannot be changed
  /// after the Secret has been created.
  /// Structure is documented below.
  final pulumi.Input<SecretReplication> replication;
  /// The rotation time and period for a Secret. At `nextRotationTime`, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. `topics` must be set to configure rotation.
  /// Structure is documented below.
  final pulumi.Input<SecretRotation>? rotation;
  /// This must be unique within the project.
  final pulumi.Input<String>? secretId;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// Structure is documented below.
  final pulumi.Input<List<SecretTopic>>? topics;
  /// The TTL for the Secret.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// Only one of `ttl` or `expireTime` can be provided.
  final pulumi.Input<String>? ttl;
  /// Mapping from version alias to version name.
  /// A version alias is a string with a maximum length of 63 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (-) and underscore ('_')
  /// characters. An alias string must start with a letter and cannot be the string
  /// 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? versionAliases;
  /// Secret Version TTL after destruction request.
  /// This is a part of the delayed delete feature on Secret Version.
  /// For secret with versionDestroyTtl&gt;0, version destruction doesn't happen immediately
  /// on calling destroy instead the version goes to a disabled state and
  /// the actual destruction happens after this TTL expires.
  final pulumi.Input<String>? versionDestroyTtl;

  /// Creates a new [SecretArgs].
  /// [annotations] Custom metadata about the secret.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the secret. Defaults to false.
  /// [expireTime] Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  /// [labels] The labels assigned to this Secret.
  /// [project] The ID of the project in which the resource belongs.
  /// [replication] The replication policy of the secret data attached to the Secret. It cannot be changed
  /// [rotation] The rotation time and period for a Secret. At `nextRotationTime`, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. `topics` must be set to configure rotation.
  /// [secretId] This must be unique within the project.
  /// [tags] A map of resource manager tags.
  /// [topics] A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// [ttl] The TTL for the Secret.
  /// [versionAliases] Mapping from version alias to version name.
  /// [versionDestroyTtl] Secret Version TTL after destruction request.
  const SecretArgs({
    this.annotations,
    this.deletionPolicy,
    this.deletionProtection,
    this.expireTime,
    this.labels,
    this.project,
    required this.replication,
    this.rotation,
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
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'project': ?project,
      'replication': pulumi.Input.mapInputValue<SecretReplication, Map<String, dynamic>>(replication, (value) => value.toMap()),
      'rotation': ?pulumi.Input.mapOptionalInputValue<SecretRotation, Map<String, dynamic>>(rotation, (value) => value.toMap()),
      'secretId': ?secretId,
      'tags': ?tags,
      'topics': ?pulumi.Input.mapOptionalInputValue<List<SecretTopic>, List<Map<String, dynamic>>>(topics, (value) => pulumi.Input.encodeList<SecretTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ?ttl,
      'versionAliases': ?versionAliases,
      'versionDestroyTtl': ?versionDestroyTtl,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replication: pulumi.Input.fromValue(SecretReplication.fromMap((map['replication']! as Map).cast<String, dynamic>())),
      rotation: (() { final guardedValue = map['rotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretRotation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretTopic>(guardedValue, (value) => SecretTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionAliases: (() { final guardedValue = map['versionAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionDestroyTtl: (() { final guardedValue = map['versionDestroyTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
