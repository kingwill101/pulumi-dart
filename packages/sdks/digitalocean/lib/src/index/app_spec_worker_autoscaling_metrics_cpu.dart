// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecWorkerAutoscalingMetricsCpu {
  /// The average target CPU utilization for the component.
  final pulumi.Input<int> percent;

  /// Creates a new [AppSpecWorkerAutoscalingMetricsCpu].
  /// [percent] The average target CPU utilization for the component.
  const AppSpecWorkerAutoscalingMetricsCpu({
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
    };
  }

  factory AppSpecWorkerAutoscalingMetricsCpu.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerAutoscalingMetricsCpu(
      percent: pulumi.Input.fromValue(map['percent'] as int),
    );
  }
}

