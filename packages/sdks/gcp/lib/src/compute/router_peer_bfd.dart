// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterPeerBfd {
  /// The minimum interval, in milliseconds, between BFD control packets
  /// received from the peer router. The actual value is negotiated
  /// between the two routers and is equal to the greater of this value
  /// and the transmit interval of the other router. If set, this value
  /// must be between 1000 and 30000.
  final pulumi.Input<int>? minReceiveInterval;
  /// The minimum interval, in milliseconds, between BFD control packets
  /// transmitted to the peer router. The actual value is negotiated
  /// between the two routers and is equal to the greater of this value
  /// and the corresponding receive interval of the other router. If set,
  /// this value must be between 1000 and 30000.
  final pulumi.Input<int>? minTransmitInterval;
  /// The number of consecutive BFD packets that must be missed before
  /// BFD declares that a peer is unavailable. If set, the value must
  /// be a value between 5 and 16.
  ///
  /// &lt;a name="nestedMd5AuthenticationKey"&gt;&lt;/a&gt;The `md5AuthenticationKey` block supports:
  final pulumi.Input<int>? multiplier;
  /// The BFD session initialization mode for this BGP peer.
  /// If set to `ACTIVE`, the Cloud Router will initiate the BFD session
  /// for this BGP peer. If set to `PASSIVE`, the Cloud Router will wait
  /// for the peer router to initiate the BFD session for this BGP peer.
  /// If set to `DISABLED`, BFD is disabled for this BGP peer.
  /// Possible values are: `ACTIVE`, `DISABLED`, `PASSIVE`.
  final pulumi.Input<String> sessionInitializationMode;

  /// Creates a new [RouterPeerBfd].
  /// [minReceiveInterval] The minimum interval, in milliseconds, between BFD control packets
  /// [minTransmitInterval] The minimum interval, in milliseconds, between BFD control packets
  /// [multiplier] The number of consecutive BFD packets that must be missed before
  /// [sessionInitializationMode] The BFD session initialization mode for this BGP peer.
  const RouterPeerBfd({
    this.minReceiveInterval,
    this.minTransmitInterval,
    this.multiplier,
    required this.sessionInitializationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReceiveInterval': ?minReceiveInterval,
      'minTransmitInterval': ?minTransmitInterval,
      'multiplier': ?multiplier,
      'sessionInitializationMode': sessionInitializationMode,
    };
  }

  factory RouterPeerBfd.fromMap(Map<String, dynamic> map) {
    return RouterPeerBfd(
      minReceiveInterval: (() { final guardedValue = map['minReceiveInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minTransmitInterval: (() { final guardedValue = map['minTransmitInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      multiplier: (() { final guardedValue = map['multiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sessionInitializationMode: pulumi.Input.fromValue(map['sessionInitializationMode'] as String),
    );
  }
}
