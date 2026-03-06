// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressRouteCircuitSku {
  /// The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  ///
  /// &gt; **Note:** You can migrate from `MeteredData` to `UnlimitedData`, but not the other way around.
  final pulumi.Input<String> family;
  /// The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  final pulumi.Input<String> tier;

  /// Creates a new [ExpressRouteCircuitSku].
  /// [family] The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  /// [tier] The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  const ExpressRouteCircuitSku({
    required this.family,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'tier': tier,
    };
  }

  factory ExpressRouteCircuitSku.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitSku(
      family: pulumi.Input.fromValue(map['family'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

