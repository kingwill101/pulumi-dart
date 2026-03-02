// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_peer_bfd_session_initialization_mode_compute_beta.dart';

class RouterBgpPeerBfdComputeBeta {
  /// The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final pulumi.Input<int>? minReceiveInterval;
  /// The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final pulumi.Input<int>? minTransmitInterval;
  /// The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  final pulumi.Input<int>? multiplier;
  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  final pulumi.Input<RouterBgpPeerBfdSessionInitializationModeComputeBeta>? sessionInitializationMode;

  /// Creates a new [RouterBgpPeerBfdComputeBeta].
  /// [minReceiveInterval] The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  /// [minTransmitInterval] The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  /// [multiplier] The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  /// [sessionInitializationMode] The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  RouterBgpPeerBfdComputeBeta({
    this.minReceiveInterval,
    this.minTransmitInterval,
    this.multiplier,
    this.sessionInitializationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReceiveInterval': ?minReceiveInterval,
      'minTransmitInterval': ?minTransmitInterval,
      'multiplier': ?multiplier,
      'sessionInitializationMode': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerBfdSessionInitializationModeComputeBeta, String>(sessionInitializationMode, (value) => value.value),
    };
  }

  factory RouterBgpPeerBfdComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerBfdComputeBeta(
      minReceiveInterval: map['minReceiveInterval'] == null ? null : (map['minReceiveInterval']! as int).input(),
      minTransmitInterval: map['minTransmitInterval'] == null ? null : (map['minTransmitInterval']! as int).input(),
      multiplier: map['multiplier'] == null ? null : (map['multiplier']! as int).input(),
      sessionInitializationMode: map['sessionInitializationMode'] == null ? null : (RouterBgpPeerBfdSessionInitializationModeComputeBeta.fromValue(map['sessionInitializationMode']! as String)).input(),
    );
  }
}

