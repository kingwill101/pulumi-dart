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
  /// &gt; Note: At least one of `grant_controls` and/or `session_controls` blocks must be specified.
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
  const ConditionalAccessPolicyState({
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
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionalAccessPolicyConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantControls: (() { final guardedValue = map['grantControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionalAccessPolicyGrantControls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionControls: (() { final guardedValue = map['sessionControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionalAccessPolicySessionControls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

