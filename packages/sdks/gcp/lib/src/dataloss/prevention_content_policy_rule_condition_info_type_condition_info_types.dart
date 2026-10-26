// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes {
  /// List of info type names.
  final pulumi.Input<List<String>> infoTypeNames;

  /// Creates a new [PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes].
  /// [infoTypeNames] List of info type names.
  const PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes({
    required this.infoTypeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypeNames': infoTypeNames,
    };
  }

  factory PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypes(
      infoTypeNames: pulumi.Input.fromValue((map['infoTypeNames'] as List).cast<String>()),
    );
  }
}
