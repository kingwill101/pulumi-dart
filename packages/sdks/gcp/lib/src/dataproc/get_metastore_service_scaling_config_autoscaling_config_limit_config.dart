// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig {
  /// The maximum scaling factor that the service will autoscale to. The default value is 6.0.
  final pulumi.Input<double> maxScalingFactor;
  /// The minimum scaling factor that the service will autoscale to. The default value is 0.1.
  final pulumi.Input<double> minScalingFactor;

  /// Creates a new [GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig].
  /// [maxScalingFactor] The maximum scaling factor that the service will autoscale to. The default value is 6.0.
  /// [minScalingFactor] The minimum scaling factor that the service will autoscale to. The default value is 0.1.
  GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig({
    required this.maxScalingFactor,
    required this.minScalingFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScalingFactor': maxScalingFactor,
      'minScalingFactor': minScalingFactor,
    };
  }

  factory GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig(
      maxScalingFactor: (map['maxScalingFactor'] as double).input(),
      minScalingFactor: (map['minScalingFactor'] as double).input(),
    );
  }
}

