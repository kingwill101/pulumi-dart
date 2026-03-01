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
    pulumi.Output<ConditionalAccessPolicyConditions>? conditions,
    pulumi.Output<String>? displayName,
    pulumi.Output<ConditionalAccessPolicyGrantControls>? grantControls,
    pulumi.Output<String>? objectId,
    pulumi.Output<ConditionalAccessPolicySessionControls>? sessionControls,
    pulumi.Output<String>? state,
  }) :
      conditions = pulumi.Input.asOptionalInput<ConditionalAccessPolicyConditions>(conditions),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      grantControls = pulumi.Input.asOptionalInput<ConditionalAccessPolicyGrantControls>(grantControls),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      sessionControls = pulumi.Input.asOptionalInput<ConditionalAccessPolicySessionControls>(sessionControls),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      conditions: map['conditions'] == null ? null : pulumi.Output.create<ConditionalAccessPolicyConditions>(ConditionalAccessPolicyConditions.fromMap((map['conditions'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      grantControls: map['grantControls'] == null ? null : pulumi.Output.create<ConditionalAccessPolicyGrantControls>(ConditionalAccessPolicyGrantControls.fromMap((map['grantControls'] as Map).cast<String, dynamic>())),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      sessionControls: map['sessionControls'] == null ? null : pulumi.Output.create<ConditionalAccessPolicySessionControls>(ConditionalAccessPolicySessionControls.fromMap((map['sessionControls'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

