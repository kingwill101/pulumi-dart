// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_key_selector.dart';
import 'secret_key_selector.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSource {
  /// Not supported by Cloud Run. Not supported in Cloud Run.
  final pulumi.Input<ConfigMapKeySelector>? configMapKeyRef;
  /// Selects a key (version) of a secret in Secret Manager.
  final pulumi.Input<SecretKeySelector>? secretKeyRef;

  /// Creates a new [EnvVarSource].
  /// [configMapKeyRef] Not supported by Cloud Run. Not supported in Cloud Run.
  /// [secretKeyRef] Selects a key (version) of a secret in Secret Manager.
  EnvVarSource({
    this.configMapKeyRef,
    this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapKeyRef': ?pulumi.Input.mapOptionalInputValue<ConfigMapKeySelector, Map<String, dynamic>>(configMapKeyRef, (value) => value.toMap()),
      'secretKeyRef': ?pulumi.Input.mapOptionalInputValue<SecretKeySelector, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory EnvVarSource.fromMap(Map<String, dynamic> map) {
    return EnvVarSource(
      configMapKeyRef: (() { final guardedValue = map['configMapKeyRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMapKeySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretKeyRef: (() { final guardedValue = map['secretKeyRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretKeySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

