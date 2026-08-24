// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_wan_ipsec_tunnel_bgp.dart';
import 'magic_wan_ipsec_tunnel_custom_remote_identities.dart';
import 'magic_wan_ipsec_tunnel_health_check.dart';

/// {@template pulumi_index_magic_wan_ipsec_tunnel_magic_wan_ipsec_tunnel_args_doc}
/// The set of arguments for MagicWanIpsecTunnel.
/// {@endtemplate}
/// {@macro pulumi_index_magic_wan_ipsec_tunnel_magic_wan_ipsec_tunnel_args_doc}
class MagicWanIpsecTunnelArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  final pulumi.Input<bool?>? automaticReturnRouting;
  final pulumi.Input<MagicWanIpsecTunnelBgp?>? bgp;
  /// The IP address assigned to the Cloudflare side of the IPsec tunnel.
  final pulumi.Input<String> cloudflareEndpoint;
  final pulumi.Input<MagicWanIpsecTunnelCustomRemoteIdentities?>? customRemoteIdentities;
  /// The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
  final pulumi.Input<String?>? customerEndpoint;
  /// An optional description forthe IPsec tunnel.
  final pulumi.Input<String?>? description;
  final pulumi.Input<MagicWanIpsecTunnelHealthCheck?>? healthCheck;
  /// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  final pulumi.Input<String> interfaceAddress;
  /// A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  final pulumi.Input<String?>? interfaceAddress6;
  /// The name of the IPsec tunnel. The name cannot share a name with other tunnels.
  final pulumi.Input<String> name;
  /// A randomly generated or provided string for use in the IPsec tunnel.
  final pulumi.Input<String?>? psk;
  /// If `true`, then IPsec replay protection will be supported in the Cloudflare-to-customer direction.
  final pulumi.Input<bool?>? replayProtection;

  /// Creates a new [MagicWanIpsecTunnelArgs].
  /// [accountId] Identifier
  /// [automaticReturnRouting] True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  /// [bgp] Optional.
  /// [cloudflareEndpoint] The IP address assigned to the Cloudflare side of the IPsec tunnel.
  /// [customRemoteIdentities] Optional.
  /// [customerEndpoint] The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
  /// [description] An optional description forthe IPsec tunnel.
  /// [healthCheck] Optional.
  /// [interfaceAddress] A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  /// [interfaceAddress6] A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  /// [name] The name of the IPsec tunnel. The name cannot share a name with other tunnels.
  /// [psk] A randomly generated or provided string for use in the IPsec tunnel.
  /// [replayProtection] If `true`, then IPsec replay protection will be supported in the Cloudflare-to-customer direction.
  const MagicWanIpsecTunnelArgs({
    required this.accountId,
    this.automaticReturnRouting,
    this.bgp,
    required this.cloudflareEndpoint,
    this.customRemoteIdentities,
    this.customerEndpoint,
    this.description,
    this.healthCheck,
    required this.interfaceAddress,
    this.interfaceAddress6,
    required this.name,
    this.psk,
    this.replayProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'automaticReturnRouting': ?automaticReturnRouting,
      'bgp': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'cloudflareEndpoint': cloudflareEndpoint,
      'customRemoteIdentities': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelCustomRemoteIdentities, Map<String, dynamic>>(customRemoteIdentities, (value) => value.toMap()),
      'customerEndpoint': ?customerEndpoint,
      'description': ?description,
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'interfaceAddress': interfaceAddress,
      'interfaceAddress6': ?interfaceAddress6,
      'name': name,
      'psk': ?psk,
      'replayProtection': ?replayProtection,
    };
  }

  factory MagicWanIpsecTunnelArgs.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      automaticReturnRouting: (() { final guardedValue = map['automaticReturnRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudflareEndpoint: pulumi.Input.fromValue(map['cloudflareEndpoint'] as String),
      customRemoteIdentities: (() { final guardedValue = map['customRemoteIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelCustomRemoteIdentities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerEndpoint: (() { final guardedValue = map['customerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interfaceAddress: pulumi.Input.fromValue(map['interfaceAddress'] as String),
      interfaceAddress6: (() { final guardedValue = map['interfaceAddress6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      psk: (() { final guardedValue = map['psk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replayProtection: (() { final guardedValue = map['replayProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
