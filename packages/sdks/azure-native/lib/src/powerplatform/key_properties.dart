// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Url and version of the KeyVault Secret
class KeyProperties {
  /// The identifier of the key vault key used to encrypt data.
  final pulumi.Input<String>? name;
  /// The version of the identity which will be used to access key vault.
  final pulumi.Input<String>? version;

  /// Creates a new [KeyProperties].
  /// [name] The identifier of the key vault key used to encrypt data.
  /// [version] The version of the identity which will be used to access key vault.
  const KeyProperties({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory KeyProperties.fromMap(Map<String, dynamic> map) {
    return KeyProperties(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

