// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_site_link_bgp.dart';

class VpnSiteLink {
  /// A `bgp` block as defined above.
  ///
  /// &gt; **Note:** The `link.bgp` has to be set when the `addressCidrs` isn't specified.
  final pulumi.Input<VpnSiteLinkBgp?>? bgp;
  /// The FQDN of this VPN Site Link.
  final pulumi.Input<String?>? fqdn;
  /// The ID of the VPN Site Link.
  final pulumi.Input<String?>? id;
  /// The IP address of this VPN Site Link.
  ///
  /// &gt; **Note:** Either `fqdn` or `ipAddress` should be specified.
  final pulumi.Input<String?>? ipAddress;
  /// The name which should be used for this VPN Site Link.
  final pulumi.Input<String> name;
  /// The name of the physical link at the VPN Site. Example: `ATT`, `Verizon`.
  final pulumi.Input<String?>? providerName;
  /// The speed of the VPN device at the branch location in unit of mbps. Defaults to `0`.
  final pulumi.Input<int?>? speedInMbps;

  /// Creates a new [VpnSiteLink].
  /// [bgp] A `bgp` block as defined above.
  /// [fqdn] The FQDN of this VPN Site Link.
  /// [id] The ID of the VPN Site Link.
  /// [ipAddress] The IP address of this VPN Site Link.
  /// [name] The name which should be used for this VPN Site Link.
  /// [providerName] The name of the physical link at the VPN Site. Example: `ATT`, `Verizon`.
  /// [speedInMbps] The speed of the VPN device at the branch location in unit of mbps. Defaults to `0`.
  const VpnSiteLink({
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
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnSiteLinkBgp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      speedInMbps: (() { final guardedValue = map['speedInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
