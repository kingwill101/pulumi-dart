// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_ip_configuration_args_doc}
/// Arguments for getVirtualHubIpConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_ip_configuration_args_doc}
class GetVirtualHubIpConfigurationArgs {
  /// The name of the ipconfig.
  final pulumi.Input<String> ipConfigName;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetVirtualHubIpConfigurationArgs].
  /// [ipConfigName] The name of the ipconfig.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [virtualHubName] The name of the VirtualHub.
  GetVirtualHubIpConfigurationArgs({
    required this.ipConfigName,
    required this.resourceGroupName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigName': ipConfigName,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubIpConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubIpConfigurationArgs(
      ipConfigName: (map['ipConfigName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualHubName: (map['virtualHubName'] as String).input(),
    );
  }
}

