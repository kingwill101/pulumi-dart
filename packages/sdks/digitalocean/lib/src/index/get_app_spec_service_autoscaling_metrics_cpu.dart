// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceAutoscalingMetricsCpu {
  /// The average target CPU utilization for the component.
  final pulumi.Input<int> percent;

  /// Creates a new [GetAppSpecServiceAutoscalingMetricsCpu].
  /// [percent] The average target CPU utilization for the component.
  GetAppSpecServiceAutoscalingMetricsCpu({
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
    };
  }

  factory GetAppSpecServiceAutoscalingMetricsCpu.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceAutoscalingMetricsCpu(
      percent: pulumi.Input.fromValue(map['percent'] as int),
    );
  }
}

