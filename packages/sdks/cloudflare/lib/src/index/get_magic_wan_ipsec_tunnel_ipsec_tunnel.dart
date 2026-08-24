// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_wan_ipsec_tunnel_ipsec_tunnel_bgp.dart';
import 'get_magic_wan_ipsec_tunnel_ipsec_tunnel_bgp_status.dart';
import 'get_magic_wan_ipsec_tunnel_ipsec_tunnel_custom_remote_identities.dart';
import 'get_magic_wan_ipsec_tunnel_ipsec_tunnel_health_check.dart';
import 'get_magic_wan_ipsec_tunnel_ipsec_tunnel_psk_metadata.dart';

class GetMagicWanIpsecTunnelIpsecTunnel {
  /// When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in the ESP tunnel (Phase 2).
  final pulumi.Input<bool> allowNullCipher;
  /// True if automatic stateful return routing should be enabled for a tunnel, false otherwise. Requires the `couplerIntegration` account flag to be enabled; requests setting this to `true` without that flag will be rejected.
  final pulumi.Input<bool> automaticReturnRouting;
  final pulumi.Input<GetMagicWanIpsecTunnelIpsecTunnelBgp> bgp;
  final pulumi.Input<GetMagicWanIpsecTunnelIpsecTunnelBgpStatus> bgpStatus;
  /// The IP address assigned to the Cloudflare side of the IPsec tunnel.
  final pulumi.Input<String> cloudflareEndpoint;
  /// The date and time the tunnel was created.
  final pulumi.Input<String> createdOn;
  final pulumi.Input<GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities> customRemoteIdentities;
  /// The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
  final pulumi.Input<String> customerEndpoint;
  /// An optional description forthe IPsec tunnel.
  final pulumi.Input<String> description;
  final pulumi.Input<GetMagicWanIpsecTunnelIpsecTunnelHealthCheck> healthCheck;
  /// Identifier
  final pulumi.Input<String> id;
  /// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  final pulumi.Input<String> interfaceAddress;
  /// A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  final pulumi.Input<String> interfaceAddress6;
  /// The date and time the tunnel was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The name of the IPsec tunnel. The name cannot share a name with other tunnels.
  final pulumi.Input<String> name;
  /// The PSK metadata that includes when the PSK was generated.
  final pulumi.Input<GetMagicWanIpsecTunnelIpsecTunnelPskMetadata> pskMetadata;
  /// If `true`, then IPsec replay protection will be supported in the Cloudflare-to-customer direction.
  final pulumi.Input<bool> replayProtection;

  /// Creates a new [GetMagicWanIpsecTunnelIpsecTunnel].
  /// [allowNullCipher] When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in the ESP tunnel (Phase 2).
  /// [automaticReturnRouting] True if automatic stateful return routing should be enabled for a tunnel, false otherwise. Requires the `couplerIntegration` account flag to be enabled; requests setting this to `true` without that flag will be rejected.
  /// [bgp] Required.
  /// [bgpStatus] Required.
  /// [cloudflareEndpoint] The IP address assigned to the Cloudflare side of the IPsec tunnel.
  /// [createdOn] The date and time the tunnel was created.
  /// [customRemoteIdentities] Required.
  /// [customerEndpoint] The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
  /// [description] An optional description forthe IPsec tunnel.
  /// [healthCheck] Required.
  /// [id] Identifier
  /// [interfaceAddress] A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  /// [interfaceAddress6] A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  /// [modifiedOn] The date and time the tunnel was last modified.
  /// [name] The name of the IPsec tunnel. The name cannot share a name with other tunnels.
  /// [pskMetadata] The PSK metadata that includes when the PSK was generated.
  /// [replayProtection] If `true`, then IPsec replay protection will be supported in the Cloudflare-to-customer direction.
  const GetMagicWanIpsecTunnelIpsecTunnel({
    required this.allowNullCipher,
    required this.automaticReturnRouting,
    required this.bgp,
    required this.bgpStatus,
    required this.cloudflareEndpoint,
    required this.createdOn,
    required this.customRemoteIdentities,
    required this.customerEndpoint,
    required this.description,
    required this.healthCheck,
    required this.id,
    required this.interfaceAddress,
    required this.interfaceAddress6,
    required this.modifiedOn,
    required this.name,
    required this.pskMetadata,
    required this.replayProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNullCipher': allowNullCipher,
      'automaticReturnRouting': automaticReturnRouting,
      'bgp': pulumi.Input.mapInputValue<GetMagicWanIpsecTunnelIpsecTunnelBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'bgpStatus': pulumi.Input.mapInputValue<GetMagicWanIpsecTunnelIpsecTunnelBgpStatus, Map<String, dynamic>>(bgpStatus, (value) => value.toMap()),
      'cloudflareEndpoint': cloudflareEndpoint,
      'createdOn': createdOn,
      'customRemoteIdentities': pulumi.Input.mapInputValue<GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities, Map<String, dynamic>>(customRemoteIdentities, (value) => value.toMap()),
      'customerEndpoint': customerEndpoint,
      'description': description,
      'healthCheck': pulumi.Input.mapInputValue<GetMagicWanIpsecTunnelIpsecTunnelHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'id': id,
      'interfaceAddress': interfaceAddress,
      'interfaceAddress6': interfaceAddress6,
      'modifiedOn': modifiedOn,
      'name': name,
      'pskMetadata': pulumi.Input.mapInputValue<GetMagicWanIpsecTunnelIpsecTunnelPskMetadata, Map<String, dynamic>>(pskMetadata, (value) => value.toMap()),
      'replayProtection': replayProtection,
    };
  }

  factory GetMagicWanIpsecTunnelIpsecTunnel.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelIpsecTunnel(
      allowNullCipher: pulumi.Input.fromValue(map['allowNullCipher'] as bool),
      automaticReturnRouting: pulumi.Input.fromValue(map['automaticReturnRouting'] as bool),
      bgp: pulumi.Input.fromValue(GetMagicWanIpsecTunnelIpsecTunnelBgp.fromMap((map['bgp']! as Map).cast<String, dynamic>())),
      bgpStatus: pulumi.Input.fromValue(GetMagicWanIpsecTunnelIpsecTunnelBgpStatus.fromMap((map['bgpStatus']! as Map).cast<String, dynamic>())),
      cloudflareEndpoint: pulumi.Input.fromValue(map['cloudflareEndpoint'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      customRemoteIdentities: pulumi.Input.fromValue(GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities.fromMap((map['customRemoteIdentities']! as Map).cast<String, dynamic>())),
      customerEndpoint: pulumi.Input.fromValue(map['customerEndpoint'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      healthCheck: pulumi.Input.fromValue(GetMagicWanIpsecTunnelIpsecTunnelHealthCheck.fromMap((map['healthCheck']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      interfaceAddress: pulumi.Input.fromValue(map['interfaceAddress'] as String),
      interfaceAddress6: pulumi.Input.fromValue(map['interfaceAddress6'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      pskMetadata: pulumi.Input.fromValue(GetMagicWanIpsecTunnelIpsecTunnelPskMetadata.fromMap((map['pskMetadata']! as Map).cast<String, dynamic>())),
      replayProtection: pulumi.Input.fromValue(map['replayProtection'] as bool),
    );
  }
}
