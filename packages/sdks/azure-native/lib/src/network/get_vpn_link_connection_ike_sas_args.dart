// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_vpn_link_connection_ike_sas_args_doc}
/// Arguments for getVpnLinkConnectionIkeSas.
/// {@endtemplate}
/// {@macro pulumi_network_get_vpn_link_connection_ike_sas_args_doc}
class GetVpnLinkConnectionIkeSasArgs {
  /// The name of the vpn connection.
  final pulumi.Input<String> connectionName;
  /// The name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// The name of the vpn link connection.
  final pulumi.Input<String> linkConnectionName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVpnLinkConnectionIkeSasArgs].
  /// [connectionName] The name of the vpn connection.
  /// [gatewayName] The name of the gateway.
  /// [linkConnectionName] The name of the vpn link connection.
  /// [resourceGroupName] The name of the resource group.
  GetVpnLinkConnectionIkeSasArgs({
    required this.connectionName,
    required this.gatewayName,
    required this.linkConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'gatewayName': gatewayName,
      'linkConnectionName': linkConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVpnLinkConnectionIkeSasArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnLinkConnectionIkeSasArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      linkConnectionName: pulumi.Input.fromValue(map['linkConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

