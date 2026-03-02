// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_properties.dart';

/// Settings concerning key vault encryption for a configuration store.
class KeyVaultProperties {
  /// Uri of KeyVault
  final pulumi.Input<String>? id;
  /// Identity of the secret that includes name and version.
  final pulumi.Input<KeyProperties>? key;

  /// Creates a new [KeyVaultProperties].
  /// [id] Uri of KeyVault
  /// [key] Identity of the secret that includes name and version.
  KeyVaultProperties({
    this.id,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'key': ?pulumi.Input.mapOptionalInputValue<KeyProperties, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      key: map['key'] == null ? null : (KeyProperties.fromMap((map['key']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

