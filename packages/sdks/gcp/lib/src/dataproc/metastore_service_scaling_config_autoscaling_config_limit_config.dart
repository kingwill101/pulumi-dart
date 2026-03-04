// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetastoreServiceScalingConfigAutoscalingConfigLimitConfig {
  /// The maximum scaling factor that the service will autoscale to. The default value is 6.0.
  final pulumi.Input<double>? maxScalingFactor;

  /// The minimum scaling factor that the service will autoscale to. The default value is 0.1.
  final pulumi.Input<double>? minScalingFactor;

  /// Creates a new [MetastoreServiceScalingConfigAutoscalingConfigLimitConfig].
  /// [maxScalingFactor] The maximum scaling factor that the service will autoscale to. The default value is 6.0.
  /// [minScalingFactor] The minimum scaling factor that the service will autoscale to. The default value is 0.1.
  MetastoreServiceScalingConfigAutoscalingConfigLimitConfig({
    this.maxScalingFactor,
    this.minScalingFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScalingFactor': ?maxScalingFactor,
      'minScalingFactor': ?minScalingFactor,
    };
  }

  factory MetastoreServiceScalingConfigAutoscalingConfigLimitConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetastoreServiceScalingConfigAutoscalingConfigLimitConfig(
      maxScalingFactor: (() {
        final guardedValue = map['maxScalingFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      minScalingFactor: (() {
        final guardedValue = map['minScalingFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
