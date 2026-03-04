// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_scaling_config_autoscaling_config.dart';

class MetastoreServiceScalingConfig {
  /// Represents the autoscaling configuration of a metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceScalingConfigAutoscalingConfig>?
  autoscalingConfig;

  /// Metastore instance sizes.
  /// Possible values are: `EXTRA_SMALL`, `SMALL`, `MEDIUM`, `LARGE`, `EXTRA_LARGE`.
  final pulumi.Input<String>? instanceSize;

  /// Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final pulumi.Input<double>? scalingFactor;

  /// Creates a new [MetastoreServiceScalingConfig].
  /// [autoscalingConfig] Represents the autoscaling configuration of a metastore service.
  /// [instanceSize] Metastore instance sizes.
  /// [scalingFactor] Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  MetastoreServiceScalingConfig({
    this.autoscalingConfig,
    this.instanceSize,
    this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            MetastoreServiceScalingConfigAutoscalingConfig,
            Map<String, dynamic>
          >(autoscalingConfig, (value) => value.toMap()),
      'instanceSize': ?instanceSize,
      'scalingFactor': ?scalingFactor,
    };
  }

  factory MetastoreServiceScalingConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceScalingConfig(
      autoscalingConfig: (() {
        final guardedValue = map['autoscalingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetastoreServiceScalingConfigAutoscalingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceSize: (() {
        final guardedValue = map['instanceSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingFactor: (() {
        final guardedValue = map['scalingFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
