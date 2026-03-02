// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_security_admin_configuration_args_doc}
/// The set of arguments for SecurityAdminConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_security_admin_configuration_args_doc}
class SecurityAdminConfigurationArgs {
  /// Enum list of network intent policy based services.
  final pulumi.Input<List<String>>? applyOnNetworkIntentPolicyBasedServices;
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String>? configurationName;
  /// A description of the security configuration.
  final pulumi.Input<String>? description;
  /// Determine update behavior for changes to network groups referenced within the rules in this configuration.
  final pulumi.Input<String>? networkGroupAddressSpaceAggregationOption;
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
  SecurityAdminConfigurationArgs({
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
      applyOnNetworkIntentPolicyBasedServices: map['applyOnNetworkIntentPolicyBasedServices'] == null ? null : ((map['applyOnNetworkIntentPolicyBasedServices'] as List).cast<String>()).input(),
      configurationName: map['configurationName'] == null ? null : (map['configurationName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      networkGroupAddressSpaceAggregationOption: map['networkGroupAddressSpaceAggregationOption'] == null ? null : (map['networkGroupAddressSpaceAggregationOption'] as String).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

