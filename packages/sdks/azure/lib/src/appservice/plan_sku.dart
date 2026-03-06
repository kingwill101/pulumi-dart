// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanSku {
  /// Specifies the number of workers associated with this App Service Plan.
  final pulumi.Input<int>? capacity;
  /// Specifies the plan's instance size.
  final pulumi.Input<String> size;
  /// Specifies the plan's pricing tier.
  final pulumi.Input<String> tier;

  /// Creates a new [PlanSku].
  /// [capacity] Specifies the number of workers associated with this App Service Plan.
  /// [size] Specifies the plan's instance size.
  /// [tier] Specifies the plan's pricing tier.
  const PlanSku({
    this.capacity,
    required this.size,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'size': size,
      'tier': tier,
    };
  }

  factory PlanSku.fromMap(Map<String, dynamic> map) {
    return PlanSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: pulumi.Input.fromValue(map['size'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

