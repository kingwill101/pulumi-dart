// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_build_available_secrets_secret_manager.dart';

class TriggerBuildAvailableSecrets {
  /// Pairs a secret environment variable with a SecretVersion in Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerBuildAvailableSecretsSecretManager>> secretManagers;

  /// Creates a new [TriggerBuildAvailableSecrets].
  /// [secretManagers] Pairs a secret environment variable with a SecretVersion in Secret Manager.
  const TriggerBuildAvailableSecrets({
    required this.secretManagers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretManagers': pulumi.Input.mapInputValue<List<TriggerBuildAvailableSecretsSecretManager>, List<Map<String, dynamic>>>(secretManagers, (value) => pulumi.Input.encodeList<TriggerBuildAvailableSecretsSecretManager, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TriggerBuildAvailableSecrets.fromMap(Map<String, dynamic> map) {
    return TriggerBuildAvailableSecrets(
      secretManagers: pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerBuildAvailableSecretsSecretManager>(map['secretManagers']!, (value) => TriggerBuildAvailableSecretsSecretManager.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

