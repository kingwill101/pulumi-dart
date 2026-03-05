// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_additional_variable_encryption_key_value.dart';
import 'connection_auth_config_additional_variable_secret_value.dart';

class ConnectionAuthConfigAdditionalVariable {
  /// Boolean Value of configVariable.
  final pulumi.Input<bool>? booleanValue;
  /// Encryption key value of configVariable.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigAdditionalVariableEncryptionKeyValue>? encryptionKeyValue;
  /// Integer Value of configVariable.
  final pulumi.Input<int>? integerValue;
  /// Key for the configVariable
  final pulumi.Input<String> key;
  /// Secret value of configVariable
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigAdditionalVariableSecretValue>? secretValue;
  /// String Value of configVariabley.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [ConnectionAuthConfigAdditionalVariable].
  /// [booleanValue] Boolean Value of configVariable.
  /// [encryptionKeyValue] Encryption key value of configVariable.
  /// [integerValue] Integer Value of configVariable.
  /// [key] Key for the configVariable
  /// [secretValue] Secret value of configVariable
  /// [stringValue] String Value of configVariabley.
  ConnectionAuthConfigAdditionalVariable({
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
      'encryptionKeyValue': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigAdditionalVariableEncryptionKeyValue, Map<String, dynamic>>(encryptionKeyValue, (value) => value.toMap()),
      'integerValue': ?integerValue,
      'key': key,
      'secretValue': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigAdditionalVariableSecretValue, Map<String, dynamic>>(secretValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory ConnectionAuthConfigAdditionalVariable.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigAdditionalVariable(
      booleanValue: (() { final guardedValue = map['booleanValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionKeyValue: (() { final guardedValue = map['encryptionKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigAdditionalVariableEncryptionKeyValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integerValue: (() { final guardedValue = map['integerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      secretValue: (() { final guardedValue = map['secretValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigAdditionalVariableSecretValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

