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
  const VirtualApplianceSiteArgs({
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
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkVirtualApplianceName: pulumi.Input.fromValue(map['networkVirtualApplianceName'] as String),
      o365Policy: (() { final guardedValue = map['o365Policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Office365PolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
