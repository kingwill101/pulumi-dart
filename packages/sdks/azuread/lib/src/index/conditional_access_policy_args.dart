// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions.dart';
import 'conditional_access_policy_grant_controls.dart';
import 'conditional_access_policy_session_controls.dart';

/// {@template pulumi_index_conditional_access_policy_conditional_access_policy_args_doc}
/// The set of arguments for ConditionalAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_conditional_access_policy_conditional_access_policy_args_doc}
class ConditionalAccessPolicyArgs {
  /// A `conditions` block as documented below, which specifies the rules that must be met for the policy to apply.
  final pulumi.Input<ConditionalAccessPolicyConditions> conditions;
  /// The friendly name for this Conditional Access Policy.
  final pulumi.Input<String> displayName;
  /// A `grant_controls` block as documented below, which specifies the grant controls that must be fulfilled to pass the policy.
  final pulumi.Input<ConditionalAccessPolicyGrantControls>? grantControls;
  /// A `session_controls` block as documented below, which specifies the session controls that are enforced after sign-in.
  ///
  /// > Note: At least one of `grant_controls` and/or `session_controls` blocks must be specified.
  final pulumi.Input<ConditionalAccessPolicySessionControls>? sessionControls;
  /// Specifies the state of the policy object. Possible values are: `enabled`, `disabled` and `enabledForReportingButNotEnforced`
  final pulumi.Input<String> state;

  /// Creates a new [ConditionalAccessPolicyArgs].
  /// [conditions] A `conditions` block as documented below, which specifies the rules that must be met for the policy to apply.
  /// [displayName] The friendly name for this Conditional Access Policy.
  /// [grantControls] A `grant_controls` block as documented below, which specifies the grant controls that must be fulfilled to pass the policy.
  /// [sessionControls] A `session_controls` block as documented below, which specifies the session controls that are enforced after sign-in.
  /// [state] Specifies the state of the policy object. Possible values are: `enabled`, `disabled` and `enabledForReportingButNotEnforced`
  ConditionalAccessPolicyArgs({
    required pulumi.Output<ConditionalAccessPolicyConditions> conditions,
    required pulumi.Output<String> displayName,
    pulumi.Output<ConditionalAccessPolicyGrantControls>? grantControls,
    pulumi.Output<ConditionalAccessPolicySessionControls>? sessionControls,
    required pulumi.Output<String> state,
  }) :
      conditions = pulumi.Input.asInput<ConditionalAccessPolicyConditions>(conditions),
      displayName = pulumi.Input.asInput<String>(displayName),
      grantControls = pulumi.Input.asOptionalInput<ConditionalAccessPolicyGrantControls>(grantControls),
      sessionControls = pulumi.Input.asOptionalInput<ConditionalAccessPolicySessionControls>(sessionControls),
      state = pulumi.Input.asInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<ConditionalAccessPolicyConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'displayName': displayName,
      'grantControls': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyGrantControls, Map<String, dynamic>>(grantControls, (value) => value.toMap()),
      'sessionControls': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicySessionControls, Map<String, dynamic>>(sessionControls, (value) => value.toMap()),
      'state': state,
    };
  }

  factory ConditionalAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyArgs(
      conditions: pulumi.Output.create<ConditionalAccessPolicyConditions>(ConditionalAccessPolicyConditions.fromMap((map['conditions'] as Map).cast<String, dynamic>())),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      grantControls: map['grantControls'] == null ? null : pulumi.Output.create<ConditionalAccessPolicyGrantControls>(ConditionalAccessPolicyGrantControls.fromMap((map['grantControls'] as Map).cast<String, dynamic>())),
      sessionControls: map['sessionControls'] == null ? null : pulumi.Output.create<ConditionalAccessPolicySessionControls>(ConditionalAccessPolicySessionControls.fromMap((map['sessionControls'] as Map).cast<String, dynamic>())),
      state: pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

