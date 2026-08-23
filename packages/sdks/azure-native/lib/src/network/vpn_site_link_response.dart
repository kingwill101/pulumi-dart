// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_link_bgp_settings_response.dart';
import 'vpn_link_provider_properties_response.dart';

/// VpnSiteLink Resource.
class VpnSiteLinkResponse {
  /// The set of bgp properties.
  final pulumi.Input<VpnLinkBgpSettingsResponse>? bgpProperties;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// FQDN of vpn-site-link.
  final pulumi.Input<String>? fqdn;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The ip-address for the vpn-site-link.
  final pulumi.Input<String>? ipAddress;
  /// The link provider properties.
  final pulumi.Input<VpnLinkProviderPropertiesResponse>? linkProperties;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the VPN site link resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [VpnSiteLinkResponse].
  /// [bgpProperties] The set of bgp properties.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [fqdn] FQDN of vpn-site-link.
  /// [id] Resource ID.
  /// [ipAddress] The ip-address for the vpn-site-link.
  /// [linkProperties] The link provider properties.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VPN site link resource.
  /// [type] Resource type.
  const VpnSiteLinkResponse({
    this.bgpProperties,
    required this.etag,
    this.fqdn,
    this.id,
    this.ipAddress,
    this.linkProperties,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpProperties': ?pulumi.Input.mapOptionalInputValue<VpnLinkBgpSettingsResponse, Map<String, dynamic>>(bgpProperties, (value) => value.toMap()),
      'etag': etag,
      'fqdn': ?fqdn,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'linkProperties': ?pulumi.Input.mapOptionalInputValue<VpnLinkProviderPropertiesResponse, Map<String, dynamic>>(linkProperties, (value) => value.toMap()),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory VpnSiteLinkResponse.fromMap(Map<String, dynamic> map) {
    return VpnSiteLinkResponse(
      bgpProperties: (() { final guardedValue = map['bgpProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnLinkBgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkProperties: (() { final guardedValue = map['linkProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnLinkProviderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
