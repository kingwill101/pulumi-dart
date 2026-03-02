// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'bgp_settings_response.dart';
import 'device_properties_response.dart';
import 'o365_policy_properties_response.dart';
import 'sub_resource_response.dart';
import 'vpn_site_link_response.dart';

/// Result data returned by getVpnSite.
class GetVpnSiteResult {
  /// The AddressSpace that contains an array of IP address ranges.
  final AddressSpaceResponse? addressSpace;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The set of bgp properties.
  final BgpSettingsResponse? bgpProperties;
  /// The device properties.
  final DevicePropertiesResponse? deviceProperties;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The ip-address for the vpn-site.
  final String? ipAddress;
  /// IsSecuritySite flag.
  final bool? isSecuritySite;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// Office365 Policy.
  final O365PolicyPropertiesResponse? o365Policy;
  /// The provisioning state of the VPN site resource.
  final String provisioningState;
  /// The key for vpn-site that can be used for connections.
  final String? siteKey;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// The VirtualWAN to which the vpnSite belongs.
  final SubResourceResponse? virtualWan;
  /// List of all vpn site links.
  final List<VpnSiteLinkResponse>? vpnSiteLinks;

  /// Creates a new [GetVpnSiteResult].
  /// [addressSpace] The AddressSpace that contains an array of IP address ranges.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bgpProperties] The set of bgp properties.
  /// [deviceProperties] The device properties.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipAddress] The ip-address for the vpn-site.
  /// [isSecuritySite] IsSecuritySite flag.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [o365Policy] Office365 Policy.
  /// [provisioningState] The provisioning state of the VPN site resource.
  /// [siteKey] The key for vpn-site that can be used for connections.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualWan] The VirtualWAN to which the vpnSite belongs.
  /// [vpnSiteLinks] List of all vpn site links.
  GetVpnSiteResult({
    this.addressSpace,
    required this.azureApiVersion,
    this.bgpProperties,
    this.deviceProperties,
    required this.etag,
    this.id,
    this.ipAddress,
    this.isSecuritySite,
    required this.location,
    required this.name,
    this.o365Policy,
    required this.provisioningState,
    this.siteKey,
    this.tags,
    required this.type,
    this.virtualWan,
    this.vpnSiteLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace == null ? null : addressSpace!.toMap(),
      'azureApiVersion': azureApiVersion,
      'bgpProperties': ?bgpProperties == null ? null : bgpProperties!.toMap(),
      'deviceProperties': ?deviceProperties == null ? null : deviceProperties!.toMap(),
      'etag': etag,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'isSecuritySite': ?isSecuritySite,
      'location': location,
      'name': name,
      'o365Policy': ?o365Policy == null ? null : o365Policy!.toMap(),
      'provisioningState': provisioningState,
      'siteKey': ?siteKey,
      'tags': ?tags,
      'type': type,
      'virtualWan': ?virtualWan == null ? null : virtualWan!.toMap(),
      'vpnSiteLinks': ?vpnSiteLinks == null ? null : pulumi.Input.encodeList<VpnSiteLinkResponse, Map<String, dynamic>>(vpnSiteLinks!, (value) => value.toMap()),
    };
  }

  factory GetVpnSiteResult.fromMap(Map<String, dynamic> map) {
    return GetVpnSiteResult(
      addressSpace: map['addressSpace'] == null ? null : AddressSpaceResponse.fromMap((map['addressSpace']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      bgpProperties: map['bgpProperties'] == null ? null : BgpSettingsResponse.fromMap((map['bgpProperties']! as Map).cast<String, dynamic>()),
      deviceProperties: map['deviceProperties'] == null ? null : DevicePropertiesResponse.fromMap((map['deviceProperties']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id']! as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress']! as String,
      isSecuritySite: map['isSecuritySite'] == null ? null : map['isSecuritySite']! as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      o365Policy: map['o365Policy'] == null ? null : O365PolicyPropertiesResponse.fromMap((map['o365Policy']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      siteKey: map['siteKey'] == null ? null : map['siteKey']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualWan: map['virtualWan'] == null ? null : SubResourceResponse.fromMap((map['virtualWan']! as Map).cast<String, dynamic>()),
      vpnSiteLinks: map['vpnSiteLinks'] == null ? null : pulumi.Input.decodeList<VpnSiteLinkResponse>(map['vpnSiteLinks']!, (value) => VpnSiteLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

