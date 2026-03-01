// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_link_bgp_settings.dart';
import 'vpn_link_provider_properties.dart';

/// VpnSiteLink Resource.
class VpnSiteLink {
  /// The set of bgp properties.
  final VpnLinkBgpSettings? bgpProperties;
  /// FQDN of vpn-site-link.
  final String? fqdn;
  /// Resource ID.
  final String? id;
  /// The ip-address for the vpn-site-link.
  final String? ipAddress;
  /// The link provider properties.
  final VpnLinkProviderProperties? linkProperties;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;

  /// Creates a new [VpnSiteLink].
  /// [bgpProperties] The set of bgp properties.
  /// [fqdn] FQDN of vpn-site-link.
  /// [id] Resource ID.
  /// [ipAddress] The ip-address for the vpn-site-link.
  /// [linkProperties] The link provider properties.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  VpnSiteLink({
    this.bgpProperties,
    this.fqdn,
    this.id,
    this.ipAddress,
    this.linkProperties,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpProperties': ?bgpProperties == null ? null : bgpProperties!.toMap(),
      'fqdn': ?fqdn,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'linkProperties': ?linkProperties == null ? null : linkProperties!.toMap(),
      'name': ?name,
    };
  }

  factory VpnSiteLink.fromMap(Map<String, dynamic> map) {
    return VpnSiteLink(
      bgpProperties: map['bgpProperties'] == null ? null : VpnLinkBgpSettings.fromMap((map['bgpProperties'] as Map).cast<String, dynamic>()),
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      linkProperties: map['linkProperties'] == null ? null : VpnLinkProviderProperties.fromMap((map['linkProperties'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

