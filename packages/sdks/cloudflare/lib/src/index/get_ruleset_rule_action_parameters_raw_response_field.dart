// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersRawResponseField {
  /// The name of the response header.
  final pulumi.Input<String> name;
  /// Whether to log duplicate values of the same header.
  final pulumi.Input<bool> preserveDuplicates;

  /// Creates a new [GetRulesetRuleActionParametersRawResponseField].
  /// [name] The name of the response header.
  /// [preserveDuplicates] Whether to log duplicate values of the same header.
  const GetRulesetRuleActionParametersRawResponseField({
    required this.name,
    required this.preserveDuplicates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'preserveDuplicates': preserveDuplicates,
    };
  }

  factory GetRulesetRuleActionParametersRawResponseField.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersRawResponseField(
      name: pulumi.Input.fromValue(map['name'] as String),
      preserveDuplicates: pulumi.Input.fromValue(map['preserveDuplicates'] as bool),
    );
  }
}
