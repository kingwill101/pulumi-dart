// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_site_link.dart';
import 'vpn_site_o365_policy.dart';

/// {@template pulumi_network_vpn_site_vpn_site_args_doc}
/// The set of arguments for VpnSite.
/// {@endtemplate}
/// {@macro pulumi_network_vpn_site_vpn_site_args_doc}
class VpnSiteArgs {
  /// Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
  ///
  /// &gt; **Note:** The `addressCidrs` has to be set when the `link.bgp` isn't specified.
  final pulumi.Input<List<String>?>? addressCidrs;
  /// The model of the VPN device.
  final pulumi.Input<String?>? deviceModel;
  /// The name of the VPN device vendor.
  final pulumi.Input<String?>? deviceVendor;
  /// One or more `link` blocks as defined below.
  final pulumi.Input<List<VpnSiteLink>?>? links;
  /// The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String?>? name;
  /// An `o365Policy` block as defined below.
  final pulumi.Input<VpnSiteO365Policy?>? o365Policy;
  /// The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the VPN Site.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String> virtualWanId;

  /// Creates a new [VpnSiteArgs].
  /// [addressCidrs] Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
  /// [deviceModel] The model of the VPN device.
  /// [deviceVendor] The name of the VPN device vendor.
  /// [links] One or more `link` blocks as defined below.
  /// [location] The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  /// [name] The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created.
  /// [o365Policy] An `o365Policy` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  /// [tags] A mapping of tags which should be assigned to the VPN Site.
  /// [virtualWanId] The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created.
  const VpnSiteArgs({
    this.addressCidrs,
    this.deviceModel,
    this.deviceVendor,
    this.links,
    this.location,
    this.name,
    this.o365Policy,
    required this.resourceGroupName,
    this.tags,
    required this.virtualWanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressCidrs': ?addressCidrs,
      'deviceModel': ?deviceModel,
      'deviceVendor': ?deviceVendor,
      'links': ?pulumi.Input.mapOptionalInputValue<List<VpnSiteLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<VpnSiteLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'o365Policy': ?pulumi.Input.mapOptionalInputValue<VpnSiteO365Policy, Map<String, dynamic>>(o365Policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualWanId': virtualWanId,
    };
  }

  factory VpnSiteArgs.fromMap(Map<String, dynamic> map) {
    return VpnSiteArgs(
      addressCidrs: (() { final guardedValue = map['addressCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deviceModel: (() { final guardedValue = map['deviceModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceVendor: (() { final guardedValue = map['deviceVendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnSiteLink>(guardedValue, (value) => VpnSiteLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      o365Policy: (() { final guardedValue = map['o365Policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnSiteO365Policy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualWanId: pulumi.Input.fromValue(map['virtualWanId'] as String),
    );
  }
}
