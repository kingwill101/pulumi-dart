// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_site_link_bgp.dart';

class VpnSiteLink {
  /// A `bgp` block as defined above.
  ///
  /// > **Note:** The `link.bgp` has to be set when the `address_cidrs` isn't specified.
  final pulumi.Input<VpnSiteLinkBgp>? bgp;
  /// The FQDN of this VPN Site Link.
  final pulumi.Input<String>? fqdn;
  /// The ID of the VPN Site Link.
  final pulumi.Input<String>? id;
  /// The IP address of this VPN Site Link.
  ///
  /// > **Note:** Either `fqdn` or `ip_address` should be specified.
  final pulumi.Input<String>? ipAddress;
  /// The name which should be used for this VPN Site Link.
  final pulumi.Input<String> name;
  /// The name of the physical link at the VPN Site. Example: `ATT`, `Verizon`.
  final pulumi.Input<String>? providerName;
  /// The speed of the VPN device at the branch location in unit of mbps. Defaults to `0`.
  final pulumi.Input<int>? speedInMbps;

  /// Creates a new [VpnSiteLink].
  /// [bgp] A `bgp` block as defined above.
  /// [fqdn] The FQDN of this VPN Site Link.
  /// [id] The ID of the VPN Site Link.
  /// [ipAddress] The IP address of this VPN Site Link.
  /// [name] The name which should be used for this VPN Site Link.
  /// [providerName] The name of the physical link at the VPN Site. Example: `ATT`, `Verizon`.
  /// [speedInMbps] The speed of the VPN device at the branch location in unit of mbps. Defaults to `0`.
  VpnSiteLink({
    this.bgp,
    this.fqdn,
    this.id,
    this.ipAddress,
    required this.name,
    this.providerName,
    this.speedInMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?pulumi.Input.mapOptionalInputValue<VpnSiteLinkBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'name': name,
      'providerName': ?providerName,
      'speedInMbps': ?speedInMbps,
    };
  }

  factory VpnSiteLink.fromMap(Map<String, dynamic> map) {
    return VpnSiteLink(
      bgp: map['bgp'] == null ? null : (VpnSiteLinkBgp.fromMap((map['bgp']! as Map).cast<String, dynamic>())).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      name: (map['name'] as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName']! as String).input(),
      speedInMbps: map['speedInMbps'] == null ? null : (map['speedInMbps']! as int).input(),
    );
  }
}

