// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues {
  /// List of values allowed at this resource.
  final pulumi.Input<List<String>>? allowedValues;
  /// List of values denied at this resource.
  final pulumi.Input<List<String>>? deniedValues;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues].
  /// [allowedValues] List of values allowed at this resource.
  /// [deniedValues] List of values denied at this resource.
  PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues({
    this.allowedValues,
    this.deniedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'deniedValues': ?deniedValues,
    };
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues(
      allowedValues: map['allowedValues'] == null ? null : ((map['allowedValues'] as List).cast<String>()).input(),
      deniedValues: map['deniedValues'] == null ? null : ((map['deniedValues'] as List).cast<String>()).input(),
    );
  }
}

