// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoliciesPolicyPolicyQuery {
  /// The group that the policy applies to.
  final pulumi.Input<String> group;
  /// The org unit that the policy applies to.
  final pulumi.Input<String> orgUnit;
  /// The query that defines which entities the policy applies to.
  final pulumi.Input<String> query;
  /// The sort order of the policy.
  final pulumi.Input<double> sortOrder;

  /// Creates a new [GetPoliciesPolicyPolicyQuery].
  /// [group] The group that the policy applies to.
  /// [orgUnit] The org unit that the policy applies to.
  /// [query] The query that defines which entities the policy applies to.
  /// [sortOrder] The sort order of the policy.
  const GetPoliciesPolicyPolicyQuery({
    required this.group,
    required this.orgUnit,
    required this.query,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'orgUnit': orgUnit,
      'query': query,
      'sortOrder': sortOrder,
    };
  }

  factory GetPoliciesPolicyPolicyQuery.fromMap(Map<String, dynamic> map) {
    return GetPoliciesPolicyPolicyQuery(
      group: pulumi.Input.fromValue(map['group'] as String),
      orgUnit: pulumi.Input.fromValue(map['orgUnit'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
      sortOrder: pulumi.Input.fromValue(map['sortOrder'] as double),
    );
  }
}

