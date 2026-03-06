// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_bgp_peer_v2_bgp_peer_v2_args_doc}
/// The set of arguments for BgpPeerV2.
/// {@endtemplate}
/// {@macro pulumi_networking_bgp_peer_v2_bgp_peer_v2_args_doc}
class BgpPeerV2Args {
  /// The authentication type to use. Can be one of `none`
  /// or `md5`. Defaults to `none`. If set to not `none`, the `password` argument
  /// must also be provided. Changing this creates a new BGP peer.
  final pulumi.Input<String>? authType;
  /// A name for the BGP peer.
  final pulumi.Input<String>? name;
  /// The password used for MD5 authentication. Must be set
  /// only when `auth_type` is not `none`.
  final pulumi.Input<String>? password;
  /// The IP address of the BGP peer. Must be a valid IP
  /// address. Changing this creates a new BGP peer.
  final pulumi.Input<String> peerIp;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new BGP
  /// peer.
  final pulumi.Input<String>? region;
  /// The AS number of the BGP peer. Changing this
  /// creates a new BGP peer.
  final pulumi.Input<int> remoteAs;
  /// The tenant/project ID. Required if admin privileges
  /// are used. Changing this creates a new BGP peer.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [BgpPeerV2Args].
  /// [authType] The authentication type to use. Can be one of `none`
  /// [name] A name for the BGP peer.
  /// [password] The password used for MD5 authentication. Must be set
  /// [peerIp] The IP address of the BGP peer. Must be a valid IP
  /// [region] The region in which to obtain the V2 Networking client.
  /// [remoteAs] The AS number of the BGP peer. Changing this
  /// [tenantId] The tenant/project ID. Required if admin privileges
  const BgpPeerV2Args({
    this.authType,
    this.name,
    this.password,
    required this.peerIp,
    this.region,
    required this.remoteAs,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'name': ?name,
      'password': ?password,
      'peerIp': peerIp,
      'region': ?region,
      'remoteAs': remoteAs,
      'tenantId': ?tenantId,
    };
  }

  factory BgpPeerV2Args.fromMap(Map<String, dynamic> map) {
    return BgpPeerV2Args(
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerIp: pulumi.Input.fromValue(map['peerIp'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteAs: pulumi.Input.fromValue(map['remoteAs'] as int),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

