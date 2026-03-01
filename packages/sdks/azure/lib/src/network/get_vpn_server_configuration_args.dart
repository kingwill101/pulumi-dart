// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_vpn_server_configuration_get_vpn_server_configuration_args_doc}
/// Arguments for getVpnServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_vpn_server_configuration_get_vpn_server_configuration_args_doc}
class GetVpnServerConfigurationArgs {
  /// The Name of the VPN Server Configuration.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the VPN Server Configuration exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVpnServerConfigurationArgs].
  /// [name] The Name of the VPN Server Configuration.
  /// [resourceGroupName] The name of the Resource Group where the VPN Server Configuration exists.
  GetVpnServerConfigurationArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVpnServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

