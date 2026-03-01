// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_p2s_vpn_gateway_p2s_vpn_connection_health_detailed_args_doc}
/// Arguments for getP2sVpnGatewayP2sVpnConnectionHealthDetailed.
/// {@endtemplate}
/// {@macro pulumi_network_get_p2s_vpn_gateway_p2s_vpn_connection_health_detailed_args_doc}
class GetP2sVpnGatewayP2sVpnConnectionHealthDetailedArgs {
  /// The name of the P2SVpnGateway.
  final pulumi.Input<String> gatewayName;
  /// The sas-url to download the P2S Vpn connection health detail.
  final pulumi.Input<String>? outputBlobSasUrl;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The list of p2s vpn user names whose p2s vpn connection detailed health to retrieve for.
  final pulumi.Input<List<String>>? vpnUserNamesFilter;

  /// Creates a new [GetP2sVpnGatewayP2sVpnConnectionHealthDetailedArgs].
  /// [gatewayName] The name of the P2SVpnGateway.
  /// [outputBlobSasUrl] The sas-url to download the P2S Vpn connection health detail.
  /// [resourceGroupName] The name of the resource group.
  /// [vpnUserNamesFilter] The list of p2s vpn user names whose p2s vpn connection detailed health to retrieve for.
  GetP2sVpnGatewayP2sVpnConnectionHealthDetailedArgs({
    required pulumi.Output<String> gatewayName,
    pulumi.Output<String>? outputBlobSasUrl,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<String>>? vpnUserNamesFilter,
  }) :
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      outputBlobSasUrl = pulumi.Input.asOptionalInput<String>(outputBlobSasUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vpnUserNamesFilter = pulumi.Input.asOptionalInput<List<String>>(vpnUserNamesFilter);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'outputBlobSasUrl': ?outputBlobSasUrl,
      'resourceGroupName': resourceGroupName,
      'vpnUserNamesFilter': ?vpnUserNamesFilter,
    };
  }

  factory GetP2sVpnGatewayP2sVpnConnectionHealthDetailedArgs.fromMap(Map<String, dynamic> map) {
    return GetP2sVpnGatewayP2sVpnConnectionHealthDetailedArgs(
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      outputBlobSasUrl: map['outputBlobSasUrl'] == null ? null : pulumi.Output.create<String>(map['outputBlobSasUrl'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vpnUserNamesFilter: map['vpnUserNamesFilter'] == null ? null : pulumi.Output.create<List<String>>((map['vpnUserNamesFilter'] as List).cast<String>()),
    );
  }
}

