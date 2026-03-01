// ignore_for_file: unused_element, unnecessary_cast


class GetExpressRouteCircuitSku {
  /// The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  final String family;
  /// The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  final String tier;

  /// Creates a new [GetExpressRouteCircuitSku].
  /// [family] The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  /// [tier] The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  GetExpressRouteCircuitSku({
    required this.family,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'tier': tier,
    };
  }

  factory GetExpressRouteCircuitSku.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitSku(
      family: map['family'] as String,
      tier: map['tier'] as String,
    );
  }
}

