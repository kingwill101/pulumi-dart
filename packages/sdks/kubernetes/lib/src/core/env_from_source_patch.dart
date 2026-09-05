// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_env_source_patch.dart';
import 'secret_env_source_patch.dart';

/// EnvFromSource represents the source of a set of ConfigMaps or Secrets
class EnvFromSourcePatch {
  /// The ConfigMap to select from
  final pulumi.Input<ConfigMapEnvSourcePatch?>? configMapRef;
  /// Optional text to prepend to the name of each environment variable. May consist of any printable ASCII characters except '='.
  final pulumi.Input<String?>? prefix;
  /// The Secret to select from
  final pulumi.Input<SecretEnvSourcePatch?>? secretRef;

  /// Creates a new [EnvFromSourcePatch].
  /// [configMapRef] The ConfigMap to select from
  /// [prefix] Optional text to prepend to the name of each environment variable. May consist of any printable ASCII characters except '='.
  /// [secretRef] The Secret to select from
  const EnvFromSourcePatch({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': ?pulumi.Input.mapOptionalInputValue<ConfigMapEnvSourcePatch, Map<String, dynamic>>(configMapRef, (value) => value.toMap()),
      'prefix': ?prefix,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<SecretEnvSourcePatch, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
    };
  }

  factory EnvFromSourcePatch.fromMap(Map<String, dynamic> map) {
    return EnvFromSourcePatch(
      configMapRef: (() { final guardedValue = map['configMapRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMapEnvSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretEnvSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
