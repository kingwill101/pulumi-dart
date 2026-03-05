// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_secretmanager_v1beta1.dart';

/// {@template pulumi_secretmanager_v1beta1_secret_secretmanager_v1beta1_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_v1beta1_secret_secretmanager_v1beta1_args_doc}
class SecretSecretmanagerV1beta1Args {
  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;
  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  final pulumi.Input<ReplicationSecretmanagerV1beta1> replication;
  /// Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  final pulumi.Input<String> secretId;

  /// Creates a new [SecretSecretmanagerV1beta1Args].
  /// [labels] The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  /// [project] Optional.
  /// [replication] Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  /// [secretId] Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  SecretSecretmanagerV1beta1Args({
    this.labels,
    this.project,
    required this.replication,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'project': ?project,
      'replication': pulumi.Input.mapInputValue<ReplicationSecretmanagerV1beta1, Map<String, dynamic>>(replication, (value) => value.toMap()),
      'secretId': secretId,
    };
  }

  factory SecretSecretmanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return SecretSecretmanagerV1beta1Args(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replication: pulumi.Input.fromValue(ReplicationSecretmanagerV1beta1.fromMap((map['replication']! as Map).cast<String, dynamic>())),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}

