// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU parameters supplied to the create Redis Enterprise cluster operation.
class SkuResponse {
  /// This property is only used with Enterprise and EnterpriseFlash SKUs. Determines the size of the cluster. Valid values are (2, 4, 6, ...) for Enterprise SKUs and (3, 9, 15, ...) for EnterpriseFlash SKUs.
  final pulumi.Input<int>? capacity;
  /// The level of Redis Enterprise cluster to deploy. Possible values: ('Balanced_B5', 'MemoryOptimized_M10', 'ComputeOptimized_X5', etc.). For more information on SKUs see the latest pricing documentation. Note that additional SKUs may become supported in the future.
  final pulumi.Input<String> name;

  /// Creates a new [SkuResponse].
  /// [capacity] This property is only used with Enterprise and EnterpriseFlash SKUs. Determines the size of the cluster. Valid values are (2, 4, 6, ...) for Enterprise SKUs and (3, 9, 15, ...) for EnterpriseFlash SKUs.
  /// [name] The level of Redis Enterprise cluster to deploy. Possible values: ('Balanced_B5', 'MemoryOptimized_M10', 'ComputeOptimized_X5', etc.). For more information on SKUs see the latest pricing documentation. Note that additional SKUs may become supported in the future.
  const SkuResponse({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
