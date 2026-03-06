// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kmsenv_map.dart';

/// An Environment describes a collection of environment variables to set when executing Tasks.
class Environment {
  /// An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  final pulumi.Input<KMSEnvMap>? encryptedVariables;
  /// A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  final pulumi.Input<Map<String, String>>? secretVariables;
  /// A map of environment variable names to values.
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [Environment].
  /// [encryptedVariables] An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  /// [secretVariables] A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  /// [variables] A map of environment variable names to values.
  const Environment({
    this.encryptedVariables,
    this.secretVariables,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedVariables': ?pulumi.Input.mapOptionalInputValue<KMSEnvMap, Map<String, dynamic>>(encryptedVariables, (value) => value.toMap()),
      'secretVariables': ?secretVariables,
      'variables': ?variables,
    };
  }

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      encryptedVariables: (() { final guardedValue = map['encryptedVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KMSEnvMap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretVariables: (() { final guardedValue = map['secretVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

