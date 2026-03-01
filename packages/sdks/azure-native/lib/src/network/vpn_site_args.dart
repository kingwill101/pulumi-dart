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
    pulumi.Output<AddressSpace>? addressSpace,
    pulumi.Output<BgpSettings>? bgpProperties,
    pulumi.Output<DeviceProperties>? deviceProperties,
    pulumi.Output<String>? id,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<bool>? isSecuritySite,
    pulumi.Output<String>? location,
    pulumi.Output<O365PolicyProperties>? o365Policy,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? siteKey,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SubResource>? virtualWan,
    pulumi.Output<List<VpnSiteLink>>? vpnSiteLinks,
    pulumi.Output<String>? vpnSiteName,
  }) :
      addressSpace = pulumi.Input.asOptionalInput<AddressSpace>(addressSpace),
      bgpProperties = pulumi.Input.asOptionalInput<BgpSettings>(bgpProperties),
      deviceProperties = pulumi.Input.asOptionalInput<DeviceProperties>(deviceProperties),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      isSecuritySite = pulumi.Input.asOptionalInput<bool>(isSecuritySite),
      location = pulumi.Input.asOptionalInput<String>(location),
      o365Policy = pulumi.Input.asOptionalInput<O365PolicyProperties>(o365Policy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteKey = pulumi.Input.asOptionalInput<String>(siteKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualWan = pulumi.Input.asOptionalInput<SubResource>(virtualWan),
      vpnSiteLinks = pulumi.Input.asOptionalInput<List<VpnSiteLink>>(vpnSiteLinks),
      vpnSiteName = pulumi.Input.asOptionalInput<String>(vpnSiteName);

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
      addressSpace: map['addressSpace'] == null ? null : pulumi.Output.create<AddressSpace>(AddressSpace.fromMap((map['addressSpace'] as Map).cast<String, dynamic>())),
      bgpProperties: map['bgpProperties'] == null ? null : pulumi.Output.create<BgpSettings>(BgpSettings.fromMap((map['bgpProperties'] as Map).cast<String, dynamic>())),
      deviceProperties: map['deviceProperties'] == null ? null : pulumi.Output.create<DeviceProperties>(DeviceProperties.fromMap((map['deviceProperties'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      isSecuritySite: map['isSecuritySite'] == null ? null : pulumi.Output.create<bool>(map['isSecuritySite'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      o365Policy: map['o365Policy'] == null ? null : pulumi.Output.create<O365PolicyProperties>(O365PolicyProperties.fromMap((map['o365Policy'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteKey: map['siteKey'] == null ? null : pulumi.Output.create<String>(map['siteKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualWan: map['virtualWan'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['virtualWan'] as Map).cast<String, dynamic>())),
      vpnSiteLinks: map['vpnSiteLinks'] == null ? null : pulumi.Output.create<List<VpnSiteLink>>(pulumi.Input.decodeList<VpnSiteLink>(map['vpnSiteLinks'], (value) => VpnSiteLink.fromMap((value as Map).cast<String, dynamic>()))),
      vpnSiteName: map['vpnSiteName'] == null ? null : pulumi.Output.create<String>(map['vpnSiteName'] as String),
    );
  }
}

