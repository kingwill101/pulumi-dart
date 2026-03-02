// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpPeerV2 resources.
class BgpPeerV2State {
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
  final pulumi.Input<String>? peerIp;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new BGP
  /// peer.
  final pulumi.Input<String>? region;
  /// The AS number of the BGP peer. Changing this
  /// creates a new BGP peer.
  final pulumi.Input<int>? remoteAs;
  /// The tenant/project ID. Required if admin privileges
  /// are used. Changing this creates a new BGP peer.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [BgpPeerV2State].
  /// [authType] The authentication type to use. Can be one of `none`
  /// [name] A name for the BGP peer.
  /// [password] The password used for MD5 authentication. Must be set
  /// [peerIp] The IP address of the BGP peer. Must be a valid IP
  /// [region] The region in which to obtain the V2 Networking client.
  /// [remoteAs] The AS number of the BGP peer. Changing this
  /// [tenantId] The tenant/project ID. Required if admin privileges
  BgpPeerV2State({
    this.authType,
    this.name,
    this.password,
    this.peerIp,
    this.region,
    this.remoteAs,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'name': ?name,
      'password': ?password,
      'peerIp': ?peerIp,
      'region': ?region,
      'remoteAs': ?remoteAs,
      'tenantId': ?tenantId,
    };
  }

  factory BgpPeerV2State.fromMap(Map<String, dynamic> map) {
    return BgpPeerV2State(
      authType: map['authType'] == null ? null : (map['authType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      peerIp: map['peerIp'] == null ? null : (map['peerIp']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      remoteAs: map['remoteAs'] == null ? null : (map['remoteAs']! as int).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

