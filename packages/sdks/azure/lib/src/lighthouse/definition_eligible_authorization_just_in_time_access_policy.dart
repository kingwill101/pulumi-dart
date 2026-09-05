// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_eligible_authorization_just_in_time_access_policy_approver.dart';

class DefinitionEligibleAuthorizationJustInTimeAccessPolicy {
  /// An `approver` block as defined below.
  final pulumi.Input<List<DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover>?>? approvers;
  /// The maximum access duration in ISO 8601 format for just-in-time access requests. Defaults to `PT8H`.
  final pulumi.Input<String?>? maximumActivationDuration;
  /// The multi-factor authorization provider to be used for just-in-time access requests. Possible value is `Azure`.
  ///
  /// &gt; **Note:** When this property isn't set, it would be set to `None`.
  final pulumi.Input<String?>? multiFactorAuthProvider;

  /// Creates a new [DefinitionEligibleAuthorizationJustInTimeAccessPolicy].
  /// [approvers] An `approver` block as defined below.
  /// [maximumActivationDuration] The maximum access duration in ISO 8601 format for just-in-time access requests. Defaults to `PT8H`.
  /// [multiFactorAuthProvider] The multi-factor authorization provider to be used for just-in-time access requests. Possible value is `Azure`.
  const DefinitionEligibleAuthorizationJustInTimeAccessPolicy({
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
      approvers: (() { final guardedValue = map['approvers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover>(guardedValue, (value) => DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maximumActivationDuration: (() { final guardedValue = map['maximumActivationDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiFactorAuthProvider: (() { final guardedValue = map['multiFactorAuthProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
