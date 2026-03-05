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
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bgpProperties: (() { final guardedValue = map['bgpProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deviceProperties: (() { final guardedValue = map['deviceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSecuritySite: (() { final guardedValue = map['isSecuritySite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      o365Policy: (() { final guardedValue = map['o365Policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(O365PolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteKey: (() { final guardedValue = map['siteKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualWan: (() { final guardedValue = map['virtualWan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnSiteLinks: (() { final guardedValue = map['vpnSiteLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnSiteLink>(guardedValue, (value) => VpnSiteLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnSiteName: (() { final guardedValue = map['vpnSiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

