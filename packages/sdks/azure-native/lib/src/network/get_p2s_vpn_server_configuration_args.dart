// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_p2s_vpn_server_configuration_args_doc}
/// Arguments for getP2sVpnServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_p2s_vpn_server_configuration_args_doc}
class GetP2sVpnServerConfigurationArgs {
  /// The name of the P2SVpnServerConfiguration.
  final pulumi.Input<String> p2SVpnServerConfigurationName;
  /// The resource group name of the P2SVpnServerConfiguration.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualWan.
  final pulumi.Input<String> virtualWanName;

  /// Creates a new [GetP2sVpnServerConfigurationArgs].
  /// [p2SVpnServerConfigurationName] The name of the P2SVpnServerConfiguration.
  /// [resourceGroupName] The resource group name of the P2SVpnServerConfiguration.
  /// [virtualWanName] The name of the VirtualWan.
  GetP2sVpnServerConfigurationArgs({
    required pulumi.Output<String> p2SVpnServerConfigurationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualWanName,
  }) :
      p2SVpnServerConfigurationName = pulumi.Input.asInput<String>(p2SVpnServerConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualWanName = pulumi.Input.asInput<String>(virtualWanName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'p2SVpnServerConfigurationName': p2SVpnServerConfigurationName,
      'resourceGroupName': resourceGroupName,
      'virtualWanName': virtualWanName,
    };
  }

  factory GetP2sVpnServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetP2sVpnServerConfigurationArgs(
      p2SVpnServerConfigurationName: pulumi.Output.create<String>(map['p2SVpnServerConfigurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualWanName: pulumi.Output.create<String>(map['virtualWanName'] as String),
    );
  }
}

