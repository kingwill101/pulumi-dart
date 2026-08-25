// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_dedicated_infrastructure_autoscaling_spec.dart';

class IndexDedicatedInfrastructure {
  /// Autoscaling specification.
  /// Structure is documented below.
  final pulumi.Input<IndexDedicatedInfrastructureAutoscalingSpec?>? autoscalingSpec;
  /// Mode of the dedicated infrastructure. Defaults to `PERFORMANCE_OPTIMIZED`.
  /// Possible values are: `MODE_UNSPECIFIED`, `STORAGE_OPTIMIZED`, `PERFORMANCE_OPTIMIZED`.
  final pulumi.Input<String?>? mode;

  /// Creates a new [IndexDedicatedInfrastructure].
  /// [autoscalingSpec] Autoscaling specification.
  /// [mode] Mode of the dedicated infrastructure. Defaults to `PERFORMANCE_OPTIMIZED`.
  const IndexDedicatedInfrastructure({
    this.autoscalingSpec,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSpec': ?pulumi.Input.mapOptionalInputValue<IndexDedicatedInfrastructureAutoscalingSpec, Map<String, dynamic>>(autoscalingSpec, (value) => value.toMap()),
      'mode': ?mode,
    };
  }

  factory IndexDedicatedInfrastructure.fromMap(Map<String, dynamic> map) {
    return IndexDedicatedInfrastructure(
      autoscalingSpec: (() { final guardedValue = map['autoscalingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexDedicatedInfrastructureAutoscalingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
