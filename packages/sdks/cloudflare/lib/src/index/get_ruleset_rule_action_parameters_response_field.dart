// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersResponseField {
  /// The name of the response header.
  final pulumi.Input<String> name;
  /// Whether to log duplicate values of the same header.
  final pulumi.Input<bool> preserveDuplicates;

  /// Creates a new [GetRulesetRuleActionParametersResponseField].
  /// [name] The name of the response header.
  /// [preserveDuplicates] Whether to log duplicate values of the same header.
  const GetRulesetRuleActionParametersResponseField({
    required this.name,
    required this.preserveDuplicates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'preserveDuplicates': preserveDuplicates,
    };
  }

  factory GetRulesetRuleActionParametersResponseField.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersResponseField(
      name: pulumi.Input.fromValue(map['name'] as String),
      preserveDuplicates: pulumi.Input.fromValue(map['preserveDuplicates'] as bool),
    );
  }
}
