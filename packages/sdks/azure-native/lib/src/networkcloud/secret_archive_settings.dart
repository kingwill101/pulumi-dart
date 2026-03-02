// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_selector.dart';

class SecretArchiveSettings {
  /// The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  final pulumi.Input<IdentitySelector>? associatedIdentity;
  /// The URI for the key vault used as the secret archive.
  final pulumi.Input<String>? vaultUri;

  /// Creates a new [SecretArchiveSettings].
  /// [associatedIdentity] The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  /// [vaultUri] The URI for the key vault used as the secret archive.
  SecretArchiveSettings({
    this.associatedIdentity,
    this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedIdentity': ?pulumi.Input.mapOptionalInputValue<IdentitySelector, Map<String, dynamic>>(associatedIdentity, (value) => value.toMap()),
      'vaultUri': ?vaultUri,
    };
  }

  factory SecretArchiveSettings.fromMap(Map<String, dynamic> map) {
    return SecretArchiveSettings(
      associatedIdentity: map['associatedIdentity'] == null ? null : (IdentitySelector.fromMap((map['associatedIdentity'] as Map).cast<String, dynamic>())).input(),
      vaultUri: map['vaultUri'] == null ? null : (map['vaultUri'] as String).input(),
    );
  }
}

