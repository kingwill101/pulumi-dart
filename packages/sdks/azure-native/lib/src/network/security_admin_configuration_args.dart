// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_security_admin_configuration_args_doc}
/// The set of arguments for SecurityAdminConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_security_admin_configuration_args_doc}
class SecurityAdminConfigurationArgs {
  /// Enum list of network intent policy based services.
  final pulumi.Input<List<dynamic>?>? applyOnNetworkIntentPolicyBasedServices;
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String?>? configurationName;
  /// A description of the security configuration.
  final pulumi.Input<String?>? description;
  /// Determine update behavior for changes to network groups referenced within the rules in this configuration.
  final pulumi.Input<dynamic>? networkGroupAddressSpaceAggregationOption;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [SecurityAdminConfigurationArgs].
  /// [applyOnNetworkIntentPolicyBasedServices] Enum list of network intent policy based services.
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description of the security configuration.
  /// [networkGroupAddressSpaceAggregationOption] Determine update behavior for changes to network groups referenced within the rules in this configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  const SecurityAdminConfigurationArgs({
    this.applyOnNetworkIntentPolicyBasedServices,
    this.configurationName,
    this.description,
    this.networkGroupAddressSpaceAggregationOption,
    required this.networkManagerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnNetworkIntentPolicyBasedServices': ?applyOnNetworkIntentPolicyBasedServices,
      'configurationName': ?configurationName,
      'description': ?description,
      'networkGroupAddressSpaceAggregationOption': ?networkGroupAddressSpaceAggregationOption,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory SecurityAdminConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityAdminConfigurationArgs(
      applyOnNetworkIntentPolicyBasedServices: (() { final guardedValue = map['applyOnNetworkIntentPolicyBasedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      configurationName: (() { final guardedValue = map['configurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkGroupAddressSpaceAggregationOption: (() { final guardedValue = map['networkGroupAddressSpaceAggregationOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
