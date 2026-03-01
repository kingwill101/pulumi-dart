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
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> gatewayName,
    required pulumi.Output<String> linkConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      linkConnectionName = pulumi.Input.asInput<String>(linkConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      linkConnectionName: pulumi.Output.create<String>(map['linkConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

