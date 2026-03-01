// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_site_link.dart';
import 'vpn_site_o365_policy.dart';

/// Input properties used for looking up and filtering VpnSite resources.
class VpnSiteState {
  /// Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
  ///
  /// > **Note:** The `address_cidrs` has to be set when the `link.bgp` isn't specified.
  final pulumi.Input<List<String>>? addressCidrs;
  /// The model of the VPN device.
  final pulumi.Input<String>? deviceModel;
  /// The name of the VPN device vendor.
  final pulumi.Input<String>? deviceVendor;
  /// One or more `link` blocks as defined below.
  final pulumi.Input<List<VpnSiteLink>>? links;
  /// The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String>? name;
  /// An `o365_policy` block as defined below.
  final pulumi.Input<VpnSiteO365Policy>? o365Policy;
  /// The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the VPN Site.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created.
  final pulumi.Input<String>? virtualWanId;

  /// Creates a new [VpnSiteState].
  /// [addressCidrs] Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
  /// [deviceModel] The model of the VPN device.
  /// [deviceVendor] The name of the VPN device vendor.
  /// [links] One or more `link` blocks as defined below.
  /// [location] The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  /// [name] The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created.
  /// [o365Policy] An `o365_policy` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  /// [tags] A mapping of tags which should be assigned to the VPN Site.
  /// [virtualWanId] The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created.
  VpnSiteState({
    pulumi.Output<List<String>>? addressCidrs,
    pulumi.Output<String>? deviceModel,
    pulumi.Output<String>? deviceVendor,
    pulumi.Output<List<VpnSiteLink>>? links,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<VpnSiteO365Policy>? o365Policy,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualWanId,
  }) :
      addressCidrs = pulumi.Input.asOptionalInput<List<String>>(addressCidrs),
      deviceModel = pulumi.Input.asOptionalInput<String>(deviceModel),
      deviceVendor = pulumi.Input.asOptionalInput<String>(deviceVendor),
      links = pulumi.Input.asOptionalInput<List<VpnSiteLink>>(links),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      o365Policy = pulumi.Input.asOptionalInput<VpnSiteO365Policy>(o365Policy),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualWanId = pulumi.Input.asOptionalInput<String>(virtualWanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressCidrs': ?addressCidrs,
      'deviceModel': ?deviceModel,
      'deviceVendor': ?deviceVendor,
      'links': ?pulumi.Input.mapOptionalInputValue<List<VpnSiteLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<VpnSiteLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'o365Policy': ?pulumi.Input.mapOptionalInputValue<VpnSiteO365Policy, Map<String, dynamic>>(o365Policy, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualWanId': ?virtualWanId,
    };
  }

  factory VpnSiteState.fromMap(Map<String, dynamic> map) {
    return VpnSiteState(
      addressCidrs: map['addressCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['addressCidrs'] as List).cast<String>()),
      deviceModel: map['deviceModel'] == null ? null : pulumi.Output.create<String>(map['deviceModel'] as String),
      deviceVendor: map['deviceVendor'] == null ? null : pulumi.Output.create<String>(map['deviceVendor'] as String),
      links: map['links'] == null ? null : pulumi.Output.create<List<VpnSiteLink>>(pulumi.Input.decodeList<VpnSiteLink>(map['links'], (value) => VpnSiteLink.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      o365Policy: map['o365Policy'] == null ? null : pulumi.Output.create<VpnSiteO365Policy>(VpnSiteO365Policy.fromMap((map['o365Policy'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualWanId: map['virtualWanId'] == null ? null : pulumi.Output.create<String>(map['virtualWanId'] as String),
    );
  }
}

