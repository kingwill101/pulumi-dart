// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TagRuleMetricTagFilter {
  /// Valid actions for a filtering tag. Possible values are `Exclude` and `Include`. Exclusion takes priority over inclusion.
  final pulumi.Input<String> action;
  /// Specifies the name (also known as the key) of the tag.
  final pulumi.Input<String> name;
  /// Specifies the value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [TagRuleMetricTagFilter].
  /// [action] Valid actions for a filtering tag. Possible values are `Exclude` and `Include`. Exclusion takes priority over inclusion.
  /// [name] Specifies the name (also known as the key) of the tag.
  /// [value] Specifies the value of the tag.
  const TagRuleMetricTagFilter({
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

  factory TagRuleMetricTagFilter.fromMap(Map<String, dynamic> map) {
    return TagRuleMetricTagFilter(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

