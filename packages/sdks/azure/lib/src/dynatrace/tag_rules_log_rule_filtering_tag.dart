// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TagRulesLogRuleFilteringTag {
  /// Action of the filtering tag. Possible values are `Include` and `Exclude`.
  final pulumi.Input<String> action;
  /// Name of the filtering tag.
  final pulumi.Input<String> name;
  /// Value of the filtering tag.
  final pulumi.Input<String> value;

  /// Creates a new [TagRulesLogRuleFilteringTag].
  /// [action] Action of the filtering tag. Possible values are `Include` and `Exclude`.
  /// [name] Name of the filtering tag.
  /// [value] Value of the filtering tag.
  const TagRulesLogRuleFilteringTag({
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

  factory TagRulesLogRuleFilteringTag.fromMap(Map<String, dynamic> map) {
    return TagRulesLogRuleFilteringTag(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

