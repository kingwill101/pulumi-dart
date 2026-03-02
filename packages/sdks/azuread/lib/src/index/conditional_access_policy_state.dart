// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions.dart';
import 'conditional_access_policy_grant_controls.dart';
import 'conditional_access_policy_session_controls.dart';

/// Input properties used for looking up and filtering ConditionalAccessPolicy resources.
class ConditionalAccessPolicyState {
  /// A `conditions` block as documented below, which specifies the rules that must be met for the policy to apply.
  final pulumi.Input<ConditionalAccessPolicyConditions>? conditions;
  /// The friendly name for this Conditional Access Policy.
  final pulumi.Input<String>? displayName;
  /// A `grant_controls` block as documented below, which specifies the grant controls that must be fulfilled to pass the policy.
  final pulumi.Input<ConditionalAccessPolicyGrantControls>? grantControls;
  /// The object ID of the policy
  final pulumi.Input<String>? objectId;
  /// A `session_controls` block as documented below, which specifies the session controls that are enforced after sign-in.
  ///
  /// > Note: At least one of `grant_controls` and/or `session_controls` blocks must be specified.
  final pulumi.Input<ConditionalAccessPolicySessionControls>? sessionControls;
  /// Specifies the state of the policy object. Possible values are: `enabled`, `disabled` and `enabledForReportingButNotEnforced`
  final pulumi.Input<String>? state;

  /// Creates a new [ConditionalAccessPolicyState].
  /// [conditions] A `conditions` block as documented below, which specifies the rules that must be met for the policy to apply.
  /// [displayName] The friendly name for this Conditional Access Policy.
  /// [grantControls] A `grant_controls` block as documented below, which specifies the grant controls that must be fulfilled to pass the policy.
  /// [objectId] The object ID of the policy
  /// [sessionControls] A `session_controls` block as documented below, which specifies the session controls that are enforced after sign-in.
  /// [state] Specifies the state of the policy object. Possible values are: `enabled`, `disabled` and `enabledForReportingButNotEnforced`
  ConditionalAccessPolicyState({
    this.conditions,
    this.displayName,
    this.grantControls,
    this.objectId,
    this.sessionControls,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'displayName': ?displayName,
      'grantControls': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyGrantControls, Map<String, dynamic>>(grantControls, (value) => value.toMap()),
      'objectId': ?objectId,
      'sessionControls': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicySessionControls, Map<String, dynamic>>(sessionControls, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory ConditionalAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyState(
      conditions: map['conditions'] == null ? null : (ConditionalAccessPolicyConditions.fromMap((map['conditions']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      grantControls: map['grantControls'] == null ? null : (ConditionalAccessPolicyGrantControls.fromMap((map['grantControls']! as Map).cast<String, dynamic>())).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      sessionControls: map['sessionControls'] == null ? null : (ConditionalAccessPolicySessionControls.fromMap((map['sessionControls']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

