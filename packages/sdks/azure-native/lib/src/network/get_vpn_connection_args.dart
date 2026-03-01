// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_vpn_connection_args_doc}
/// Arguments for getVpnConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_vpn_connection_args_doc}
class GetVpnConnectionArgs {
  /// The name of the vpn connection.
  final pulumi.Input<String> connectionName;
  /// The name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// The resource group name of the VpnGateway.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVpnConnectionArgs].
  /// [connectionName] The name of the vpn connection.
  /// [gatewayName] The name of the gateway.
  /// [resourceGroupName] The resource group name of the VpnGateway.
  GetVpnConnectionArgs({
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> gatewayName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionArgs(
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

