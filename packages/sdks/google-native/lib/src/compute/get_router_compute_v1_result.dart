// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_peer_response_compute_v1.dart';
import 'router_bgp_response_compute_v1.dart';
import 'router_interface_response_compute_v1.dart';
import 'router_md5_authentication_key_response_compute_v1.dart';
import 'router_nat_response_compute_v1.dart';

/// Result data returned by getRouter.
class GetRouterComputeV1Result {
  /// BGP information specific to this router.
  final RouterBgpResponseComputeV1? bgp;
  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final List<RouterBgpPeerResponseComputeV1>? bgpPeers;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final bool? encryptedInterconnectRouter;
  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final List<RouterInterfaceResponseComputeV1>? interfaces;
  /// Type of resource. Always compute#router for routers.
  final String? kind;
  /// Keys used for MD5 authentication.
  final List<RouterMd5AuthenticationKeyResponseComputeV1>? md5AuthenticationKeys;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// A list of NAT services created in this router.
  final List<RouterNatResponseComputeV1>? nats;
  /// URI of the network to which this router belongs.
  final String? network;
  /// URI of the region where the router resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;

  /// Creates a new [GetRouterComputeV1Result].
  /// [bgp] BGP information specific to this router.
  /// [bgpPeers] BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [encryptedInterconnectRouter] Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  /// [interfaces] Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  /// [kind] Type of resource. Always compute#router for routers.
  /// [md5AuthenticationKeys] Keys used for MD5 authentication.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nats] A list of NAT services created in this router.
  /// [network] URI of the network to which this router belongs.
  /// [region] URI of the region where the router resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  const GetRouterComputeV1Result({
    this.bgp,
    this.bgpPeers,
    this.creationTimestamp,
    this.description,
    this.encryptedInterconnectRouter,
    this.interfaces,
    this.kind,
    this.md5AuthenticationKeys,
    this.name,
    this.nats,
    this.network,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?bgp?.toMap(),
      'bgpPeers': ?(() { final guardedValue = bgpPeers; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouterBgpPeerResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'encryptedInterconnectRouter': ?encryptedInterconnectRouter,
      'interfaces': ?(() { final guardedValue = interfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouterInterfaceResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'md5AuthenticationKeys': ?(() { final guardedValue = md5AuthenticationKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouterMd5AuthenticationKeyResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'nats': ?(() { final guardedValue = nats; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouterNatResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'network': ?network,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory GetRouterComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetRouterComputeV1Result(
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return RouterBgpResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bgpPeers: (() { final guardedValue = map['bgpPeers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterBgpPeerResponseComputeV1>(guardedValue, (value) => RouterBgpPeerResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptedInterconnectRouter: (() { final guardedValue = map['encryptedInterconnectRouter']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterInterfaceResponseComputeV1>(guardedValue, (value) => RouterInterfaceResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      md5AuthenticationKeys: (() { final guardedValue = map['md5AuthenticationKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterMd5AuthenticationKeyResponseComputeV1>(guardedValue, (value) => RouterMd5AuthenticationKeyResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nats: (() { final guardedValue = map['nats']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterNatResponseComputeV1>(guardedValue, (value) => RouterNatResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
