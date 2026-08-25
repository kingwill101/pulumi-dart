// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_labeling_rule_condition.dart';

/// {@template pulumi_contactcenterinsights_auto_labeling_rule_auto_labeling_rule_args_doc}
/// The set of arguments for AutoLabelingRule.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_auto_labeling_rule_auto_labeling_rule_args_doc}
class AutoLabelingRuleArgs {
  /// Whether the rule is active.
  final pulumi.Input<bool?>? active;
  /// A unique ID for the new AutoLabelingRule. This ID will become the final
  /// component of the AutoLabelingRule's resource name. If no ID is specified,
  /// a server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[A-Za-z0-9]{4,64}$`.
  final pulumi.Input<String?>? autoLabelingRuleId;
  /// Conditions to apply for auto-labeling the label_key.
  /// Structure is documented below.
  final pulumi.Input<List<AutoLabelingRuleCondition>?>? conditions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the rule.
  final pulumi.Input<String?>? description;
  /// Display Name of the auto labeling rule.
  final pulumi.Input<String?>? displayName;
  /// The label key.
  final pulumi.Input<String?>? labelKey;
  /// The type of the label key.
  /// Possible values are: `LABEL_KEY_TYPE_UNSPECIFIED`, `LABEL_KEY_TYPE_CUSTOM`.
  final pulumi.Input<String?>? labelKeyType;
  /// Location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [AutoLabelingRuleArgs].
  /// [active] Whether the rule is active.
  /// [autoLabelingRuleId] A unique ID for the new AutoLabelingRule. This ID will become the final
  /// [conditions] Conditions to apply for auto-labeling the label_key.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the rule.
  /// [displayName] Display Name of the auto labeling rule.
  /// [labelKey] The label key.
  /// [labelKeyType] The type of the label key.
  /// [location] Location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  const AutoLabelingRuleArgs({
    this.active,
    this.autoLabelingRuleId,
    this.conditions,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.labelKey,
    this.labelKeyType,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'autoLabelingRuleId': ?autoLabelingRuleId,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<AutoLabelingRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AutoLabelingRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'labelKey': ?labelKey,
      'labelKeyType': ?labelKeyType,
      'location': location,
      'project': ?project,
    };
  }

  factory AutoLabelingRuleArgs.fromMap(Map<String, dynamic> map) {
    return AutoLabelingRuleArgs(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoLabelingRuleId: (() { final guardedValue = map['autoLabelingRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoLabelingRuleCondition>(guardedValue, (value) => AutoLabelingRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelKey: (() { final guardedValue = map['labelKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelKeyType: (() { final guardedValue = map['labelKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
