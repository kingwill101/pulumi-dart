// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_appliance_site_args_doc}
/// Arguments for getVirtualApplianceSite.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_appliance_site_args_doc}
class GetVirtualApplianceSiteArgs {
  /// The name of the Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the site.
  final pulumi.Input<String> siteName;

  /// Creates a new [GetVirtualApplianceSiteArgs].
  /// [networkVirtualApplianceName] The name of the Network Virtual Appliance.
  /// [resourceGroupName] The name of the resource group.
  /// [siteName] The name of the site.
  const GetVirtualApplianceSiteArgs({
    required this.networkVirtualApplianceName,
    required this.resourceGroupName,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetVirtualApplianceSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualApplianceSiteArgs(
      networkVirtualApplianceName: pulumi.Input.fromValue(map['networkVirtualApplianceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
    );
  }
}

