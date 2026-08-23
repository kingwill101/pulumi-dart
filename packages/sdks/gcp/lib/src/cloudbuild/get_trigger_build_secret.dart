// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildSecret {
  /// Cloud KMS key name to use to decrypt these envs.
  final pulumi.Input<String> kmsKeyName;
  /// Map of environment variable name to its encrypted value.
  /// Secret environment variables must be unique across all of a build's secrets,
  /// and must be used by at least one build step. Values can be at most 64 KB in size.
  /// There can be at most 100 secret values across all of a build's secrets.
  final pulumi.Input<Map<String, String>> secretEnv;

  /// Creates a new [GetTriggerBuildSecret].
  /// [kmsKeyName] Cloud KMS key name to use to decrypt these envs.
  /// [secretEnv] Map of environment variable name to its encrypted value.
  const GetTriggerBuildSecret({
    required this.kmsKeyName,
    required this.secretEnv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'secretEnv': secretEnv,
    };
  }

  factory GetTriggerBuildSecret.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildSecret(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      secretEnv: pulumi.Input.fromValue((map['secretEnv'] as Map).cast<String, String>()),
    );
  }
}
