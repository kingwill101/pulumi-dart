// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policies_policy_policy_query.dart';

class GetPoliciesPolicy {
  /// The customer that the policy belongs to.
  final pulumi.Input<String> customer;

  /// The resource name of the policy.
  final pulumi.Input<String> name;

  /// A list containing the CEL query that defines which entities the policy applies to. Structure is documented below.
  final pulumi.Input<List<GetPoliciesPolicyPolicyQuery>> policyQueries;

  /// The setting configured by this policy, represented as a JSON string.
  final pulumi.Input<String> setting;

  /// The type of the policy.
  final pulumi.Input<String> type;

  /// Creates a new [GetPoliciesPolicy].
  /// [customer] The customer that the policy belongs to.
  /// [name] The resource name of the policy.
  /// [policyQueries] A list containing the CEL query that defines which entities the policy applies to. Structure is documented below.
  /// [setting] The setting configured by this policy, represented as a JSON string.
  /// [type] The type of the policy.
  GetPoliciesPolicy({
    required this.customer,
    required this.name,
    required this.policyQueries,
    required this.setting,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': customer,
      'name': name,
      'policyQueries':
          pulumi.Input.mapInputValue<
            List<GetPoliciesPolicyPolicyQuery>,
            List<Map<String, dynamic>>
          >(
            policyQueries,
            (value) =>
                pulumi.Input.encodeList<
                  GetPoliciesPolicyPolicyQuery,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'setting': setting,
      'type': type,
    };
  }

  factory GetPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetPoliciesPolicy(
      customer: pulumi.Input.fromValue(map['customer'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyQueries: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPoliciesPolicyPolicyQuery>(
          map['policyQueries']!,
          (value) => GetPoliciesPolicyPolicyQuery.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      setting: pulumi.Input.fromValue(map['setting'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
