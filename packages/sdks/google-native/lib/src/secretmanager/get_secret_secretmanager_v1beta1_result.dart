// ignore_for_file: unused_element, unnecessary_cast

import 'replication_response_secretmanager_v1beta1.dart';

/// Result data returned by getSecret.
class GetSecretSecretmanagerV1beta1Result {
  /// The time at which the Secret was created.
  final String createTime;
  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  final Map<String, String> labels;
  /// The resource name of the Secret in the format `projects/*/secrets/*`.
  final String name;
  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  final ReplicationResponseSecretmanagerV1beta1 replication;

  /// Creates a new [GetSecretSecretmanagerV1beta1Result].
  /// [createTime] The time at which the Secret was created.
  /// [labels] The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  /// [name] The resource name of the Secret in the format `projects/*/secrets/*`.
  /// [replication] Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  const GetSecretSecretmanagerV1beta1Result({
    required this.createTime,
    required this.labels,
    required this.name,
    required this.replication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'labels': labels,
      'name': name,
      'replication': replication.toMap(),
    };
  }

  factory GetSecretSecretmanagerV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetSecretSecretmanagerV1beta1Result(
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      replication: ReplicationResponseSecretmanagerV1beta1.fromMap((map['replication']! as Map).cast<String, dynamic>()),
    );
  }
}
