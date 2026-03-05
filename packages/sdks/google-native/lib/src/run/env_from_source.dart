// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_env_source.dart';
import 'secret_env_source.dart';

/// Not supported by Cloud Run. EnvFromSource represents the source of a set of ConfigMaps
class EnvFromSource {
  /// The ConfigMap to select from
  final pulumi.Input<ConfigMapEnvSource>? configMapRef;
  /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  final pulumi.Input<String>? prefix;
  /// The Secret to select from
  final pulumi.Input<SecretEnvSource>? secretRef;

  /// Creates a new [EnvFromSource].
  /// [configMapRef] The ConfigMap to select from
  /// [prefix] An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  /// [secretRef] The Secret to select from
  EnvFromSource({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': ?pulumi.Input.mapOptionalInputValue<ConfigMapEnvSource, Map<String, dynamic>>(configMapRef, (value) => value.toMap()),
      'prefix': ?prefix,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<SecretEnvSource, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
    };
  }

  factory EnvFromSource.fromMap(Map<String, dynamic> map) {
    return EnvFromSource(
      configMapRef: (() { final guardedValue = map['configMapRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMapEnvSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretEnvSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

