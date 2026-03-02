// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SkuCostResponse {
  /// The extended unit.
  final pulumi.Input<String>? extendedUnit;
  /// The meter id.
  final pulumi.Input<String> meterId;
  /// The quantity.
  final pulumi.Input<int>? quantity;

  /// Creates a new [SkuCostResponse].
  /// [extendedUnit] The extended unit.
  /// [meterId] The meter id.
  /// [quantity] The quantity.
  SkuCostResponse({
    this.extendedUnit,
    required this.meterId,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedUnit': ?extendedUnit,
      'meterId': meterId,
      'quantity': ?quantity,
    };
  }

  factory SkuCostResponse.fromMap(Map<String, dynamic> map) {
    return SkuCostResponse(
      extendedUnit: map['extendedUnit'] == null ? null : (map['extendedUnit'] as String).input(),
      meterId: (map['meterId'] as String).input(),
      quantity: map['quantity'] == null ? null : (map['quantity'] as int).input(),
    );
  }
}

