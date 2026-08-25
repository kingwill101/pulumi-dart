// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateScaling {
  /// (Optional, Beta)
  /// Determines a threshold for concurrency utilization before scaling begins. Accepted values are between 0.1 and 0.95 (inclusive) or 0.0 to disable concurrency utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled.
  final pulumi.Input<double?>? concurrencyUtilization;
  /// (Optional, Beta)
  /// Determines a threshold for CPU utilization before scaling begins. Accepted values are between 0.1 and 0.95 (inclusive) or 0.0 to disable CPU utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled.
  final pulumi.Input<double?>? cpuUtilization;
  /// Combined maximum number of instances for all revisions receiving traffic.
  final pulumi.Input<int?>? maxInstanceCount;
  /// Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  final pulumi.Input<int?>? minInstanceCount;

  /// Creates a new [ServiceTemplateScaling].
  /// [concurrencyUtilization] (Optional, Beta)
  /// [cpuUtilization] (Optional, Beta)
  /// [maxInstanceCount] Combined maximum number of instances for all revisions receiving traffic.
  /// [minInstanceCount] Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  const ServiceTemplateScaling({
    this.concurrencyUtilization,
    this.cpuUtilization,
    this.maxInstanceCount,
    this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyUtilization': ?concurrencyUtilization,
      'cpuUtilization': ?cpuUtilization,
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
    };
  }

  factory ServiceTemplateScaling.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateScaling(
      concurrencyUtilization: (() { final guardedValue = map['concurrencyUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      cpuUtilization: (() { final guardedValue = map['cpuUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxInstanceCount: (() { final guardedValue = map['maxInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minInstanceCount: (() { final guardedValue = map['minInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
