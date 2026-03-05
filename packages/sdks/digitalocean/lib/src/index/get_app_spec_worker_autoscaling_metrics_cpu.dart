// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecWorkerAutoscalingMetricsCpu {
  /// The average target CPU utilization for the component.
  final pulumi.Input<int> percent;

  /// Creates a new [GetAppSpecWorkerAutoscalingMetricsCpu].
  /// [percent] The average target CPU utilization for the component.
  GetAppSpecWorkerAutoscalingMetricsCpu({
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
    };
  }

  factory GetAppSpecWorkerAutoscalingMetricsCpu.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerAutoscalingMetricsCpu(
      percent: pulumi.Input.fromValue(map['percent'] as int),
    );
  }
}

