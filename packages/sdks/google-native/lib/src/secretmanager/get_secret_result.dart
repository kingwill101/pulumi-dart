// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_response.dart';
import 'rotation_response.dart';
import 'topic_response.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  /// Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
  final Map<String, String>? annotations;
  /// The time at which the Secret was created.
  final String? createTime;
  /// Optional. Etag of the currently stored Secret.
  final String? etag;
  /// Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  final String? expireTime;
  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  final Map<String, String>? labels;
  /// The resource name of the Secret in the format `projects/*/secrets/*`.
  final String? name;
  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  final ReplicationResponse? replication;
  /// Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
  final RotationResponse? rotation;
  /// Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  final List<TopicResponse>? topics;
  /// Input only. The TTL for the Secret.
  final String? ttl;
  /// Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.
  final Map<String, String>? versionAliases;

  /// Creates a new [GetSecretResult].
  /// [annotations] Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
  /// [createTime] The time at which the Secret was created.
  /// [etag] Optional. Etag of the currently stored Secret.
  /// [expireTime] Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  /// [labels] The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  /// [name] The resource name of the Secret in the format `projects/*/secrets/*`.
  /// [replication] Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  /// [rotation] Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
  /// [topics] Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// [ttl] Input only. The TTL for the Secret.
  /// [versionAliases] Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.
  const GetSecretResult({
    this.annotations,
    this.createTime,
    this.etag,
    this.expireTime,
    this.labels,
    this.name,
    this.replication,
    this.rotation,
    this.topics,
    this.ttl,
    this.versionAliases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'name': ?name,
      'replication': ?replication?.toMap(),
      'rotation': ?rotation?.toMap(),
      'topics': ?(() { final guardedValue = topics; if (guardedValue == null) return null; return pulumi.Input.encodeList<TopicResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ttl': ?ttl,
      'versionAliases': ?versionAliases,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replication: (() { final guardedValue = map['replication']; if (guardedValue == null) return null; return ReplicationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rotation: (() { final guardedValue = map['rotation']; if (guardedValue == null) return null; return RotationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicResponse>(guardedValue, (value) => TopicResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionAliases: (() { final guardedValue = map['versionAliases']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
