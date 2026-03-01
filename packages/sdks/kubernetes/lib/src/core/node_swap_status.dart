// ignore_for_file: unused_element, unnecessary_cast


/// NodeSwapStatus represents swap memory information.
class NodeSwapStatus {
  /// Total amount of swap memory in bytes.
  final int? capacity;

  /// Creates a new [NodeSwapStatus].
  /// [capacity] Total amount of swap memory in bytes.
  NodeSwapStatus({
    this.capacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
    };
  }

  factory NodeSwapStatus.fromMap(Map<String, dynamic> map) {
    return NodeSwapStatus(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
    );
  }
}

