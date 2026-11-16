// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersDeploymentCodeUpdateStrategy {
  /// For `mode: deferred`: Set the maximum number of seconds to wait before forcing the update. When omitted, the default maximum delay applies.
  final pulumi.Input<double?>? maxDelay;
  /// For `mode: immediate`: Apply Durable Object code updates immediately.
  final pulumi.Input<String> mode;

  /// Creates a new [WorkersDeploymentCodeUpdateStrategy].
  /// [maxDelay] For `mode: deferred`: Set the maximum number of seconds to wait before forcing the update. When omitted, the default maximum delay applies.
  /// [mode] For `mode: immediate`: Apply Durable Object code updates immediately.
  const WorkersDeploymentCodeUpdateStrategy({
    this.maxDelay,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDelay': ?maxDelay,
      'mode': mode,
    };
  }

  factory WorkersDeploymentCodeUpdateStrategy.fromMap(Map<String, dynamic> map) {
    return WorkersDeploymentCodeUpdateStrategy(
      maxDelay: (() { final guardedValue = map['maxDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
