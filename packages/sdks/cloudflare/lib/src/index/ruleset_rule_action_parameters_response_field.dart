// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersResponseField {
  /// The name of the response header.
  final pulumi.Input<String> name;
  /// Whether to log duplicate values of the same header.
  final pulumi.Input<bool?>? preserveDuplicates;

  /// Creates a new [RulesetRuleActionParametersResponseField].
  /// [name] The name of the response header.
  /// [preserveDuplicates] Whether to log duplicate values of the same header.
  const RulesetRuleActionParametersResponseField({
    required this.name,
    this.preserveDuplicates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'preserveDuplicates': ?preserveDuplicates,
    };
  }

  factory RulesetRuleActionParametersResponseField.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersResponseField(
      name: pulumi.Input.fromValue(map['name'] as String),
      preserveDuplicates: (() { final guardedValue = map['preserveDuplicates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
