// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_parameter_reference.dart';

/// The value or how to get a value for an extension config property.
class DeploymentExtensionConfigItem {
  /// The key vault reference of the config item.
  final pulumi.Input<KeyVaultParameterReference>? keyVaultReference;
  /// The value of the config item. The type is determined by the extension config schema.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [DeploymentExtensionConfigItem].
  /// [keyVaultReference] The key vault reference of the config item.
  /// [value] The value of the config item. The type is determined by the extension config schema.
  const DeploymentExtensionConfigItem({
    this.keyVaultReference,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultReference': ?pulumi.Input.mapOptionalInputValue<KeyVaultParameterReference, Map<String, dynamic>>(keyVaultReference, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory DeploymentExtensionConfigItem.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionConfigItem(
      keyVaultReference: (() { final guardedValue = map['keyVaultReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultParameterReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
