// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_properties_response.dart';

/// Settings concerning key vault encryption for a configuration store.
class KeyVaultPropertiesResponse {
  /// Uri of KeyVault
  final pulumi.Input<String?>? id;
  /// Identity of the secret that includes name and version.
  final pulumi.Input<KeyPropertiesResponse?>? key;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [id] Uri of KeyVault
  /// [key] Identity of the secret that includes name and version.
  const KeyVaultPropertiesResponse({
    this.id,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'key': ?pulumi.Input.mapOptionalInputValue<KeyPropertiesResponse, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
