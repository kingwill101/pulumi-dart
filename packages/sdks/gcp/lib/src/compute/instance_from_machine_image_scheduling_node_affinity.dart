// ignore_for_file: unused_element, unnecessary_cast


class InstanceFromMachineImageSchedulingNodeAffinity {
  final String key;
  final String operator;
  final List<String> values;

  /// Creates a new [InstanceFromMachineImageSchedulingNodeAffinity].
  /// [key] Required.
  /// [operator] Required.
  /// [values] Required.
  InstanceFromMachineImageSchedulingNodeAffinity({
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

  factory InstanceFromMachineImageSchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageSchedulingNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

