// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_wan_gre_tunnel_gre_tunnel_bgp.dart';
import 'get_magic_wan_gre_tunnel_gre_tunnel_bgp_status.dart';
import 'get_magic_wan_gre_tunnel_gre_tunnel_health_check.dart';

class GetMagicWanGreTunnelGreTunnel {
  /// True if automatic stateful return routing should be enabled for a tunnel, false otherwise. Requires the `couplerIntegration` account flag to be enabled; requests setting this to `true` without that flag will be rejected.
  final pulumi.Input<bool> automaticReturnRouting;
  final pulumi.Input<GetMagicWanGreTunnelGreTunnelBgp> bgp;
  final pulumi.Input<GetMagicWanGreTunnelGreTunnelBgpStatus> bgpStatus;
  /// The IP address assigned to the Cloudflare side of the GRE tunnel.
  final pulumi.Input<String> cloudflareGreEndpoint;
  /// The date and time the tunnel was created.
  final pulumi.Input<String> createdOn;
  /// The IP address assigned to the customer side of the GRE tunnel.
  final pulumi.Input<String> customerGreEndpoint;
  /// An optional description of the GRE tunnel.
  final pulumi.Input<String> description;
  final pulumi.Input<GetMagicWanGreTunnelGreTunnelHealthCheck> healthCheck;
  /// Identifier
  final pulumi.Input<String> id;
  /// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  final pulumi.Input<String> interfaceAddress;
  /// A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  final pulumi.Input<String> interfaceAddress6;
  /// The date and time the tunnel was last modified.
  final pulumi.Input<String> modifiedOn;
  /// Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. The minimum value is 576.
  final pulumi.Input<int> mtu;
  /// The name of the tunnel. The name cannot contain spaces or special characters, must be 15 characters or less, and cannot share a name with another GRE tunnel.
  final pulumi.Input<String> name;
  /// Time To Live (TTL) in number of hops of the GRE tunnel.
  final pulumi.Input<int> ttl;

  /// Creates a new [GetMagicWanGreTunnelGreTunnel].
  /// [automaticReturnRouting] True if automatic stateful return routing should be enabled for a tunnel, false otherwise. Requires the `couplerIntegration` account flag to be enabled; requests setting this to `true` without that flag will be rejected.
  /// [bgp] Required.
  /// [bgpStatus] Required.
  /// [cloudflareGreEndpoint] The IP address assigned to the Cloudflare side of the GRE tunnel.
  /// [createdOn] The date and time the tunnel was created.
  /// [customerGreEndpoint] The IP address assigned to the customer side of the GRE tunnel.
  /// [description] An optional description of the GRE tunnel.
  /// [healthCheck] Required.
  /// [id] Identifier
  /// [interfaceAddress] A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  /// [interfaceAddress6] A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  /// [modifiedOn] The date and time the tunnel was last modified.
  /// [mtu] Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. The minimum value is 576.
  /// [name] The name of the tunnel. The name cannot contain spaces or special characters, must be 15 characters or less, and cannot share a name with another GRE tunnel.
  /// [ttl] Time To Live (TTL) in number of hops of the GRE tunnel.
  const GetMagicWanGreTunnelGreTunnel({
    required this.automaticReturnRouting,
    required this.bgp,
    required this.bgpStatus,
    required this.cloudflareGreEndpoint,
    required this.createdOn,
    required this.customerGreEndpoint,
    required this.description,
    required this.healthCheck,
    required this.id,
    required this.interfaceAddress,
    required this.interfaceAddress6,
    required this.modifiedOn,
    required this.mtu,
    required this.name,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticReturnRouting': automaticReturnRouting,
      'bgp': pulumi.Input.mapInputValue<GetMagicWanGreTunnelGreTunnelBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'bgpStatus': pulumi.Input.mapInputValue<GetMagicWanGreTunnelGreTunnelBgpStatus, Map<String, dynamic>>(bgpStatus, (value) => value.toMap()),
      'cloudflareGreEndpoint': cloudflareGreEndpoint,
      'createdOn': createdOn,
      'customerGreEndpoint': customerGreEndpoint,
      'description': description,
      'healthCheck': pulumi.Input.mapInputValue<GetMagicWanGreTunnelGreTunnelHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'id': id,
      'interfaceAddress': interfaceAddress,
      'interfaceAddress6': interfaceAddress6,
      'modifiedOn': modifiedOn,
      'mtu': mtu,
      'name': name,
      'ttl': ttl,
    };
  }

  factory GetMagicWanGreTunnelGreTunnel.fromMap(Map<String, dynamic> map) {
    return GetMagicWanGreTunnelGreTunnel(
      automaticReturnRouting: pulumi.Input.fromValue(map['automaticReturnRouting'] as bool),
      bgp: pulumi.Input.fromValue(GetMagicWanGreTunnelGreTunnelBgp.fromMap((map['bgp']! as Map).cast<String, dynamic>())),
      bgpStatus: pulumi.Input.fromValue(GetMagicWanGreTunnelGreTunnelBgpStatus.fromMap((map['bgpStatus']! as Map).cast<String, dynamic>())),
      cloudflareGreEndpoint: pulumi.Input.fromValue(map['cloudflareGreEndpoint'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      customerGreEndpoint: pulumi.Input.fromValue(map['customerGreEndpoint'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      healthCheck: pulumi.Input.fromValue(GetMagicWanGreTunnelGreTunnelHealthCheck.fromMap((map['healthCheck']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      interfaceAddress: pulumi.Input.fromValue(map['interfaceAddress'] as String),
      interfaceAddress6: pulumi.Input.fromValue(map['interfaceAddress6'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      mtu: pulumi.Input.fromValue((map['mtu'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toInt()),
    );
  }
}
