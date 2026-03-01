// ignore_for_file: unused_element, unnecessary_cast


class BgpSpeakerV2AdvertisedRoute {
  final String? destination;
  final String? nextHop;

  /// Creates a new [BgpSpeakerV2AdvertisedRoute].
  /// [destination] Optional.
  /// [nextHop] Optional.
  BgpSpeakerV2AdvertisedRoute({
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
      destination: map['destination'] == null ? null : map['destination'] as String,
      nextHop: map['nextHop'] == null ? null : map['nextHop'] as String,
    );
  }
}

