// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildAvailableSecretSecretManager {
  /// Environment variable name to associate with the secret. Secret environment
  /// variables must be unique across all of a build's secrets, and must be used
  /// by at least one build step.
  final pulumi.Input<String> env;
  /// Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  final pulumi.Input<String> versionName;

  /// Creates a new [GetTriggerBuildAvailableSecretSecretManager].
  /// [env] Environment variable name to associate with the secret. Secret environment
  /// [versionName] Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  GetTriggerBuildAvailableSecretSecretManager({
    required this.env,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env': env,
      'versionName': versionName,
    };
  }

  factory GetTriggerBuildAvailableSecretSecretManager.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildAvailableSecretSecretManager(
      env: (map['env'] as String).input(),
      versionName: (map['versionName'] as String).input(),
    );
  }
}

