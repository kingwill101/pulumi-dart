// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkForwardPf {
  /// Specifies the device to be used for per-packet forwarding service.
  final pulumi.Input<String> dev;

  /// Creates a new [NetworkForwardPf].
  /// [dev] Specifies the device to be used for per-packet forwarding service.
  const NetworkForwardPf({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory NetworkForwardPf.fromMap(Map<String, dynamic> map) {
    return NetworkForwardPf(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
