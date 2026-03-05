// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_env_from_config_map_ref.dart';
import 'service_template_spec_container_env_from_secret_ref.dart';

class ServiceTemplateSpecContainerEnvFrom {
  /// The ConfigMap to select from.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerEnvFromConfigMapRef>? configMapRef;
  /// An optional identifier to prepend to each key in the ConfigMap.
  final pulumi.Input<String>? prefix;
  /// The Secret to select from.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerEnvFromSecretRef>? secretRef;

  /// Creates a new [ServiceTemplateSpecContainerEnvFrom].
  /// [configMapRef] The ConfigMap to select from.
  /// [prefix] An optional identifier to prepend to each key in the ConfigMap.
  /// [secretRef] The Secret to select from.
  ServiceTemplateSpecContainerEnvFrom({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerEnvFromConfigMapRef, Map<String, dynamic>>(configMapRef, (value) => value.toMap()),
      'prefix': ?prefix,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerEnvFromSecretRef, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateSpecContainerEnvFrom.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFrom(
      configMapRef: (() { final guardedValue = map['configMapRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSpecContainerEnvFromSecretRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

