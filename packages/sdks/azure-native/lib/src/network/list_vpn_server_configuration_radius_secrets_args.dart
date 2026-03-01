// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_vpn_server_configuration_radius_secrets_args_doc}
/// Arguments for listVpnServerConfigurationRadiusSecrets.
/// {@endtemplate}
/// {@macro pulumi_network_list_vpn_server_configuration_radius_secrets_args_doc}
class ListVpnServerConfigurationRadiusSecretsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VpnServerConfiguration.
  final pulumi.Input<String> vpnServerConfigurationName;

  /// Creates a new [ListVpnServerConfigurationRadiusSecretsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vpnServerConfigurationName] The name of the VpnServerConfiguration.
  ListVpnServerConfigurationRadiusSecretsArgs({
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

  factory ListVpnServerConfigurationRadiusSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListVpnServerConfigurationRadiusSecretsArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vpnServerConfigurationName: pulumi.Output.create<String>(map['vpnServerConfigurationName'] as String),
    );
  }
}

