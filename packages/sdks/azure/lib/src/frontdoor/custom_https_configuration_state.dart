// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_https_configuration_custom_https_configuration.dart';

/// Input properties used for looking up and filtering CustomHttpsConfiguration resources.
class CustomHttpsConfigurationState {
  /// A `customHttpsConfiguration` block as defined above.
  final pulumi.Input<CustomHttpsConfigurationCustomHttpsConfiguration>? customHttpsConfiguration;
  /// Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?
  final pulumi.Input<bool>? customHttpsProvisioningEnabled;
  /// The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? frontendEndpointId;

  /// Creates a new [CustomHttpsConfigurationState].
  /// [customHttpsConfiguration] A `customHttpsConfiguration` block as defined above.
  /// [customHttpsProvisioningEnabled] Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?
  /// [frontendEndpointId] The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created.
  const CustomHttpsConfigurationState({
    this.customHttpsConfiguration,
    this.customHttpsProvisioningEnabled,
    this.frontendEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHttpsConfiguration': ?pulumi.Input.mapOptionalInputValue<CustomHttpsConfigurationCustomHttpsConfiguration, Map<String, dynamic>>(customHttpsConfiguration, (value) => value.toMap()),
      'customHttpsProvisioningEnabled': ?customHttpsProvisioningEnabled,
      'frontendEndpointId': ?frontendEndpointId,
    };
  }

  factory CustomHttpsConfigurationState.fromMap(Map<String, dynamic> map) {
    return CustomHttpsConfigurationState(
      customHttpsConfiguration: (() { final guardedValue = map['customHttpsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomHttpsConfigurationCustomHttpsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customHttpsProvisioningEnabled: (() { final guardedValue = map['customHttpsProvisioningEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendEndpointId: (() { final guardedValue = map['frontendEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
