// ignore_for_file: unused_element, unnecessary_cast


/// Configuration details of app service plan
class AppServicePlanConfiguration {
  /// The number of workers in app service plan. If this is not set or set to 0, auto scale will be configured for the app service plan, otherwise, instance count is set to this number.
  final int? capacity;
  /// The App Service plan tier.
  final String? tier;

  /// Creates a new [AppServicePlanConfiguration].
  /// [capacity] The number of workers in app service plan. If this is not set or set to 0, auto scale will be configured for the app service plan, otherwise, instance count is set to this number.
  /// [tier] The App Service plan tier.
  AppServicePlanConfiguration({
    this.capacity,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'tier': ?tier,
    };
  }

  factory AppServicePlanConfiguration.fromMap(Map<String, dynamic> map) {
    return AppServicePlanConfiguration(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

