// ignore_for_file: unused_element, unnecessary_cast


/// Configuration details of app service plan
class AppServicePlanConfigurationResponse {
  /// The number of workers in app service plan. If this is not set or set to 0, auto scale will be configured for the app service plan, otherwise, instance count is set to this number.
  final int? capacity;
  /// The App Service plan tier.
  final String? tier;

  /// Creates a new [AppServicePlanConfigurationResponse].
  /// [capacity] The number of workers in app service plan. If this is not set or set to 0, auto scale will be configured for the app service plan, otherwise, instance count is set to this number.
  /// [tier] The App Service plan tier.
  AppServicePlanConfigurationResponse({
    this.capacity,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'tier': ?tier,
    };
  }

  factory AppServicePlanConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AppServicePlanConfigurationResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

