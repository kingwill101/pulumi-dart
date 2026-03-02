// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_peer_bfd_mode.dart';
import 'router_bgp_peer_bfd_packet_mode.dart';
import 'router_bgp_peer_bfd_session_initialization_mode.dart';

class RouterBgpPeerBfd {
  /// The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final pulumi.Input<int>? minReceiveInterval;
  /// The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final pulumi.Input<int>? minTransmitInterval;
  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
  final pulumi.Input<RouterBgpPeerBfdMode>? mode;
  /// The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  final pulumi.Input<int>? multiplier;
  /// The BFD packet mode for this BGP peer. If set to CONTROL_AND_ECHO, BFD echo mode is enabled for this BGP peer. In this mode, if the peer router also has BFD echo mode enabled, BFD echo packets will be sent to the other router. If the peer router does not have BFD echo mode enabled, only control packets will be sent. If set to CONTROL_ONLY, BFD echo mode is disabled for this BGP peer. If this router and the peer router have a multihop connection, this should be set to CONTROL_ONLY as BFD echo mode is only supported on singlehop connections. The default is CONTROL_AND_ECHO.
  final pulumi.Input<RouterBgpPeerBfdPacketMode>? packetMode;
  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  final pulumi.Input<RouterBgpPeerBfdSessionInitializationMode>? sessionInitializationMode;
  /// The minimum interval, in milliseconds, between BFD control packets transmitted to and received from the peer router when BFD echo mode is enabled on both routers. The actual transmit and receive intervals are negotiated between the two routers and are equal to the greater of this value and the corresponding interval on the other router. If set, this value must be between 1000 and 30000. The default is 5000.
  final pulumi.Input<int>? slowTimerInterval;

  /// Creates a new [RouterBgpPeerBfd].
  /// [minReceiveInterval] The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  /// [minTransmitInterval] The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  /// [mode] The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
  /// [multiplier] The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  /// [packetMode] The BFD packet mode for this BGP peer. If set to CONTROL_AND_ECHO, BFD echo mode is enabled for this BGP peer. In this mode, if the peer router also has BFD echo mode enabled, BFD echo packets will be sent to the other router. If the peer router does not have BFD echo mode enabled, only control packets will be sent. If set to CONTROL_ONLY, BFD echo mode is disabled for this BGP peer. If this router and the peer router have a multihop connection, this should be set to CONTROL_ONLY as BFD echo mode is only supported on singlehop connections. The default is CONTROL_AND_ECHO.
  /// [sessionInitializationMode] The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  /// [slowTimerInterval] The minimum interval, in milliseconds, between BFD control packets transmitted to and received from the peer router when BFD echo mode is enabled on both routers. The actual transmit and receive intervals are negotiated between the two routers and are equal to the greater of this value and the corresponding interval on the other router. If set, this value must be between 1000 and 30000. The default is 5000.
  RouterBgpPeerBfd({
    this.minReceiveInterval,
    this.minTransmitInterval,
    this.mode,
    this.multiplier,
    this.packetMode,
    this.sessionInitializationMode,
    this.slowTimerInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReceiveInterval': ?minReceiveInterval,
      'minTransmitInterval': ?minTransmitInterval,
      'mode': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerBfdMode, String>(mode, (value) => value.value),
      'multiplier': ?multiplier,
      'packetMode': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerBfdPacketMode, String>(packetMode, (value) => value.value),
      'sessionInitializationMode': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerBfdSessionInitializationMode, String>(sessionInitializationMode, (value) => value.value),
      'slowTimerInterval': ?slowTimerInterval,
    };
  }

  factory RouterBgpPeerBfd.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerBfd(
      minReceiveInterval: map['minReceiveInterval'] == null ? null : (map['minReceiveInterval'] as int).input(),
      minTransmitInterval: map['minTransmitInterval'] == null ? null : (map['minTransmitInterval'] as int).input(),
      mode: map['mode'] == null ? null : (RouterBgpPeerBfdMode.fromValue(map['mode'] as String)).input(),
      multiplier: map['multiplier'] == null ? null : (map['multiplier'] as int).input(),
      packetMode: map['packetMode'] == null ? null : (RouterBgpPeerBfdPacketMode.fromValue(map['packetMode'] as String)).input(),
      sessionInitializationMode: map['sessionInitializationMode'] == null ? null : (RouterBgpPeerBfdSessionInitializationMode.fromValue(map['sessionInitializationMode'] as String)).input(),
      slowTimerInterval: map['slowTimerInterval'] == null ? null : (map['slowTimerInterval'] as int).input(),
    );
  }
}

