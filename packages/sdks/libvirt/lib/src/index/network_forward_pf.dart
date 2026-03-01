// ignore_for_file: unused_element, unnecessary_cast


class NetworkForwardPf {
  /// Specifies the device to be used for per-packet forwarding service.
  final String dev;

  /// Creates a new [NetworkForwardPf].
  /// [dev] Specifies the device to be used for per-packet forwarding service.
  NetworkForwardPf({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory NetworkForwardPf.fromMap(Map<String, dynamic> map) {
    return NetworkForwardPf(
      dev: map['dev'] as String,
    );
  }
}

