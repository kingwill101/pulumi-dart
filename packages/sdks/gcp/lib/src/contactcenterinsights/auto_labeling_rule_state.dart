// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_labeling_rule_condition.dart';

/// Input properties used for looking up and filtering AutoLabelingRule resources.
class AutoLabelingRuleState {
  /// Whether the rule is active.
  final pulumi.Input<bool>? active;
  /// A unique ID for the new AutoLabelingRule. This ID will become the final
  /// component of the AutoLabelingRule's resource name. If no ID is specified,
  /// a server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[A-Za-z0-9]{4,64}$`.
  final pulumi.Input<String>? autoLabelingRuleId;
  /// Conditions to apply for auto-labeling the label_key.
  /// Structure is documented below.
  final pulumi.Input<List<AutoLabelingRuleCondition>>? conditions;
  /// The time at which this rule was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the rule.
  final pulumi.Input<String>? description;
  /// Display Name of the auto labeling rule.
  final pulumi.Input<String>? displayName;
  /// The label key.
  final pulumi.Input<String>? labelKey;
  /// The type of the label key.
  /// Possible values are: `LABEL_KEY_TYPE_UNSPECIFIED`, `LABEL_KEY_TYPE_CUSTOM`.
  final pulumi.Input<String>? labelKeyType;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the auto labeling rule.
  /// Format:
  /// projects/{project}/locations/{location}/autoLabelingRules/{auto_labeling_rule}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The most recent time at which this rule was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AutoLabelingRuleState].
  /// [active] Whether the rule is active.
  /// [autoLabelingRuleId] A unique ID for the new AutoLabelingRule. This ID will become the final
  /// [conditions] Conditions to apply for auto-labeling the label_key.
  /// [createTime] The time at which this rule was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the rule.
  /// [displayName] Display Name of the auto labeling rule.
  /// [labelKey] The label key.
  /// [labelKeyType] The type of the label key.
  /// [location] Location of the resource.
  /// [name] Identifier. The resource name of the auto labeling rule.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The most recent time at which this rule was updated.
  const AutoLabelingRuleState({
    this.active,
    this.autoLabelingRuleId,
    this.conditions,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.labelKey,
    this.labelKeyType,
    this.location,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'autoLabelingRuleId': ?autoLabelingRuleId,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<AutoLabelingRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AutoLabelingRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'labelKey': ?labelKey,
      'labelKeyType': ?labelKeyType,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory AutoLabelingRuleState.fromMap(Map<String, dynamic> map) {
    return AutoLabelingRuleState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoLabelingRuleId: (() { final guardedValue = map['autoLabelingRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoLabelingRuleCondition>(guardedValue, (value) => AutoLabelingRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelKey: (() { final guardedValue = map['labelKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelKeyType: (() { final guardedValue = map['labelKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
