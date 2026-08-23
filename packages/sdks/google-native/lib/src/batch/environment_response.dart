// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kmsenv_map_response.dart';

/// An Environment describes a collection of environment variables to set when executing Tasks.
class EnvironmentResponse {
  /// An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  final pulumi.Input<KMSEnvMapResponse> encryptedVariables;
  /// A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  final pulumi.Input<Map<String, String>> secretVariables;
  /// A map of environment variable names to values.
  final pulumi.Input<Map<String, String>> variables;

  /// Creates a new [EnvironmentResponse].
  /// [encryptedVariables] An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  /// [secretVariables] A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  /// [variables] A map of environment variable names to values.
  const EnvironmentResponse({
    required this.encryptedVariables,
    required this.secretVariables,
    required this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedVariables': pulumi.Input.mapInputValue<KMSEnvMapResponse, Map<String, dynamic>>(encryptedVariables, (value) => value.toMap()),
      'secretVariables': secretVariables,
      'variables': variables,
    };
  }

  factory EnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse(
      encryptedVariables: pulumi.Input.fromValue(KMSEnvMapResponse.fromMap((map['encryptedVariables']! as Map).cast<String, dynamic>())),
      secretVariables: pulumi.Input.fromValue((map['secretVariables'] as Map).cast<String, String>()),
      variables: pulumi.Input.fromValue((map['variables'] as Map).cast<String, String>()),
    );
  }
}
