// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp.dart';
import 'router_bgp_peer.dart';
import 'router_interface.dart';
import 'router_md5_authentication_key.dart';
import 'router_nat.dart';

/// {@template pulumi_compute_alpha_router_args_doc}
/// The set of arguments for Router.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_router_args_doc}
class RouterArgs {
  /// BGP information specific to this router.
  final pulumi.Input<RouterBgp>? bgp;
  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final pulumi.Input<List<RouterBgpPeer>>? bgpPeers;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final pulumi.Input<bool>? encryptedInterconnectRouter;
  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final pulumi.Input<List<RouterInterface>>? interfaces;
  /// Keys used for MD5 authentication.
  final pulumi.Input<List<RouterMd5AuthenticationKey>>? md5AuthenticationKeys;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// A list of NAT services created in this router.
  final pulumi.Input<List<RouterNat>>? nats;
  /// URI of the network to which this router belongs.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [RouterArgs].
  /// [bgp] BGP information specific to this router.
  /// [bgpPeers] BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [encryptedInterconnectRouter] Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  /// [interfaces] Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  /// [md5AuthenticationKeys] Keys used for MD5 authentication.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nats] A list of NAT services created in this router.
  /// [network] URI of the network to which this router belongs.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  RouterArgs({
    this.bgp,
    this.bgpPeers,
    this.description,
    this.encryptedInterconnectRouter,
    this.interfaces,
    this.md5AuthenticationKeys,
    this.name,
    this.nats,
    this.network,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?pulumi.Input.mapOptionalInputValue<RouterBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'bgpPeers': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpPeer>, List<Map<String, dynamic>>>(bgpPeers, (value) => pulumi.Input.encodeList<RouterBgpPeer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'encryptedInterconnectRouter': ?encryptedInterconnectRouter,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<RouterInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<RouterInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'md5AuthenticationKeys': ?pulumi.Input.mapOptionalInputValue<List<RouterMd5AuthenticationKey>, List<Map<String, dynamic>>>(md5AuthenticationKeys, (value) => pulumi.Input.encodeList<RouterMd5AuthenticationKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nats': ?pulumi.Input.mapOptionalInputValue<List<RouterNat>, List<Map<String, dynamic>>>(nats, (value) => pulumi.Input.encodeList<RouterNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'network': ?network,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
    };
  }

  factory RouterArgs.fromMap(Map<String, dynamic> map) {
    return RouterArgs(
      bgp: map['bgp'] == null ? null : (RouterBgp.fromMap((map['bgp'] as Map).cast<String, dynamic>())).input(),
      bgpPeers: map['bgpPeers'] == null ? null : (pulumi.Input.decodeList<RouterBgpPeer>(map['bgpPeers'], (value) => RouterBgpPeer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] == null ? null : (map['encryptedInterconnectRouter'] as bool).input(),
      interfaces: map['interfaces'] == null ? null : (pulumi.Input.decodeList<RouterInterface>(map['interfaces'], (value) => RouterInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      md5AuthenticationKeys: map['md5AuthenticationKeys'] == null ? null : (pulumi.Input.decodeList<RouterMd5AuthenticationKey>(map['md5AuthenticationKeys'], (value) => RouterMd5AuthenticationKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nats: map['nats'] == null ? null : (pulumi.Input.decodeList<RouterNat>(map['nats'], (value) => RouterNat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
    );
  }
}

