// ignore_for_file: unused_element, unnecessary_cast

import 'key_properties_response.dart';

/// Settings concerning key vault encryption for a configuration store.
class KeyVaultPropertiesResponse {
  /// Uri of KeyVault
  final String? id;
  /// Identity of the secret that includes name and version.
  final KeyPropertiesResponse? key;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [id] Uri of KeyVault
  /// [key] Identity of the secret that includes name and version.
  KeyVaultPropertiesResponse({
    this.id,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'key': ?key == null ? null : key!.toMap(),
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      id: map['id'] == null ? null : map['id'] as String,
      key: map['key'] == null ? null : KeyPropertiesResponse.fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}

