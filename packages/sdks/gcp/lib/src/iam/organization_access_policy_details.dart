// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_access_policy_details_rule.dart';

class OrganizationAccessPolicyDetails {
  /// A list of access policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationAccessPolicyDetailsRule>> rules;

  /// Creates a new [OrganizationAccessPolicyDetails].
  /// [rules] A list of access policy rules.
  const OrganizationAccessPolicyDetails({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<OrganizationAccessPolicyDetailsRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<OrganizationAccessPolicyDetailsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationAccessPolicyDetails.fromMap(Map<String, dynamic> map) {
    return OrganizationAccessPolicyDetails(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationAccessPolicyDetailsRule>(map['rules']!, (value) => OrganizationAccessPolicyDetailsRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
