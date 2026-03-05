// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_secret_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_secret_get_secret_args_doc}
class GetSecretArgs {
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;
  /// The name of the secret.
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [secretId] The name of the secret.
  GetSecretArgs({
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}

