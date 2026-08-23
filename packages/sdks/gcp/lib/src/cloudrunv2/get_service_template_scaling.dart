// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateScaling {
  /// Determines a threshold for concurrency utilization before scaling begins. Accepted values are between 0.1 and 0.95 (inclusive) or 0.0 to disable concurrency utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled.
  final pulumi.Input<double> concurrencyUtilization;
  /// Determines a threshold for CPU utilization before scaling begins. Accepted values are between 0.1 and 0.95 (inclusive) or 0.0 to disable CPU utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled.
  final pulumi.Input<double> cpuUtilization;
  /// Maximum number of serving instances that this resource should have. Must not be less than minimum instance count. If absent, Cloud Run will calculate
  /// a default value based on the project's available container instances quota in the region and specified instance size.
  final pulumi.Input<int> maxInstanceCount;
  /// Minimum number of serving instances that this resource should have. Defaults to 0. Must not be greater than maximum instance count.
  final pulumi.Input<int> minInstanceCount;

  /// Creates a new [GetServiceTemplateScaling].
  /// [concurrencyUtilization] Determines a threshold for concurrency utilization before scaling begins. Accepted values are between 0.1 and 0.95 (inclusive) or 0.0 to disable concurrency utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled.
  /// [cpuUtilization] Determines a threshold for CPU utilization before scaling begins. Accepted values are between 0.1 and 0.95 (inclusive) or 0.0 to disable CPU utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled.
  /// [maxInstanceCount] Maximum number of serving instances that this resource should have. Must not be less than minimum instance count. If absent, Cloud Run will calculate
  /// [minInstanceCount] Minimum number of serving instances that this resource should have. Defaults to 0. Must not be greater than maximum instance count.
  const GetServiceTemplateScaling({
    required this.concurrencyUtilization,
    required this.cpuUtilization,
    required this.maxInstanceCount,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyUtilization': concurrencyUtilization,
      'cpuUtilization': cpuUtilization,
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
    };
  }

  factory GetServiceTemplateScaling.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateScaling(
      concurrencyUtilization: pulumi.Input.fromValue(map['concurrencyUtilization'] as double),
      cpuUtilization: pulumi.Input.fromValue(map['cpuUtilization'] as double),
      maxInstanceCount: pulumi.Input.fromValue(map['maxInstanceCount'] as int),
      minInstanceCount: pulumi.Input.fromValue(map['minInstanceCount'] as int),
    );
  }
}
