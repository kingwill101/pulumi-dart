// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTemplateSchedulingNodeAffinity {
  /// The key for the node affinity label.
  final String key;
  /// The operator. Can be `IN` for node-affinities
  /// or `NOT_IN` for anti-affinities.
  final String operator;
  final List<String> values;

  /// Creates a new [GetInstanceTemplateSchedulingNodeAffinity].
  /// [key] The key for the node affinity label.
  /// [operator] The operator. Can be `IN` for node-affinities
  /// [values] Required.
  GetInstanceTemplateSchedulingNodeAffinity({
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

  factory GetInstanceTemplateSchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateSchedulingNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

