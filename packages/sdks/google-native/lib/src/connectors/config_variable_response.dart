// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_response.dart';
import 'secret_response.dart';

/// ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.
class ConfigVariableResponse {
  /// Value is a bool.
  final pulumi.Input<bool> boolValue;
  /// Value is a Encryption Key.
  final pulumi.Input<EncryptionKeyResponse> encryptionKeyValue;
  /// Value is an integer
  final pulumi.Input<String> intValue;
  /// Key of the config variable.
  final pulumi.Input<String> key;
  /// Value is a secret.
  final pulumi.Input<SecretResponse> secretValue;
  /// Value is a string.
  final pulumi.Input<String> stringValue;

  /// Creates a new [ConfigVariableResponse].
  /// [boolValue] Value is a bool.
  /// [encryptionKeyValue] Value is a Encryption Key.
  /// [intValue] Value is an integer
  /// [key] Key of the config variable.
  /// [secretValue] Value is a secret.
  /// [stringValue] Value is a string.
  ConfigVariableResponse({
    required this.boolValue,
    required this.encryptionKeyValue,
    required this.intValue,
    required this.key,
    required this.secretValue,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': boolValue,
      'encryptionKeyValue': pulumi.Input.mapInputValue<EncryptionKeyResponse, Map<String, dynamic>>(encryptionKeyValue, (value) => value.toMap()),
      'intValue': intValue,
      'key': key,
      'secretValue': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(secretValue, (value) => value.toMap()),
      'stringValue': stringValue,
    };
  }

  factory ConfigVariableResponse.fromMap(Map<String, dynamic> map) {
    return ConfigVariableResponse(
      boolValue: pulumi.Input.fromValue(map['boolValue'] as bool),
      encryptionKeyValue: pulumi.Input.fromValue(EncryptionKeyResponse.fromMap((map['encryptionKeyValue']! as Map).cast<String, dynamic>())),
      intValue: pulumi.Input.fromValue(map['intValue'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      secretValue: pulumi.Input.fromValue(SecretResponse.fromMap((map['secretValue']! as Map).cast<String, dynamic>())),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}

