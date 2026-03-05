// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the resource that is used for triggering auto scaling.
class AutoScalingResourceMetric {
  /// Enumerates the metrics that are used for triggering auto scaling.
  /// Expected value is 'Resource'.
  final pulumi.Input<String> kind;
  /// Name of the resource.
  final pulumi.Input<String> name;

  /// Creates a new [AutoScalingResourceMetric].
  /// [kind] Enumerates the metrics that are used for triggering auto scaling.
  /// [name] Name of the resource.
  AutoScalingResourceMetric({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
    };
  }

  factory AutoScalingResourceMetric.fromMap(Map<String, dynamic> map) {
    return AutoScalingResourceMetric(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

