// ignore_for_file: unused_element, unnecessary_cast

import 'identity_selector_response.dart';

class SecretArchiveSettingsResponse {
  /// The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  final IdentitySelectorResponse? associatedIdentity;
  /// The URI for the key vault used as the secret archive.
  final String? vaultUri;

  /// Creates a new [SecretArchiveSettingsResponse].
  /// [associatedIdentity] The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  /// [vaultUri] The URI for the key vault used as the secret archive.
  SecretArchiveSettingsResponse({
    this.associatedIdentity,
    this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedIdentity': ?associatedIdentity == null ? null : associatedIdentity!.toMap(),
      'vaultUri': ?vaultUri,
    };
  }

  factory SecretArchiveSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecretArchiveSettingsResponse(
      associatedIdentity: map['associatedIdentity'] == null ? null : IdentitySelectorResponse.fromMap((map['associatedIdentity'] as Map).cast<String, dynamic>()),
      vaultUri: map['vaultUri'] == null ? null : map['vaultUri'] as String,
    );
  }
}

