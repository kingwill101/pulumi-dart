// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

/// The encryption settings for a configuration store.
class PropertiesEncryption {
  /// Key vault properties.
  final pulumi.Input<KeyVaultProperties>? keyVault;
  /// The state of onboarding, which only appears in the response.
  final pulumi.Input<String>? state;

  /// Creates a new [PropertiesEncryption].
  /// [keyVault] Key vault properties.
  /// [state] The state of onboarding, which only appears in the response.
  const PropertiesEncryption({
    this.keyVault,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory PropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return PropertiesEncryption(
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
