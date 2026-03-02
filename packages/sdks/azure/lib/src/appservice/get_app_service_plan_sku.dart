// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppServicePlanSku {
  /// Specifies the number of workers associated with this App Service Plan.
  final pulumi.Input<int> capacity;
  /// Specifies the plan's instance size.
  final pulumi.Input<String> size;
  /// Specifies the plan's pricing tier.
  final pulumi.Input<String> tier;

  /// Creates a new [GetAppServicePlanSku].
  /// [capacity] Specifies the number of workers associated with this App Service Plan.
  /// [size] Specifies the plan's instance size.
  /// [tier] Specifies the plan's pricing tier.
  GetAppServicePlanSku({
    required this.capacity,
    required this.size,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'size': size,
      'tier': tier,
    };
  }

  factory GetAppServicePlanSku.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanSku(
      capacity: (map['capacity'] as int).input(),
      size: (map['size'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

