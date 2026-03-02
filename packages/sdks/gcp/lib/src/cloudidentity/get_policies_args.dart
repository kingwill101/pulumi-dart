// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_get_policies_get_policies_args_doc}
/// Arguments for getPolicies.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_get_policies_get_policies_args_doc}
class GetPoliciesArgs {
  /// Filter expression for listing policies, as documented in the Cloud Identity Policy API policies.list method.
  final pulumi.Input<String>? filter;

  /// Creates a new [GetPoliciesArgs].
  /// [filter] Filter expression for listing policies, as documented in the Cloud Identity Policy API policies.list method.
  GetPoliciesArgs({
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
    };
  }

  factory GetPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesArgs(
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
    );
  }
}

