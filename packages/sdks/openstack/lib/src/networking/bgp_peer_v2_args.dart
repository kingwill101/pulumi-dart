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
  BgpPeerV2Args({
    pulumi.Output<String>? authType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    required pulumi.Output<String> peerIp,
    pulumi.Output<String>? region,
    required pulumi.Output<int> remoteAs,
    pulumi.Output<String>? tenantId,
  }) :
      authType = pulumi.Input.asOptionalInput<String>(authType),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      peerIp = pulumi.Input.asInput<String>(peerIp),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteAs = pulumi.Input.asInput<int>(remoteAs),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      authType: map['authType'] == null ? null : pulumi.Output.create<String>(map['authType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      peerIp: pulumi.Output.create<String>(map['peerIp'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteAs: pulumi.Output.create<int>(map['remoteAs'] as int),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

