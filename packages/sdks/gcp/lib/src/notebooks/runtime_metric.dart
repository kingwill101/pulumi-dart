// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeMetric {
  /// (Output)
  /// Contains runtime daemon metrics, such as OS and kernels and
  /// sessions stats.
  final pulumi.Input<Map<String, String>?>? systemMetrics;

  /// Creates a new [RuntimeMetric].
  /// [systemMetrics] (Output)
  const RuntimeMetric({
    this.systemMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemMetrics': ?systemMetrics,
    };
  }

  factory RuntimeMetric.fromMap(Map<String, dynamic> map) {
    return RuntimeMetric(
      systemMetrics: (() { final guardedValue = map['systemMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
