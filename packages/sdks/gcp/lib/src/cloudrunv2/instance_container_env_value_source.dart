// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_container_env_value_source_secret_key_ref.dart';

class InstanceContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerEnvValueSourceSecretKeyRef?>? secretKeyRef;

  /// Creates a new [InstanceContainerEnvValueSource].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  const InstanceContainerEnvValueSource({
    this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef': ?pulumi.Input.mapOptionalInputValue<InstanceContainerEnvValueSourceSecretKeyRef, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory InstanceContainerEnvValueSource.fromMap(Map<String, dynamic> map) {
    return InstanceContainerEnvValueSource(
      secretKeyRef: (() { final guardedValue = map['secretKeyRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceContainerEnvValueSourceSecretKeyRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
