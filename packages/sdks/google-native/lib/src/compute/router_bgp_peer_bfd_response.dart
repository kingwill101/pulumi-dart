// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterBgpPeerBfdResponse {
  /// The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final pulumi.Input<int> minReceiveInterval;
  /// The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final pulumi.Input<int> minTransmitInterval;
  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
  final pulumi.Input<String> mode;
  /// The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  final pulumi.Input<int> multiplier;
  /// The BFD packet mode for this BGP peer. If set to CONTROL_AND_ECHO, BFD echo mode is enabled for this BGP peer. In this mode, if the peer router also has BFD echo mode enabled, BFD echo packets will be sent to the other router. If the peer router does not have BFD echo mode enabled, only control packets will be sent. If set to CONTROL_ONLY, BFD echo mode is disabled for this BGP peer. If this router and the peer router have a multihop connection, this should be set to CONTROL_ONLY as BFD echo mode is only supported on singlehop connections. The default is CONTROL_AND_ECHO.
  final pulumi.Input<String> packetMode;
  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  final pulumi.Input<String> sessionInitializationMode;
  /// The minimum interval, in milliseconds, between BFD control packets transmitted to and received from the peer router when BFD echo mode is enabled on both routers. The actual transmit and receive intervals are negotiated between the two routers and are equal to the greater of this value and the corresponding interval on the other router. If set, this value must be between 1000 and 30000. The default is 5000.
  final pulumi.Input<int> slowTimerInterval;

  /// Creates a new [RouterBgpPeerBfdResponse].
  /// [minReceiveInterval] The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  /// [minTransmitInterval] The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  /// [mode] The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
  /// [multiplier] The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  /// [packetMode] The BFD packet mode for this BGP peer. If set to CONTROL_AND_ECHO, BFD echo mode is enabled for this BGP peer. In this mode, if the peer router also has BFD echo mode enabled, BFD echo packets will be sent to the other router. If the peer router does not have BFD echo mode enabled, only control packets will be sent. If set to CONTROL_ONLY, BFD echo mode is disabled for this BGP peer. If this router and the peer router have a multihop connection, this should be set to CONTROL_ONLY as BFD echo mode is only supported on singlehop connections. The default is CONTROL_AND_ECHO.
  /// [sessionInitializationMode] The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  /// [slowTimerInterval] The minimum interval, in milliseconds, between BFD control packets transmitted to and received from the peer router when BFD echo mode is enabled on both routers. The actual transmit and receive intervals are negotiated between the two routers and are equal to the greater of this value and the corresponding interval on the other router. If set, this value must be between 1000 and 30000. The default is 5000.
  RouterBgpPeerBfdResponse({
    required this.minReceiveInterval,
    required this.minTransmitInterval,
    required this.mode,
    required this.multiplier,
    required this.packetMode,
    required this.sessionInitializationMode,
    required this.slowTimerInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReceiveInterval': minReceiveInterval,
      'minTransmitInterval': minTransmitInterval,
      'mode': mode,
      'multiplier': multiplier,
      'packetMode': packetMode,
      'sessionInitializationMode': sessionInitializationMode,
      'slowTimerInterval': slowTimerInterval,
    };
  }

  factory RouterBgpPeerBfdResponse.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerBfdResponse(
      minReceiveInterval: pulumi.Input.fromValue(map['minReceiveInterval'] as int),
      minTransmitInterval: pulumi.Input.fromValue(map['minTransmitInterval'] as int),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      multiplier: pulumi.Input.fromValue(map['multiplier'] as int),
      packetMode: pulumi.Input.fromValue(map['packetMode'] as String),
      sessionInitializationMode: pulumi.Input.fromValue(map['sessionInitializationMode'] as String),
      slowTimerInterval: pulumi.Input.fromValue(map['slowTimerInterval'] as int),
    );
  }
}

