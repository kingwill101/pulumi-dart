// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_metric_spec_name.dart';

/// MetricSpec contains the specifications to use to calculate the desired nodes count when autoscaling is enabled.
class GoogleCloudMlV1MetricSpec {
  /// metric name.
  final pulumi.Input<GoogleCloudMlV1MetricSpecName>? name;
  /// Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  final pulumi.Input<int>? target;

  /// Creates a new [GoogleCloudMlV1MetricSpec].
  /// [name] metric name.
  /// [target] Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  GoogleCloudMlV1MetricSpec({
    this.name,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1MetricSpecName, String>(name, (value) => value.value),
      'target': ?target,
    };
  }

  factory GoogleCloudMlV1MetricSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MetricSpec(
      name: map['name'] == null ? null : (GoogleCloudMlV1MetricSpecName.fromValue(map['name']! as String)).input(),
      target: map['target'] == null ? null : (map['target']! as int).input(),
    );
  }
}

