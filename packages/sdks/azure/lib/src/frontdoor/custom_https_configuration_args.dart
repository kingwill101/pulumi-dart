// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_https_configuration_custom_https_configuration.dart';

/// {@template pulumi_frontdoor_custom_https_configuration_custom_https_configuration_args_doc}
/// The set of arguments for CustomHttpsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_custom_https_configuration_custom_https_configuration_args_doc}
class CustomHttpsConfigurationArgs {
  /// A `custom_https_configuration` block as defined above.
  final pulumi.Input<CustomHttpsConfigurationCustomHttpsConfiguration>? customHttpsConfiguration;
  /// Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?
  final pulumi.Input<bool> customHttpsProvisioningEnabled;
  /// The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created.
  final pulumi.Input<String> frontendEndpointId;

  /// Creates a new [CustomHttpsConfigurationArgs].
  /// [customHttpsConfiguration] A `custom_https_configuration` block as defined above.
  /// [customHttpsProvisioningEnabled] Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?
  /// [frontendEndpointId] The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created.
  CustomHttpsConfigurationArgs({
    this.customHttpsConfiguration,
    required this.customHttpsProvisioningEnabled,
    required this.frontendEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHttpsConfiguration': ?pulumi.Input.mapOptionalInputValue<CustomHttpsConfigurationCustomHttpsConfiguration, Map<String, dynamic>>(customHttpsConfiguration, (value) => value.toMap()),
      'customHttpsProvisioningEnabled': customHttpsProvisioningEnabled,
      'frontendEndpointId': frontendEndpointId,
    };
  }

  factory CustomHttpsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return CustomHttpsConfigurationArgs(
      customHttpsConfiguration: map['customHttpsConfiguration'] == null ? null : (CustomHttpsConfigurationCustomHttpsConfiguration.fromMap((map['customHttpsConfiguration']! as Map).cast<String, dynamic>())).input(),
      customHttpsProvisioningEnabled: (map['customHttpsProvisioningEnabled'] as bool).input(),
      frontendEndpointId: (map['frontendEndpointId'] as String).input(),
    );
  }
}

