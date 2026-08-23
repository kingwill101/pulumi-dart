// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_rule_config.dart';
import 'environment_identifier.dart';
import 'target_action_type.dart';

/// {@template pulumi_index_approval_rule_args_doc}
/// The set of arguments for ApprovalRule.
/// {@endtemplate}
/// {@macro pulumi_index_approval_rule_args_doc}
class ApprovalRuleArgs {
  /// The approval rule configuration.
  final pulumi.Input<ApprovalRuleConfig> approvalRuleConfig;
  /// Whether the approval rule is enabled.
  final pulumi.Input<bool> enabled;
  /// The environment this rule applies to.
  final pulumi.Input<EnvironmentIdentifier> environmentIdentifier;
  /// The name of the approval rule.
  final pulumi.Input<String> name;
  /// The type of action this rule applies to.
  final pulumi.Input<List<TargetActionType>> targetActionTypes;

  /// Creates a new [ApprovalRuleArgs].
  /// [approvalRuleConfig] The approval rule configuration.
  /// [enabled] Whether the approval rule is enabled.
  /// [environmentIdentifier] The environment this rule applies to.
  /// [name] The name of the approval rule.
  /// [targetActionTypes] The type of action this rule applies to.
  const ApprovalRuleArgs({
    required this.approvalRuleConfig,
    required this.enabled,
    required this.environmentIdentifier,
    required this.name,
    required this.targetActionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRuleConfig': pulumi.Input.mapInputValue<ApprovalRuleConfig, Map<String, dynamic>>(approvalRuleConfig, (value) => value.toMap()),
      'enabled': enabled,
      'environmentIdentifier': pulumi.Input.mapInputValue<EnvironmentIdentifier, Map<String, dynamic>>(environmentIdentifier, (value) => value.toMap()),
      'name': name,
      'targetActionTypes': pulumi.Input.mapInputValue<List<TargetActionType>, List<String>>(targetActionTypes, (value) => pulumi.Input.encodeList<TargetActionType, String>(value, (value) => value.wireValue)),
    };
  }

  factory ApprovalRuleArgs.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleArgs(
      approvalRuleConfig: pulumi.Input.fromValue(ApprovalRuleConfig.fromMap((map['approvalRuleConfig']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      environmentIdentifier: pulumi.Input.fromValue(EnvironmentIdentifier.fromMap((map['environmentIdentifier']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetActionTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<TargetActionType>(map['targetActionTypes']!, (value) => TargetActionType.fromValue(value as String))),
    );
  }
}
