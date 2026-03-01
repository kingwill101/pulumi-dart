// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key.dart';
import 'secret.dart';

/// ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.
class ConfigVariable {
  /// Value is a bool.
  final bool? boolValue;
  /// Value is a Encryption Key.
  final EncryptionKey? encryptionKeyValue;
  /// Value is an integer
  final String? intValue;
  /// Key of the config variable.
  final String? key;
  /// Value is a secret.
  final Secret? secretValue;
  /// Value is a string.
  final String? stringValue;

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
      'encryptionKeyValue': ?encryptionKeyValue == null ? null : encryptionKeyValue!.toMap(),
      'intValue': ?intValue,
      'key': ?key,
      'secretValue': ?secretValue == null ? null : secretValue!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory ConfigVariable.fromMap(Map<String, dynamic> map) {
    return ConfigVariable(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      encryptionKeyValue: map['encryptionKeyValue'] == null ? null : EncryptionKey.fromMap((map['encryptionKeyValue'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      secretValue: map['secretValue'] == null ? null : Secret.fromMap((map['secretValue'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}

