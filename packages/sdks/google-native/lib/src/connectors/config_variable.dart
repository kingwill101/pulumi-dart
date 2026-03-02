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
      boolValue: map['boolValue'] == null ? null : (map['boolValue'] as bool).input(),
      encryptionKeyValue: map['encryptionKeyValue'] == null ? null : (EncryptionKey.fromMap((map['encryptionKeyValue'] as Map).cast<String, dynamic>())).input(),
      intValue: map['intValue'] == null ? null : (map['intValue'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      secretValue: map['secretValue'] == null ? null : (Secret.fromMap((map['secretValue'] as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
    );
  }
}

