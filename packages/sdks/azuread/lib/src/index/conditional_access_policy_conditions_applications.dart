// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_applications_filter.dart';

class ConditionalAccessPolicyConditionsApplications {
  /// A list of application IDs explicitly excluded from the policy. Can also be set to `Office365`.
  final pulumi.Input<List<String>>? excludedApplications;
  /// A `filter` block as documented below.
  ///
  /// &gt; **Note:** Specifying `filter` requires the `Attribute Definition Reader` role, this is not included in the `Global Administrator` or other administrator roles and must be separately assigned.
  final pulumi.Input<ConditionalAccessPolicyConditionsApplicationsFilter>? filter;
  /// A list of application IDs the policy applies to, unless explicitly excluded (in `excludedApplications`). Can also be set to `All`, `None` or `Office365`. Cannot be specified with `includedUserActions`. One of `includedApplications` or `includedUserActions` must be specified.
  final pulumi.Input<List<String>>? includedApplications;
  /// A list of user actions to include. Supported values are `urn:user:registerdevice` and `urn:user:registersecurityinfo`. Cannot be specified with `includedApplications`. One of `includedApplications` or `includedUserActions` must be specified.
  final pulumi.Input<List<String>>? includedUserActions;

  /// Creates a new [ConditionalAccessPolicyConditionsApplications].
  /// [excludedApplications] A list of application IDs explicitly excluded from the policy. Can also be set to `Office365`.
  /// [filter] A `filter` block as documented below.
  /// [includedApplications] A list of application IDs the policy applies to, unless explicitly excluded (in `excludedApplications`). Can also be set to `All`, `None` or `Office365`. Cannot be specified with `includedUserActions`. One of `includedApplications` or `includedUserActions` must be specified.
  /// [includedUserActions] A list of user actions to include. Supported values are `urn:user:registerdevice` and `urn:user:registersecurityinfo`. Cannot be specified with `includedApplications`. One of `includedApplications` or `includedUserActions` must be specified.
  const ConditionalAccessPolicyConditionsApplications({
    this.excludedApplications,
    this.filter,
    this.includedApplications,
    this.includedUserActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedApplications': ?excludedApplications,
      'filter': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditionsApplicationsFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'includedApplications': ?includedApplications,
      'includedUserActions': ?includedUserActions,
    };
  }

  factory ConditionalAccessPolicyConditionsApplications.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsApplications(
      excludedApplications: (() { final guardedValue = map['excludedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionalAccessPolicyConditionsApplicationsFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedApplications: (() { final guardedValue = map['includedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedUserActions: (() { final guardedValue = map['includedUserActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
