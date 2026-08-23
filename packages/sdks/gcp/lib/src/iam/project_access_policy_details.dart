// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_access_policy_details_rule.dart';

class ProjectAccessPolicyDetails {
  /// A list of access policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<ProjectAccessPolicyDetailsRule>> rules;

  /// Creates a new [ProjectAccessPolicyDetails].
  /// [rules] A list of access policy rules.
  const ProjectAccessPolicyDetails({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<ProjectAccessPolicyDetailsRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ProjectAccessPolicyDetailsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProjectAccessPolicyDetails.fromMap(Map<String, dynamic> map) {
    return ProjectAccessPolicyDetails(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectAccessPolicyDetailsRule>(map['rules']!, (value) => ProjectAccessPolicyDetailsRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
