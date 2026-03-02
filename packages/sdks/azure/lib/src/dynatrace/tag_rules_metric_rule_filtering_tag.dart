// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TagRulesMetricRuleFilteringTag {
  /// Action of the filtering tag. Possible values are `Include` and `Exclude`.
  final pulumi.Input<String> action;
  /// Name of the filtering tag.
  final pulumi.Input<String> name;
  /// Value of the filtering tag.
  final pulumi.Input<String> value;

  /// Creates a new [TagRulesMetricRuleFilteringTag].
  /// [action] Action of the filtering tag. Possible values are `Include` and `Exclude`.
  /// [name] Name of the filtering tag.
  /// [value] Value of the filtering tag.
  TagRulesMetricRuleFilteringTag({
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

  factory TagRulesMetricRuleFilteringTag.fromMap(Map<String, dynamic> map) {
    return TagRulesMetricRuleFilteringTag(
      action: (map['action'] as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

