// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_ssl_config_additional_variable_encryption_key_value.dart';
import 'connection_ssl_config_additional_variable_secret_value.dart';

class ConnectionSslConfigAdditionalVariable {
  /// Boolean Value of configVariable.
  final pulumi.Input<bool>? booleanValue;
  /// Encryption key value of configVariable.
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfigAdditionalVariableEncryptionKeyValue>? encryptionKeyValue;
  /// Integer Value of configVariable.
  final pulumi.Input<int>? integerValue;
  /// Key for the configVariable
  final pulumi.Input<String> key;
  /// Secret value of configVariable
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfigAdditionalVariableSecretValue>? secretValue;
  /// String Value of configVariabley.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [ConnectionSslConfigAdditionalVariable].
  /// [booleanValue] Boolean Value of configVariable.
  /// [encryptionKeyValue] Encryption key value of configVariable.
  /// [integerValue] Integer Value of configVariable.
  /// [key] Key for the configVariable
  /// [secretValue] Secret value of configVariable
  /// [stringValue] String Value of configVariabley.
  ConnectionSslConfigAdditionalVariable({
    this.booleanValue,
    this.encryptionKeyValue,
    this.integerValue,
    required this.key,
    this.secretValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'encryptionKeyValue': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfigAdditionalVariableEncryptionKeyValue, Map<String, dynamic>>(encryptionKeyValue, (value) => value.toMap()),
      'integerValue': ?integerValue,
      'key': key,
      'secretValue': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfigAdditionalVariableSecretValue, Map<String, dynamic>>(secretValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory ConnectionSslConfigAdditionalVariable.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfigAdditionalVariable(
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue'] as bool).input(),
      encryptionKeyValue: map['encryptionKeyValue'] == null ? null : (ConnectionSslConfigAdditionalVariableEncryptionKeyValue.fromMap((map['encryptionKeyValue'] as Map).cast<String, dynamic>())).input(),
      integerValue: map['integerValue'] == null ? null : (map['integerValue'] as int).input(),
      key: (map['key'] as String).input(),
      secretValue: map['secretValue'] == null ? null : (ConnectionSslConfigAdditionalVariableSecretValue.fromMap((map['secretValue'] as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
    );
  }
}

