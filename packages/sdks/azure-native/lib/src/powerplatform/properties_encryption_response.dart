// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// The encryption settings for a configuration store.
class PropertiesEncryptionResponse {
  /// Key vault properties.
  final pulumi.Input<KeyVaultPropertiesResponse?>? keyVault;
  /// The state of onboarding, which only appears in the response.
  final pulumi.Input<String?>? state;

  /// Creates a new [PropertiesEncryptionResponse].
  /// [keyVault] Key vault properties.
  /// [state] The state of onboarding, which only appears in the response.
  const PropertiesEncryptionResponse({
    this.keyVault,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory PropertiesEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return PropertiesEncryptionResponse(
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
