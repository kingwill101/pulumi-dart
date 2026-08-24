// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_wan_gre_tunnel_bgp.dart';
import 'magic_wan_gre_tunnel_health_check.dart';

/// {@template pulumi_index_magic_wan_gre_tunnel_magic_wan_gre_tunnel_args_doc}
/// The set of arguments for MagicWanGreTunnel.
/// {@endtemplate}
/// {@macro pulumi_index_magic_wan_gre_tunnel_magic_wan_gre_tunnel_args_doc}
class MagicWanGreTunnelArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  final pulumi.Input<bool?>? automaticReturnRouting;
  final pulumi.Input<MagicWanGreTunnelBgp?>? bgp;
  /// The IP address assigned to the Cloudflare side of the GRE tunnel.
  final pulumi.Input<String> cloudflareGreEndpoint;
  /// The IP address assigned to the customer side of the GRE tunnel.
  final pulumi.Input<String> customerGreEndpoint;
  /// An optional description of the GRE tunnel.
  final pulumi.Input<String?>? description;
  final pulumi.Input<MagicWanGreTunnelHealthCheck?>? healthCheck;
  /// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  final pulumi.Input<String> interfaceAddress;
  /// A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  final pulumi.Input<String?>? interfaceAddress6;
  /// Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. The minimum value is 576.
  final pulumi.Input<int?>? mtu;
  /// The name of the tunnel. The name cannot contain spaces or special characters, must be 15 characters or less, and cannot share a name with another GRE tunnel.
  final pulumi.Input<String> name;
  /// Time To Live (TTL) in number of hops of the GRE tunnel.
  final pulumi.Input<int?>? ttl;

  /// Creates a new [MagicWanGreTunnelArgs].
  /// [accountId] Identifier
  /// [automaticReturnRouting] True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  /// [bgp] Optional.
  /// [cloudflareGreEndpoint] The IP address assigned to the Cloudflare side of the GRE tunnel.
  /// [customerGreEndpoint] The IP address assigned to the customer side of the GRE tunnel.
  /// [description] An optional description of the GRE tunnel.
  /// [healthCheck] Optional.
  /// [interfaceAddress] A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  /// [interfaceAddress6] A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  /// [mtu] Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. The minimum value is 576.
  /// [name] The name of the tunnel. The name cannot contain spaces or special characters, must be 15 characters or less, and cannot share a name with another GRE tunnel.
  /// [ttl] Time To Live (TTL) in number of hops of the GRE tunnel.
  const MagicWanGreTunnelArgs({
    required this.accountId,
    this.automaticReturnRouting,
    this.bgp,
    required this.cloudflareGreEndpoint,
    required this.customerGreEndpoint,
    this.description,
    this.healthCheck,
    required this.interfaceAddress,
    this.interfaceAddress6,
    this.mtu,
    required this.name,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'automaticReturnRouting': ?automaticReturnRouting,
      'bgp': ?pulumi.Input.mapOptionalInputValue<MagicWanGreTunnelBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'cloudflareGreEndpoint': cloudflareGreEndpoint,
      'customerGreEndpoint': customerGreEndpoint,
      'description': ?description,
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<MagicWanGreTunnelHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'interfaceAddress': interfaceAddress,
      'interfaceAddress6': ?interfaceAddress6,
      'mtu': ?mtu,
      'name': name,
      'ttl': ?ttl,
    };
  }

  factory MagicWanGreTunnelArgs.fromMap(Map<String, dynamic> map) {
    return MagicWanGreTunnelArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      automaticReturnRouting: (() { final guardedValue = map['automaticReturnRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanGreTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudflareGreEndpoint: pulumi.Input.fromValue(map['cloudflareGreEndpoint'] as String),
      customerGreEndpoint: pulumi.Input.fromValue(map['customerGreEndpoint'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanGreTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interfaceAddress: pulumi.Input.fromValue(map['interfaceAddress'] as String),
      interfaceAddress6: (() { final guardedValue = map['interfaceAddress6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
