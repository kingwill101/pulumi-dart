// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'bgp_settings.dart';
import 'device_properties.dart';
import 'o365_policy_properties.dart';
import 'sub_resource.dart';
import 'vpn_site_link.dart';

/// {@template pulumi_network_vpn_site_args_doc}
/// The set of arguments for VpnSite.
/// {@endtemplate}
/// {@macro pulumi_network_vpn_site_args_doc}
class VpnSiteArgs {
  /// The AddressSpace that contains an array of IP address ranges.
  final pulumi.Input<AddressSpace>? addressSpace;
  /// The set of bgp properties.
  final pulumi.Input<BgpSettings>? bgpProperties;
  /// The device properties.
  final pulumi.Input<DeviceProperties>? deviceProperties;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The ip-address for the vpn-site.
  final pulumi.Input<String>? ipAddress;
  /// IsSecuritySite flag.
  final pulumi.Input<bool>? isSecuritySite;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Office365 Policy.
  final pulumi.Input<O365PolicyProperties>? o365Policy;
  /// The resource group name of the VpnSite.
  final pulumi.Input<String> resourceGroupName;
  /// The key for vpn-site that can be used for connections.
  final pulumi.Input<String>? siteKey;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VirtualWAN to which the vpnSite belongs.
  final pulumi.Input<SubResource>? virtualWan;
  /// List of all vpn site links.
  final pulumi.Input<List<VpnSiteLink>>? vpnSiteLinks;
  /// The name of the VpnSite being created or updated.
  final pulumi.Input<String>? vpnSiteName;

  /// Creates a new [VpnSiteArgs].
  /// [addressSpace] The AddressSpace that contains an array of IP address ranges.
  /// [bgpProperties] The set of bgp properties.
  /// [deviceProperties] The device properties.
  /// [id] Resource ID.
  /// [ipAddress] The ip-address for the vpn-site.
  /// [isSecuritySite] IsSecuritySite flag.
  /// [location] Resource location.
  /// [o365Policy] Office365 Policy.
  /// [resourceGroupName] The resource group name of the VpnSite.
  /// [siteKey] The key for vpn-site that can be used for connections.
  /// [tags] Resource tags.
  /// [virtualWan] The VirtualWAN to which the vpnSite belongs.
  /// [vpnSiteLinks] List of all vpn site links.
  /// [vpnSiteName] The name of the VpnSite being created or updated.
  VpnSiteArgs({
    this.addressSpace,
    this.bgpProperties,
    this.deviceProperties,
    this.id,
    this.ipAddress,
    this.isSecuritySite,
    this.location,
    this.o365Policy,
    required this.resourceGroupName,
    this.siteKey,
    this.tags,
    this.virtualWan,
    this.vpnSiteLinks,
    this.vpnSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(addressSpace, (value) => value.toMap()),
      'bgpProperties': ?pulumi.Input.mapOptionalInputValue<BgpSettings, Map<String, dynamic>>(bgpProperties, (value) => value.toMap()),
      'deviceProperties': ?pulumi.Input.mapOptionalInputValue<DeviceProperties, Map<String, dynamic>>(deviceProperties, (value) => value.toMap()),
      'id': ?id,
      'ipAddress': ?ipAddress,
      'isSecuritySite': ?isSecuritySite,
      'location': ?location,
      'o365Policy': ?pulumi.Input.mapOptionalInputValue<O365PolicyProperties, Map<String, dynamic>>(o365Policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteKey': ?siteKey,
      'tags': ?tags,
      'virtualWan': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualWan, (value) => value.toMap()),
      'vpnSiteLinks': ?pulumi.Input.mapOptionalInputValue<List<VpnSiteLink>, List<Map<String, dynamic>>>(vpnSiteLinks, (value) => pulumi.Input.encodeList<VpnSiteLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnSiteName': ?vpnSiteName,
    };
  }

  factory VpnSiteArgs.fromMap(Map<String, dynamic> map) {
    return VpnSiteArgs(
      addressSpace: map['addressSpace'] == null ? null : (AddressSpace.fromMap((map['addressSpace'] as Map).cast<String, dynamic>())).input(),
      bgpProperties: map['bgpProperties'] == null ? null : (BgpSettings.fromMap((map['bgpProperties'] as Map).cast<String, dynamic>())).input(),
      deviceProperties: map['deviceProperties'] == null ? null : (DeviceProperties.fromMap((map['deviceProperties'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      isSecuritySite: map['isSecuritySite'] == null ? null : (map['isSecuritySite'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      o365Policy: map['o365Policy'] == null ? null : (O365PolicyProperties.fromMap((map['o365Policy'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteKey: map['siteKey'] == null ? null : (map['siteKey'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualWan: map['virtualWan'] == null ? null : (SubResource.fromMap((map['virtualWan'] as Map).cast<String, dynamic>())).input(),
      vpnSiteLinks: map['vpnSiteLinks'] == null ? null : (pulumi.Input.decodeList<VpnSiteLink>(map['vpnSiteLinks'], (value) => VpnSiteLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnSiteName: map['vpnSiteName'] == null ? null : (map['vpnSiteName'] as String).input(),
    );
  }
}

