// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_eligible_authorization_just_in_time_access_policy_approver.dart';

class DefinitionEligibleAuthorizationJustInTimeAccessPolicy {
  /// An `approver` block as defined below.
  final pulumi.Input<List<DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover>>? approvers;
  /// The maximum access duration in ISO 8601 format for just-in-time access requests. Defaults to `PT8H`.
  final pulumi.Input<String>? maximumActivationDuration;
  /// The multi-factor authorization provider to be used for just-in-time access requests. Possible value is `Azure`.
  ///
  /// > **Note:** When this property isn't set, it would be set to `None`.
  final pulumi.Input<String>? multiFactorAuthProvider;

  /// Creates a new [DefinitionEligibleAuthorizationJustInTimeAccessPolicy].
  /// [approvers] An `approver` block as defined below.
  /// [maximumActivationDuration] The maximum access duration in ISO 8601 format for just-in-time access requests. Defaults to `PT8H`.
  /// [multiFactorAuthProvider] The multi-factor authorization provider to be used for just-in-time access requests. Possible value is `Azure`.
  DefinitionEligibleAuthorizationJustInTimeAccessPolicy({
    this.approvers,
    this.maximumActivationDuration,
    this.multiFactorAuthProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvers': ?pulumi.Input.mapOptionalInputValue<List<DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover>, List<Map<String, dynamic>>>(approvers, (value) => pulumi.Input.encodeList<DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumActivationDuration': ?maximumActivationDuration,
      'multiFactorAuthProvider': ?multiFactorAuthProvider,
    };
  }

  factory DefinitionEligibleAuthorizationJustInTimeAccessPolicy.fromMap(Map<String, dynamic> map) {
    return DefinitionEligibleAuthorizationJustInTimeAccessPolicy(
      approvers: map['approvers'] == null ? null : (pulumi.Input.decodeList<DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover>(map['approvers']!, (value) => DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maximumActivationDuration: map['maximumActivationDuration'] == null ? null : (map['maximumActivationDuration']! as String).input(),
      multiFactorAuthProvider: map['multiFactorAuthProvider'] == null ? null : (map['multiFactorAuthProvider']! as String).input(),
    );
  }
}

