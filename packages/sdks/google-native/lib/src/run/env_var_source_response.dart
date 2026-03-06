// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_key_selector_response.dart';
import 'secret_key_selector_response.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSourceResponse {
  /// Not supported by Cloud Run. Not supported in Cloud Run.
  final pulumi.Input<ConfigMapKeySelectorResponse> configMapKeyRef;
  /// Selects a key (version) of a secret in Secret Manager.
  final pulumi.Input<SecretKeySelectorResponse> secretKeyRef;

  /// Creates a new [EnvVarSourceResponse].
  /// [configMapKeyRef] Not supported by Cloud Run. Not supported in Cloud Run.
  /// [secretKeyRef] Selects a key (version) of a secret in Secret Manager.
  const EnvVarSourceResponse({
    required this.configMapKeyRef,
    required this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapKeyRef': pulumi.Input.mapInputValue<ConfigMapKeySelectorResponse, Map<String, dynamic>>(configMapKeyRef, (value) => value.toMap()),
      'secretKeyRef': pulumi.Input.mapInputValue<SecretKeySelectorResponse, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory EnvVarSourceResponse.fromMap(Map<String, dynamic> map) {
    return EnvVarSourceResponse(
      configMapKeyRef: pulumi.Input.fromValue(ConfigMapKeySelectorResponse.fromMap((map['configMapKeyRef']! as Map).cast<String, dynamic>())),
      secretKeyRef: pulumi.Input.fromValue(SecretKeySelectorResponse.fromMap((map['secretKeyRef']! as Map).cast<String, dynamic>())),
    );
  }
}

