// ignore_for_file: unused_element, unnecessary_cast


class PacketMirroringNetwork {
  /// The full self_link URL of the network where this rule is active.
  final String url;

  /// Creates a new [PacketMirroringNetwork].
  /// [url] The full self_link URL of the network where this rule is active.
  PacketMirroringNetwork({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory PacketMirroringNetwork.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetwork(
      url: map['url'] as String,
    );
  }
}

