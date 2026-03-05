// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key.dart';
import 'secret.dart';

/// ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.
class ConfigVariable {
  /// Value is a bool.
  final pulumi.Input<bool>? boolValue;
  /// Value is a Encryption Key.
  final pulumi.Input<EncryptionKey>? encryptionKeyValue;
  /// Value is an integer
  final pulumi.Input<String>? intValue;
  /// Key of the config variable.
  final pulumi.Input<String>? key;
  /// Value is a secret.
  final pulumi.Input<Secret>? secretValue;
  /// Value is a string.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [ConfigVariable].
  /// [boolValue] Value is a bool.
  /// [encryptionKeyValue] Value is a Encryption Key.
  /// [intValue] Value is an integer
  /// [key] Key of the config variable.
  /// [secretValue] Value is a secret.
  /// [stringValue] Value is a string.
  ConfigVariable({
    this.boolValue,
    this.encryptionKeyValue,
    this.intValue,
    this.key,
    this.secretValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'encryptionKeyValue': ?pulumi.Input.mapOptionalInputValue<EncryptionKey, Map<String, dynamic>>(encryptionKeyValue, (value) => value.toMap()),
      'intValue': ?intValue,
      'key': ?key,
      'secretValue': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(secretValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory ConfigVariable.fromMap(Map<String, dynamic> map) {
    return ConfigVariable(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionKeyValue: (() { final guardedValue = map['encryptionKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intValue: (() { final guardedValue = map['intValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretValue: (() { final guardedValue = map['secretValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Secret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

