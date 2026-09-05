// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ShareableCapacityStatus reports aggregate amounts for a single shareable capacity key.
class ShareableCapacityStatus {
  /// Available is Total minus Consumed, never negative.
  final pulumi.Input<String> available;
  /// Consumed is the amount drawn by current allocations.
  final pulumi.Input<String> consumed;
  /// Name is the capacity name.
  final pulumi.Input<String> name;
  /// Total is the sum of this capacity across shareable devices in the pool.
  final pulumi.Input<String> total;

  /// Creates a new [ShareableCapacityStatus].
  /// [available] Available is Total minus Consumed, never negative.
  /// [consumed] Consumed is the amount drawn by current allocations.
  /// [name] Name is the capacity name.
  /// [total] Total is the sum of this capacity across shareable devices in the pool.
  const ShareableCapacityStatus({
    required this.available,
    required this.consumed,
    required this.name,
    required this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'consumed': consumed,
      'name': name,
      'total': total,
    };
  }

  factory ShareableCapacityStatus.fromMap(Map<String, dynamic> map) {
    return ShareableCapacityStatus(
      available: pulumi.Input.fromValue(map['available'] as String),
      consumed: pulumi.Input.fromValue(map['consumed'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      total: pulumi.Input.fromValue(map['total'] as String),
    );
  }
}
