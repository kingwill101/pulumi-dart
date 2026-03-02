// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolConfigAutoscalingMetricsCollection {
  /// The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is "1Minute".
  final pulumi.Input<String> granularity;
  /// The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled.
  final pulumi.Input<List<String>>? metrics;

  /// Creates a new [AwsNodePoolConfigAutoscalingMetricsCollection].
  /// [granularity] The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is "1Minute".
  /// [metrics] The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled.
  AwsNodePoolConfigAutoscalingMetricsCollection({
    required this.granularity,
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'granularity': granularity,
      'metrics': ?metrics,
    };
  }

  factory AwsNodePoolConfigAutoscalingMetricsCollection.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigAutoscalingMetricsCollection(
      granularity: (map['granularity'] as String).input(),
      metrics: map['metrics'] == null ? null : ((map['metrics'] as List).cast<String>()).input(),
    );
  }
}

