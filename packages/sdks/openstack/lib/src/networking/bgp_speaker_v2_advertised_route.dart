// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BgpSpeakerV2AdvertisedRoute {
  final pulumi.Input<String>? destination;
  final pulumi.Input<String>? nextHop;

  /// Creates a new [BgpSpeakerV2AdvertisedRoute].
  /// [destination] Optional.
  /// [nextHop] Optional.
  const BgpSpeakerV2AdvertisedRoute({
    this.destination,
    this.nextHop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'nextHop': ?nextHop,
    };
  }

  factory BgpSpeakerV2AdvertisedRoute.fromMap(Map<String, dynamic> map) {
    return BgpSpeakerV2AdvertisedRoute(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHop: (() { final guardedValue = map['nextHop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

