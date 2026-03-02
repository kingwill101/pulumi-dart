// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routers_router_bgp.dart';
import 'get_routers_router_bgp_peer.dart';
import 'get_routers_router_interface.dart';
import 'get_routers_router_md5_authentication_key.dart';
import 'get_routers_router_nat.dart';

class GetRoutersRouter {
  final pulumi.Input<List<GetRoutersRouterBgpPeer>> bgpPeers;
  final pulumi.Input<List<GetRoutersRouterBgp>> bgps;
  final pulumi.Input<String> creationTimestamp;
  final pulumi.Input<String> description;
  final pulumi.Input<bool> encryptedInterconnectRouter;
  final pulumi.Input<List<GetRoutersRouterInterface>> interfaces;
  final pulumi.Input<List<GetRoutersRouterMd5AuthenticationKey>> md5AuthenticationKeys;
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetRoutersRouterNat>> nats;
  final pulumi.Input<String> network;
  final pulumi.Input<String> selfLink;

  /// Creates a new [GetRoutersRouter].
  /// [bgpPeers] Required.
  /// [bgps] Required.
  /// [creationTimestamp] Required.
  /// [description] Required.
  /// [encryptedInterconnectRouter] Required.
  /// [interfaces] Required.
  /// [md5AuthenticationKeys] Required.
  /// [name] Required.
  /// [nats] Required.
  /// [network] Required.
  /// [selfLink] Required.
  GetRoutersRouter({
    required this.bgpPeers,
    required this.bgps,
    required this.creationTimestamp,
    required this.description,
    required this.encryptedInterconnectRouter,
    required this.interfaces,
    required this.md5AuthenticationKeys,
    required this.name,
    required this.nats,
    required this.network,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpPeers': pulumi.Input.mapInputValue<List<GetRoutersRouterBgpPeer>, List<Map<String, dynamic>>>(bgpPeers, (value) => pulumi.Input.encodeList<GetRoutersRouterBgpPeer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bgps': pulumi.Input.mapInputValue<List<GetRoutersRouterBgp>, List<Map<String, dynamic>>>(bgps, (value) => pulumi.Input.encodeList<GetRoutersRouterBgp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTimestamp': creationTimestamp,
      'description': description,
      'encryptedInterconnectRouter': encryptedInterconnectRouter,
      'interfaces': pulumi.Input.mapInputValue<List<GetRoutersRouterInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<GetRoutersRouterInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'md5AuthenticationKeys': pulumi.Input.mapInputValue<List<GetRoutersRouterMd5AuthenticationKey>, List<Map<String, dynamic>>>(md5AuthenticationKeys, (value) => pulumi.Input.encodeList<GetRoutersRouterMd5AuthenticationKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'nats': pulumi.Input.mapInputValue<List<GetRoutersRouterNat>, List<Map<String, dynamic>>>(nats, (value) => pulumi.Input.encodeList<GetRoutersRouterNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'network': network,
      'selfLink': selfLink,
    };
  }

  factory GetRoutersRouter.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouter(
      bgpPeers: (pulumi.Input.decodeList<GetRoutersRouterBgpPeer>(map['bgpPeers'], (value) => GetRoutersRouterBgpPeer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bgps: (pulumi.Input.decodeList<GetRoutersRouterBgp>(map['bgps'], (value) => GetRoutersRouterBgp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      creationTimestamp: (map['creationTimestamp'] as String).input(),
      description: (map['description'] as String).input(),
      encryptedInterconnectRouter: (map['encryptedInterconnectRouter'] as bool).input(),
      interfaces: (pulumi.Input.decodeList<GetRoutersRouterInterface>(map['interfaces'], (value) => GetRoutersRouterInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      md5AuthenticationKeys: (pulumi.Input.decodeList<GetRoutersRouterMd5AuthenticationKey>(map['md5AuthenticationKeys'], (value) => GetRoutersRouterMd5AuthenticationKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      nats: (pulumi.Input.decodeList<GetRoutersRouterNat>(map['nats'], (value) => GetRoutersRouterNat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      network: (map['network'] as String).input(),
      selfLink: (map['selfLink'] as String).input(),
    );
  }
}

