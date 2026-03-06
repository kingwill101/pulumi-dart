// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_vpn_site_args_doc}
/// Arguments for getVpnSite.
/// {@endtemplate}
/// {@macro pulumi_network_get_vpn_site_args_doc}
class GetVpnSiteArgs {
  /// The resource group name of the VpnSite.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VpnSite being retrieved.
  final pulumi.Input<String> vpnSiteName;

  /// Creates a new [GetVpnSiteArgs].
  /// [resourceGroupName] The resource group name of the VpnSite.
  /// [vpnSiteName] The name of the VpnSite being retrieved.
  const GetVpnSiteArgs({
    required this.resourceGroupName,
    required this.vpnSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vpnSiteName': vpnSiteName,
    };
  }

  factory GetVpnSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnSiteArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vpnSiteName: pulumi.Input.fromValue(map['vpnSiteName'] as String),
    );
  }
}

