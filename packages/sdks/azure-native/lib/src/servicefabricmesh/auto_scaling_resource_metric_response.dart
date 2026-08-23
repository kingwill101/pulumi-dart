// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the resource that is used for triggering auto scaling.
class AutoScalingResourceMetricResponse {
  /// Enumerates the metrics that are used for triggering auto scaling.
  /// Expected value is 'Resource'.
  final pulumi.Input<String> kind;
  /// Name of the resource.
  final pulumi.Input<String> name;

  /// Creates a new [AutoScalingResourceMetricResponse].
  /// [kind] Enumerates the metrics that are used for triggering auto scaling.
  /// [name] Name of the resource.
  const AutoScalingResourceMetricResponse({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
    };
  }

  factory AutoScalingResourceMetricResponse.fromMap(Map<String, dynamic> map) {
    return AutoScalingResourceMetricResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
