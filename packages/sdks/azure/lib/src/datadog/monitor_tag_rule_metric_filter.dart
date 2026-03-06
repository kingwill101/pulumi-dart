// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorTagRuleMetricFilter {
  /// Allowed values Include or Exclude.
  final pulumi.Input<String> action;
  /// Name of the Tag.
  final pulumi.Input<String> name;
  /// Value of the Tag.
  final pulumi.Input<String> value;

  /// Creates a new [MonitorTagRuleMetricFilter].
  /// [action] Allowed values Include or Exclude.
  /// [name] Name of the Tag.
  /// [value] Value of the Tag.
  const MonitorTagRuleMetricFilter({
    required this.action,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'value': value,
    };
  }

  factory MonitorTagRuleMetricFilter.fromMap(Map<String, dynamic> map) {
    return MonitorTagRuleMetricFilter(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

