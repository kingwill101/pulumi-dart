// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_wan_ipsec_tunnel_bgp.dart';
import 'magic_wan_ipsec_tunnel_bgp_status.dart';
import 'magic_wan_ipsec_tunnel_custom_remote_identities.dart';
import 'magic_wan_ipsec_tunnel_health_check.dart';
import 'magic_wan_ipsec_tunnel_psk_metadata.dart';

/// Input properties used for looking up and filtering MagicWanIpsecTunnel resources.
class MagicWanIpsecTunnelState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in the ESP tunnel (Phase 2).
  final pulumi.Input<bool?>? allowNullCipher;
  /// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  final pulumi.Input<bool?>? automaticReturnRouting;
  final pulumi.Input<MagicWanIpsecTunnelBgp?>? bgp;
  final pulumi.Input<MagicWanIpsecTunnelBgpStatus?>? bgpStatus;
  /// The IP address assigned to the Cloudflare side of the IPsec tunnel.
  final pulumi.Input<String?>? cloudflareEndpoint;
  /// The date and time the tunnel was created.
  final pulumi.Input<String?>? createdOn;
  final pulumi.Input<MagicWanIpsecTunnelCustomRemoteIdentities?>? customRemoteIdentities;
  /// The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
  final pulumi.Input<String?>? customerEndpoint;
  /// An optional description forthe IPsec tunnel.
  final pulumi.Input<String?>? description;
  final pulumi.Input<MagicWanIpsecTunnelHealthCheck?>? healthCheck;
  /// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  final pulumi.Input<String?>? interfaceAddress;
  /// A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  final pulumi.Input<String?>? interfaceAddress6;
  /// The date and time the tunnel was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The name of the IPsec tunnel. The name cannot share a name with other tunnels.
  final pulumi.Input<String?>? name;
  /// A randomly generated or provided string for use in the IPsec tunnel.
  final pulumi.Input<String?>? psk;
  /// The PSK metadata that includes when the PSK was generated.
  final pulumi.Input<MagicWanIpsecTunnelPskMetadata?>? pskMetadata;
  /// If `true`, then IPsec replay protection will be supported in the Cloudflare-to-customer direction.
  final pulumi.Input<bool?>? replayProtection;

  /// Creates a new [MagicWanIpsecTunnelState].
  /// [accountId] Identifier
  /// [allowNullCipher] When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in the ESP tunnel (Phase 2).
  /// [automaticReturnRouting] True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  /// [bgp] Optional.
  /// [bgpStatus] Optional.
  /// [cloudflareEndpoint] The IP address assigned to the Cloudflare side of the IPsec tunnel.
  /// [createdOn] The date and time the tunnel was created.
  /// [customRemoteIdentities] Optional.
  /// [customerEndpoint] The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
  /// [description] An optional description forthe IPsec tunnel.
  /// [healthCheck] Optional.
  /// [interfaceAddress] A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  /// [interfaceAddress6] A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  /// [modifiedOn] The date and time the tunnel was last modified.
  /// [name] The name of the IPsec tunnel. The name cannot share a name with other tunnels.
  /// [psk] A randomly generated or provided string for use in the IPsec tunnel.
  /// [pskMetadata] The PSK metadata that includes when the PSK was generated.
  /// [replayProtection] If `true`, then IPsec replay protection will be supported in the Cloudflare-to-customer direction.
  const MagicWanIpsecTunnelState({
    this.accountId,
    this.allowNullCipher,
    this.automaticReturnRouting,
    this.bgp,
    this.bgpStatus,
    this.cloudflareEndpoint,
    this.createdOn,
    this.customRemoteIdentities,
    this.customerEndpoint,
    this.description,
    this.healthCheck,
    this.interfaceAddress,
    this.interfaceAddress6,
    this.modifiedOn,
    this.name,
    this.psk,
    this.pskMetadata,
    this.replayProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowNullCipher': ?allowNullCipher,
      'automaticReturnRouting': ?automaticReturnRouting,
      'bgp': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'bgpStatus': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelBgpStatus, Map<String, dynamic>>(bgpStatus, (value) => value.toMap()),
      'cloudflareEndpoint': ?cloudflareEndpoint,
      'createdOn': ?createdOn,
      'customRemoteIdentities': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelCustomRemoteIdentities, Map<String, dynamic>>(customRemoteIdentities, (value) => value.toMap()),
      'customerEndpoint': ?customerEndpoint,
      'description': ?description,
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'interfaceAddress': ?interfaceAddress,
      'interfaceAddress6': ?interfaceAddress6,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'psk': ?psk,
      'pskMetadata': ?pulumi.Input.mapOptionalInputValue<MagicWanIpsecTunnelPskMetadata, Map<String, dynamic>>(pskMetadata, (value) => value.toMap()),
      'replayProtection': ?replayProtection,
    };
  }

  factory MagicWanIpsecTunnelState.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowNullCipher: (() { final guardedValue = map['allowNullCipher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticReturnRouting: (() { final guardedValue = map['automaticReturnRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bgpStatus: (() { final guardedValue = map['bgpStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelBgpStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudflareEndpoint: (() { final guardedValue = map['cloudflareEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customRemoteIdentities: (() { final guardedValue = map['customRemoteIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelCustomRemoteIdentities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerEndpoint: (() { final guardedValue = map['customerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interfaceAddress: (() { final guardedValue = map['interfaceAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceAddress6: (() { final guardedValue = map['interfaceAddress6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      psk: (() { final guardedValue = map['psk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pskMetadata: (() { final guardedValue = map['pskMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicWanIpsecTunnelPskMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replayProtection: (() { final guardedValue = map['replayProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
