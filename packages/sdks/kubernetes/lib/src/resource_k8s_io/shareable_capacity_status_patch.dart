// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ShareableCapacityStatus reports aggregate amounts for a single shareable capacity key.
class ShareableCapacityStatusPatch {
  /// Available is Total minus Consumed, never negative.
  final pulumi.Input<String?>? available;
  /// Consumed is the amount drawn by current allocations.
  final pulumi.Input<String?>? consumed;
  /// Name is the capacity name.
  final pulumi.Input<String?>? name;
  /// Total is the sum of this capacity across shareable devices in the pool.
  final pulumi.Input<String?>? total;

  /// Creates a new [ShareableCapacityStatusPatch].
  /// [available] Available is Total minus Consumed, never negative.
  /// [consumed] Consumed is the amount drawn by current allocations.
  /// [name] Name is the capacity name.
  /// [total] Total is the sum of this capacity across shareable devices in the pool.
  const ShareableCapacityStatusPatch({
    this.available,
    this.consumed,
    this.name,
    this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': ?available,
      'consumed': ?consumed,
      'name': ?name,
      'total': ?total,
    };
  }

  factory ShareableCapacityStatusPatch.fromMap(Map<String, dynamic> map) {
    return ShareableCapacityStatusPatch(
      available: (() { final guardedValue = map['available']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumed: (() { final guardedValue = map['consumed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      total: (() { final guardedValue = map['total']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
