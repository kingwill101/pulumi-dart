// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_client_applications_filter.dart';

class ConditionalAccessPolicyConditionsClientApplications {
  /// A list of service principal IDs explicitly excluded in the policy.
  final pulumi.Input<List<String>>? excludedServicePrincipals;
  /// A `filter` block as documented below.
  ///
  /// > **Note:** Specifying `filter` requires the `Attribute Definition Reader` role, this is not included in the `Global Administrator` or other administrator roles and must be separately assigned.
  final pulumi.Input<ConditionalAccessPolicyConditionsClientApplicationsFilter>? filter;
  /// A list of service principal IDs explicitly included in the policy. Can be set to `ServicePrincipalsInMyTenant` to include all service principals. This is mandatory value when at least one `excluded_service_principals` is set.
  final pulumi.Input<List<String>>? includedServicePrincipals;

  /// Creates a new [ConditionalAccessPolicyConditionsClientApplications].
  /// [excludedServicePrincipals] A list of service principal IDs explicitly excluded in the policy.
  /// [filter] A `filter` block as documented below.
  /// [includedServicePrincipals] A list of service principal IDs explicitly included in the policy. Can be set to `ServicePrincipalsInMyTenant` to include all service principals. This is mandatory value when at least one `excluded_service_principals` is set.
  ConditionalAccessPolicyConditionsClientApplications({
    this.excludedServicePrincipals,
    this.filter,
    this.includedServicePrincipals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedServicePrincipals': ?excludedServicePrincipals,
      'filter': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditionsClientApplicationsFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'includedServicePrincipals': ?includedServicePrincipals,
    };
  }

  factory ConditionalAccessPolicyConditionsClientApplications.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsClientApplications(
      excludedServicePrincipals: map['excludedServicePrincipals'] == null ? null : ((map['excludedServicePrincipals'] as List).cast<String>()).input(),
      filter: map['filter'] == null ? null : (ConditionalAccessPolicyConditionsClientApplicationsFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      includedServicePrincipals: map['includedServicePrincipals'] == null ? null : ((map['includedServicePrincipals'] as List).cast<String>()).input(),
    );
  }
}

