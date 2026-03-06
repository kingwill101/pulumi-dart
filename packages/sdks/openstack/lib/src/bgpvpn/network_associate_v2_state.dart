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
  const NetworkAssociateV2State({
    this.bgpvpnId,
    this.networkId,
    this.projectId,
    this.region,
  });

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
      bgpvpnId: (() { final guardedValue = map['bgpvpnId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

