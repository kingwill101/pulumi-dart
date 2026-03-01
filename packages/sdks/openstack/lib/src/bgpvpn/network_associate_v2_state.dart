// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkAssociateV2 resources.
class NetworkAssociateV2State {
  /// The ID of the BGP VPN to which the network will be
  /// associated. Changing this creates a new BGP VPN network association
  final pulumi.Input<String>? bgpvpnId;
  /// The ID of the network to be associated with the BGP
  /// VPN. Changing this creates a new BGP VPN network association.
  final pulumi.Input<String>? networkId;
  /// The ID of the project that owns the BGP VPN network
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN network
  /// association.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN network association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN network association.
  final pulumi.Input<String>? region;

  /// Creates a new [NetworkAssociateV2State].
  /// [bgpvpnId] The ID of the BGP VPN to which the network will be
  /// [networkId] The ID of the network to be associated with the BGP
  /// [projectId] The ID of the project that owns the BGP VPN network
  /// [region] The region in which to obtain the V2 Networking client.
  NetworkAssociateV2State({
    pulumi.Output<String>? bgpvpnId,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
  }) :
      bgpvpnId = pulumi.Input.asOptionalInput<String>(bgpvpnId),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpvpnId': ?bgpvpnId,
      'networkId': ?networkId,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory NetworkAssociateV2State.fromMap(Map<String, dynamic> map) {
    return NetworkAssociateV2State(
      bgpvpnId: map['bgpvpnId'] == null ? null : pulumi.Output.create<String>(map['bgpvpnId'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

