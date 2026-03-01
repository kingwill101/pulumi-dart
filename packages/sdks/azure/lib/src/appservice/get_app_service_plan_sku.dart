// ignore_for_file: unused_element, unnecessary_cast


class GetAppServicePlanSku {
  /// Specifies the number of workers associated with this App Service Plan.
  final int capacity;
  /// Specifies the plan's instance size.
  final String size;
  /// Specifies the plan's pricing tier.
  final String tier;

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
      capacity: map['capacity'] as int,
      size: map['size'] as String,
      tier: map['tier'] as String,
    );
  }
}

