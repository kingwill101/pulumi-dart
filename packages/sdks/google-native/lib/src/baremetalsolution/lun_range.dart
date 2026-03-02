// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A LUN(Logical Unit Number) range.
class LunRange {
  /// Number of LUNs to create.
  final pulumi.Input<int>? quantity;
  /// The requested size of each LUN, in GB.
  final pulumi.Input<int>? sizeGb;

  /// Creates a new [LunRange].
  /// [quantity] Number of LUNs to create.
  /// [sizeGb] The requested size of each LUN, in GB.
  LunRange({
    this.quantity,
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quantity': ?quantity,
      'sizeGb': ?sizeGb,
    };
  }

  factory LunRange.fromMap(Map<String, dynamic> map) {
    return LunRange(
      quantity: map['quantity'] == null ? null : (map['quantity'] as int).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb'] as int).input(),
    );
  }
}

