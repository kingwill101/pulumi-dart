// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'office365_policy_properties.dart';

/// {@template pulumi_network_virtual_appliance_site_args_doc}
/// The set of arguments for VirtualApplianceSite.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_appliance_site_args_doc}
class VirtualApplianceSiteArgs {
  /// Address Prefix.
  final pulumi.Input<String>? addressPrefix;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the virtual appliance site.
  final pulumi.Input<String>? name;
  /// The name of the Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// Office 365 Policy.
  final pulumi.Input<Office365PolicyProperties>? o365Policy;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the site.
  final pulumi.Input<String>? siteName;

  /// Creates a new [VirtualApplianceSiteArgs].
  /// [addressPrefix] Address Prefix.
  /// [id] Resource ID.
  /// [name] Name of the virtual appliance site.
  /// [networkVirtualApplianceName] The name of the Network Virtual Appliance.
  /// [o365Policy] Office 365 Policy.
  /// [resourceGroupName] The name of the resource group.
  /// [siteName] The name of the site.
  VirtualApplianceSiteArgs({
    this.addressPrefix,
    this.id,
    this.name,
    required this.networkVirtualApplianceName,
    this.o365Policy,
    required this.resourceGroupName,
    this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'id': ?id,
      'name': ?name,
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'o365Policy': ?pulumi.Input.mapOptionalInputValue<Office365PolicyProperties, Map<String, dynamic>>(o365Policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
    };
  }

  factory VirtualApplianceSiteArgs.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceSiteArgs(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkVirtualApplianceName: (map['networkVirtualApplianceName'] as String).input(),
      o365Policy: map['o365Policy'] == null ? null : (Office365PolicyProperties.fromMap((map['o365Policy']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: map['siteName'] == null ? null : (map['siteName']! as String).input(),
    );
  }
}

