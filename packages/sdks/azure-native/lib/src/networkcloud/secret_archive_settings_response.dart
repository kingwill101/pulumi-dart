// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_selector_response.dart';

class SecretArchiveSettingsResponse {
  /// The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  final pulumi.Input<IdentitySelectorResponse>? associatedIdentity;
  /// The URI for the key vault used as the secret archive.
  final pulumi.Input<String>? vaultUri;

  /// Creates a new [SecretArchiveSettingsResponse].
  /// [associatedIdentity] The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  /// [vaultUri] The URI for the key vault used as the secret archive.
  SecretArchiveSettingsResponse({
    this.associatedIdentity,
    this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedIdentity': ?pulumi.Input.mapOptionalInputValue<IdentitySelectorResponse, Map<String, dynamic>>(associatedIdentity, (value) => value.toMap()),
      'vaultUri': ?vaultUri,
    };
  }

  factory SecretArchiveSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecretArchiveSettingsResponse(
      associatedIdentity: (() { final guardedValue = map['associatedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentitySelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vaultUri: (() { final guardedValue = map['vaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

