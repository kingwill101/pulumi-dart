// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MetricSpec contains the specifications to use to calculate the desired nodes count when autoscaling is enabled.
class GoogleCloudMlV1MetricSpecResponse {
  /// metric name.
  final pulumi.Input<String> name;
  /// Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  final pulumi.Input<int> target;

  /// Creates a new [GoogleCloudMlV1MetricSpecResponse].
  /// [name] metric name.
  /// [target] Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  GoogleCloudMlV1MetricSpecResponse({
    required this.name,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'target': target,
    };
  }

  factory GoogleCloudMlV1MetricSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MetricSpecResponse(
      name: (map['name'] as String).input(),
      target: (map['target'] as int).input(),
    );
  }
}

