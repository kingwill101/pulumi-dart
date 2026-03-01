// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_vpn_server_configuration_args_doc}
/// Arguments for getVpnServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_vpn_server_configuration_args_doc}
class GetVpnServerConfigurationArgs {
  /// The resource group name of the VpnServerConfiguration.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VpnServerConfiguration being retrieved.
  final pulumi.Input<String> vpnServerConfigurationName;

  /// Creates a new [GetVpnServerConfigurationArgs].
  /// [resourceGroupName] The resource group name of the VpnServerConfiguration.
  /// [vpnServerConfigurationName] The name of the VpnServerConfiguration being retrieved.
  GetVpnServerConfigurationArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vpnServerConfigurationName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vpnServerConfigurationName = pulumi.Input.asInput<String>(vpnServerConfigurationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vpnServerConfigurationName': vpnServerConfigurationName,
    };
  }

  factory GetVpnServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vpnServerConfigurationName: pulumi.Output.create<String>(map['vpnServerConfigurationName'] as String),
    );
  }
}

