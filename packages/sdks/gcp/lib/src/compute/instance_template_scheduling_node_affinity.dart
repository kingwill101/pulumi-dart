// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceTemplateSchedulingNodeAffinity {
  /// The key for the node affinity label.
  final pulumi.Input<String> key;
  /// The operator. Can be `IN` for node-affinities
  /// or `NOT_IN` for anti-affinities.
  final pulumi.Input<String> operator;
  /// Corresponds to the label values of a reservation resource.
  final pulumi.Input<List<String>> values;

  /// Creates a new [InstanceTemplateSchedulingNodeAffinity].
  /// [key] The key for the node affinity label.
  /// [operator] The operator. Can be `IN` for node-affinities
  /// [values] Corresponds to the label values of a reservation resource.
  InstanceTemplateSchedulingNodeAffinity({
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

  factory InstanceTemplateSchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateSchedulingNodeAffinity(
      key: (map['key'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

