// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration details of app service plan
class AppServicePlanConfiguration {
  /// The number of workers in app service plan. If this is not set or set to 0, auto scale will be configured for the app service plan, otherwise, instance count is set to this number.
  final pulumi.Input<int>? capacity;
  /// The App Service plan tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [AppServicePlanConfiguration].
  /// [capacity] The number of workers in app service plan. If this is not set or set to 0, auto scale will be configured for the app service plan, otherwise, instance count is set to this number.
  /// [tier] The App Service plan tier.
  const AppServicePlanConfiguration({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
