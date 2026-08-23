// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExpressRouteCircuitSku {
  /// The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  final pulumi.Input<String> family;
  /// The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  final pulumi.Input<String> tier;

  /// Creates a new [GetExpressRouteCircuitSku].
  /// [family] The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  /// [tier] The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  const GetExpressRouteCircuitSku({
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
      family: pulumi.Input.fromValue(map['family'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
