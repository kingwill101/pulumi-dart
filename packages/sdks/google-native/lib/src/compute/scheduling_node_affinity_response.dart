// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinityResponse {
  /// Corresponds to the label key of Node resource.
  final pulumi.Input<String> key;
  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final pulumi.Input<String> operator;
  /// Corresponds to the label values of Node resource.
  final pulumi.Input<List<String>> values;

  /// Creates a new [SchedulingNodeAffinityResponse].
  /// [key] Corresponds to the label key of Node resource.
  /// [operator] Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  /// [values] Corresponds to the label values of Node resource.
  const SchedulingNodeAffinityResponse({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': values,
    };
  }

  factory SchedulingNodeAffinityResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
