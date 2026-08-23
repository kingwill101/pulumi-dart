// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkMtu {
  /// Defines the specific size of the MTU for network communication.
  final pulumi.Input<double> size;

  /// Creates a new [NetworkMtu].
  /// [size] Defines the specific size of the MTU for network communication.
  const NetworkMtu({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory NetworkMtu.fromMap(Map<String, dynamic> map) {
    return NetworkMtu(
      size: pulumi.Input.fromValue(map['size'] as double),
    );
  }
}
