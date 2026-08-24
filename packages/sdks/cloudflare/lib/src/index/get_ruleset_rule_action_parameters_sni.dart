// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersSni {
  /// A value to override the SNI to.
  final pulumi.Input<String> value;

  /// Creates a new [GetRulesetRuleActionParametersSni].
  /// [value] A value to override the SNI to.
  const GetRulesetRuleActionParametersSni({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory GetRulesetRuleActionParametersSni.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersSni(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
