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
  final String? azureApiVersion;
  /// The set of bgp properties.
  final BgpSettingsResponse? bgpProperties;
  /// The device properties.
  final DevicePropertiesResponse? deviceProperties;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The ip-address for the vpn-site.
  final String? ipAddress;
  /// IsSecuritySite flag.
  final bool? isSecuritySite;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Office365 Policy.
  final O365PolicyPropertiesResponse? o365Policy;
  /// The provisioning state of the VPN site resource.
  final String? provisioningState;
  /// The key for vpn-site that can be used for connections.
  final String? siteKey;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
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
  const GetVpnSiteResult({
    this.addressSpace,
    this.azureApiVersion,
    this.bgpProperties,
    this.deviceProperties,
    this.etag,
    this.id,
    this.ipAddress,
    this.isSecuritySite,
    this.location,
    this.name,
    this.o365Policy,
    this.provisioningState,
    this.siteKey,
    this.tags,
    this.type,
    this.virtualWan,
    this.vpnSiteLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'bgpProperties': ?bgpProperties?.toMap(),
      'deviceProperties': ?deviceProperties?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'isSecuritySite': ?isSecuritySite,
      'location': ?location,
      'name': ?name,
      'o365Policy': ?o365Policy?.toMap(),
      'provisioningState': ?provisioningState,
      'siteKey': ?siteKey,
      'tags': ?tags,
      'type': ?type,
      'virtualWan': ?virtualWan?.toMap(),
      'vpnSiteLinks': ?(() { final guardedValue = vpnSiteLinks; if (guardedValue == null) return null; return pulumi.Input.encodeList<VpnSiteLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVpnSiteResult.fromMap(Map<String, dynamic> map) {
    return GetVpnSiteResult(
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpProperties: (() { final guardedValue = map['bgpProperties']; if (guardedValue == null) return null; return BgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deviceProperties: (() { final guardedValue = map['deviceProperties']; if (guardedValue == null) return null; return DevicePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSecuritySite: (() { final guardedValue = map['isSecuritySite']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      o365Policy: (() { final guardedValue = map['o365Policy']; if (guardedValue == null) return null; return O365PolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteKey: (() { final guardedValue = map['siteKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualWan: (() { final guardedValue = map['virtualWan']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vpnSiteLinks: (() { final guardedValue = map['vpnSiteLinks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnSiteLinkResponse>(guardedValue, (value) => VpnSiteLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
