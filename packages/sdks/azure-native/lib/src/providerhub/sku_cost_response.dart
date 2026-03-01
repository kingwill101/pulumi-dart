// ignore_for_file: unused_element, unnecessary_cast


class SkuCostResponse {
  /// The extended unit.
  final String? extendedUnit;
  /// The meter id.
  final String meterId;
  /// The quantity.
  final int? quantity;

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
      extendedUnit: map['extendedUnit'] == null ? null : map['extendedUnit'] as String,
      meterId: map['meterId'] as String,
      quantity: map['quantity'] == null ? null : map['quantity'] as int,
    );
  }
}

