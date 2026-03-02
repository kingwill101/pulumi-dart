// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_v1beta1_get_secret_secretmanager_v1beta1_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_v1beta1_get_secret_secretmanager_v1beta1_args_doc}
class GetSecretSecretmanagerV1beta1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretSecretmanagerV1beta1Args].
  /// [project] Optional.
  /// [secretId] Required.
  GetSecretSecretmanagerV1beta1Args({
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetSecretSecretmanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSecretSecretmanagerV1beta1Args(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      secretId: (map['secretId'] as String).input(),
    );
  }
}

