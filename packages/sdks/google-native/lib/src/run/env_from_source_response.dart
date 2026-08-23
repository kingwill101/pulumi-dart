// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_env_source_response.dart';
import 'secret_env_source_response.dart';

/// Not supported by Cloud Run. EnvFromSource represents the source of a set of ConfigMaps
class EnvFromSourceResponse {
  /// The ConfigMap to select from
  final pulumi.Input<ConfigMapEnvSourceResponse> configMapRef;
  /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  final pulumi.Input<String> prefix;
  /// The Secret to select from
  final pulumi.Input<SecretEnvSourceResponse> secretRef;

  /// Creates a new [EnvFromSourceResponse].
  /// [configMapRef] The ConfigMap to select from
  /// [prefix] An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  /// [secretRef] The Secret to select from
  const EnvFromSourceResponse({
    required this.configMapRef,
    required this.prefix,
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': pulumi.Input.mapInputValue<ConfigMapEnvSourceResponse, Map<String, dynamic>>(configMapRef, (value) => value.toMap()),
      'prefix': prefix,
      'secretRef': pulumi.Input.mapInputValue<SecretEnvSourceResponse, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
    };
  }

  factory EnvFromSourceResponse.fromMap(Map<String, dynamic> map) {
    return EnvFromSourceResponse(
      configMapRef: pulumi.Input.fromValue(ConfigMapEnvSourceResponse.fromMap((map['configMapRef']! as Map).cast<String, dynamic>())),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      secretRef: pulumi.Input.fromValue(SecretEnvSourceResponse.fromMap((map['secretRef']! as Map).cast<String, dynamic>())),
    );
  }
}
