// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceSchedulingNodeAffinity {
  final String key;
  final String operator;
  final List<String> values;

  /// Creates a new [GetInstanceSchedulingNodeAffinity].
  /// [key] Required.
  /// [operator] Required.
  /// [values] Required.
  GetInstanceSchedulingNodeAffinity({
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

  factory GetInstanceSchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return GetInstanceSchedulingNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

