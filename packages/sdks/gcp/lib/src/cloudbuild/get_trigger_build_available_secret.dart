// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_available_secret_secret_manager.dart';

class GetTriggerBuildAvailableSecret {
  /// Pairs a secret environment variable with a SecretVersion in Secret Manager.
  final pulumi.Input<List<GetTriggerBuildAvailableSecretSecretManager>> secretManagers;

  /// Creates a new [GetTriggerBuildAvailableSecret].
  /// [secretManagers] Pairs a secret environment variable with a SecretVersion in Secret Manager.
  const GetTriggerBuildAvailableSecret({
    required this.secretManagers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretManagers': pulumi.Input.mapInputValue<List<GetTriggerBuildAvailableSecretSecretManager>, List<Map<String, dynamic>>>(secretManagers, (value) => pulumi.Input.encodeList<GetTriggerBuildAvailableSecretSecretManager, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTriggerBuildAvailableSecret.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildAvailableSecret(
      secretManagers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildAvailableSecretSecretManager>(map['secretManagers']!, (value) => GetTriggerBuildAvailableSecretSecretManager.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
