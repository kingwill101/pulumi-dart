// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_config_instance_size_metastore_v1beta.dart';

/// Represents the scaling configuration of a metastore service.
class ScalingConfigMetastoreV1beta {
  /// An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  final pulumi.Input<ScalingConfigInstanceSizeMetastoreV1beta>? instanceSize;
  /// Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final pulumi.Input<double>? scalingFactor;

  /// Creates a new [ScalingConfigMetastoreV1beta].
  /// [instanceSize] An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  /// [scalingFactor] Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  const ScalingConfigMetastoreV1beta({
    this.instanceSize,
    this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSize': ?pulumi.Input.mapOptionalInputValue<ScalingConfigInstanceSizeMetastoreV1beta, String>(instanceSize, (value) => value.wireValue),
      'scalingFactor': ?scalingFactor,
    };
  }

  factory ScalingConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return ScalingConfigMetastoreV1beta(
      instanceSize: (() { final guardedValue = map['instanceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScalingConfigInstanceSizeMetastoreV1beta.fromValue(guardedValue as String)); })(),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
