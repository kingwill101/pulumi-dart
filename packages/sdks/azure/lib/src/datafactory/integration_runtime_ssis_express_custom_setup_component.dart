// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_ssis_express_custom_setup_component_key_vault_license.dart';

class IntegrationRuntimeSsisExpressCustomSetupComponent {
  /// A `key_vault_secret_reference` block as defined below.
  final pulumi.Input<
    IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense
  >?
  keyVaultLicense;

  /// The license used for the Component.
  final pulumi.Input<String>? license;

  /// The Component Name installed for the Azure-SSIS Integration Runtime.
  final pulumi.Input<String> name;

  /// Creates a new [IntegrationRuntimeSsisExpressCustomSetupComponent].
  /// [keyVaultLicense] A `key_vault_secret_reference` block as defined below.
  /// [license] The license used for the Component.
  /// [name] The Component Name installed for the Azure-SSIS Integration Runtime.
  IntegrationRuntimeSsisExpressCustomSetupComponent({
    this.keyVaultLicense,
    this.license,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultLicense':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense,
            Map<String, dynamic>
          >(keyVaultLicense, (value) => value.toMap()),
      'license': ?license,
      'name': name,
    };
  }

  factory IntegrationRuntimeSsisExpressCustomSetupComponent.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationRuntimeSsisExpressCustomSetupComponent(
      keyVaultLicense: (() {
        final guardedValue = map['keyVaultLicense'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      license: (() {
        final guardedValue = map['license'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
