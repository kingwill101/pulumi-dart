// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy {
  /// For `mode: deferred`: Set the maximum number of seconds to wait before forcing the update. When omitted, the default maximum delay applies.
  final pulumi.Input<double> maxDelay;
  /// For `mode: immediate`: Apply Durable Object code updates immediately.
  final pulumi.Input<String> mode;

  /// Creates a new [GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy].
  /// [maxDelay] For `mode: deferred`: Set the maximum number of seconds to wait before forcing the update. When omitted, the default maximum delay applies.
  /// [mode] For `mode: immediate`: Apply Durable Object code updates immediately.
  const GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy({
    required this.maxDelay,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDelay': maxDelay,
      'mode': mode,
    };
  }

  factory GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy(
      maxDelay: pulumi.Input.fromValue((map['maxDelay'] as num).toDouble()),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
