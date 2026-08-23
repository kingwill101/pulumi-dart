// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeSwapStatus represents swap memory information.
class NodeSwapStatus {
  /// Total amount of swap memory in bytes.
  final pulumi.Input<int>? capacity;

  /// Creates a new [NodeSwapStatus].
  /// [capacity] Total amount of swap memory in bytes.
  const NodeSwapStatus({
    this.capacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
    };
  }

  factory NodeSwapStatus.fromMap(Map<String, dynamic> map) {
    return NodeSwapStatus(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
