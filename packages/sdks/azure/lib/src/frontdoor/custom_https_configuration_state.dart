// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_https_configuration_custom_https_configuration.dart';

/// Input properties used for looking up and filtering CustomHttpsConfiguration resources.
class CustomHttpsConfigurationState {
  /// A `custom_https_configuration` block as defined above.
  final pulumi.Input<CustomHttpsConfigurationCustomHttpsConfiguration>? customHttpsConfiguration;
  /// Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?
  final pulumi.Input<bool>? customHttpsProvisioningEnabled;
  /// The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? frontendEndpointId;

  /// Creates a new [CustomHttpsConfigurationState].
  /// [customHttpsConfiguration] A `custom_https_configuration` block as defined above.
  /// [customHttpsProvisioningEnabled] Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?
  /// [frontendEndpointId] The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created.
  CustomHttpsConfigurationState({
    pulumi.Output<CustomHttpsConfigurationCustomHttpsConfiguration>? customHttpsConfiguration,
    pulumi.Output<bool>? customHttpsProvisioningEnabled,
    pulumi.Output<String>? frontendEndpointId,
  }) :
      customHttpsConfiguration = pulumi.Input.asOptionalInput<CustomHttpsConfigurationCustomHttpsConfiguration>(customHttpsConfiguration),
      customHttpsProvisioningEnabled = pulumi.Input.asOptionalInput<bool>(customHttpsProvisioningEnabled),
      frontendEndpointId = pulumi.Input.asOptionalInput<String>(frontendEndpointId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHttpsConfiguration': ?pulumi.Input.mapOptionalInputValue<CustomHttpsConfigurationCustomHttpsConfiguration, Map<String, dynamic>>(customHttpsConfiguration, (value) => value.toMap()),
      'customHttpsProvisioningEnabled': ?customHttpsProvisioningEnabled,
      'frontendEndpointId': ?frontendEndpointId,
    };
  }

  factory CustomHttpsConfigurationState.fromMap(Map<String, dynamic> map) {
    return CustomHttpsConfigurationState(
      customHttpsConfiguration: map['customHttpsConfiguration'] == null ? null : pulumi.Output.create<CustomHttpsConfigurationCustomHttpsConfiguration>(CustomHttpsConfigurationCustomHttpsConfiguration.fromMap((map['customHttpsConfiguration'] as Map).cast<String, dynamic>())),
      customHttpsProvisioningEnabled: map['customHttpsProvisioningEnabled'] == null ? null : pulumi.Output.create<bool>(map['customHttpsProvisioningEnabled'] as bool),
      frontendEndpointId: map['frontendEndpointId'] == null ? null : pulumi.Output.create<String>(map['frontendEndpointId'] as String),
    );
  }
}

