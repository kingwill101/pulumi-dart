// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_v1_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_v1_get_secret_args_doc}
class GetSecretArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretArgs].
  /// [project] Optional.
  /// [secretId] Required.
  GetSecretArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> secretId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      secretId = pulumi.Input.asInput<String>(secretId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secretId: pulumi.Output.create<String>(map['secretId'] as String),
    );
  }
}

