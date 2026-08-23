// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacitySku {
  /// The name of the SKU to use for the Fabric Capacity. Possible values are `F2`, `F4`, `F8`, `F16`, `F32`, `F64`, `F128`, `F256`, `F512`, `F1024`, `F2048`.
  final pulumi.Input<String> name;
  /// The tier of the SKU to use for the Fabric Capacity. The only possible value is `Fabric`.
  final pulumi.Input<String> tier;

  /// Creates a new [CapacitySku].
  /// [name] The name of the SKU to use for the Fabric Capacity. Possible values are `F2`, `F4`, `F8`, `F16`, `F32`, `F64`, `F128`, `F256`, `F512`, `F1024`, `F2048`.
  /// [tier] The tier of the SKU to use for the Fabric Capacity. The only possible value is `Fabric`.
  const CapacitySku({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory CapacitySku.fromMap(Map<String, dynamic> map) {
    return CapacitySku(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
