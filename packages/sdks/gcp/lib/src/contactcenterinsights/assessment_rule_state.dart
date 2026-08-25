// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_rule_sample_rule.dart';
import 'assessment_rule_schedule_info.dart';

/// Input properties used for looking up and filtering AssessmentRule resources.
class AssessmentRuleState {
  /// If true, apply this rule to conversations. Otherwise, this rule is
  /// inactive.
  final pulumi.Input<bool?>? active;
  /// A unique ID for the new AssessmentRule. This ID will become the final
  /// component of the AssessmentRule's resource name. If no ID is specified,
  /// a server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[A-Za-z0-9]{4,64}$`.
  final pulumi.Input<String?>? assessmentRuleId;
  /// The time at which this assessment rule was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Display Name of the assessment rule.
  final pulumi.Input<String?>? displayName;
  /// Location of the resource.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the assessment rule.
  /// Format:
  /// projects/{project}/locations/{location}/assessmentRules/{assessment_rule}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Message for sampling conversations.
  /// Structure is documented below.
  final pulumi.Input<AssessmentRuleSampleRule?>? sampleRule;
  /// Message for schedule info.
  /// Structure is documented below.
  final pulumi.Input<AssessmentRuleScheduleInfo?>? scheduleInfo;
  /// The most recent time at which this assessment rule was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AssessmentRuleState].
  /// [active] If true, apply this rule to conversations. Otherwise, this rule is
  /// [assessmentRuleId] A unique ID for the new AssessmentRule. This ID will become the final
  /// [createTime] The time at which this assessment rule was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Display Name of the assessment rule.
  /// [location] Location of the resource.
  /// [name] Identifier. The resource name of the assessment rule.
  /// [project] The ID of the project in which the resource belongs.
  /// [sampleRule] Message for sampling conversations.
  /// [scheduleInfo] Message for schedule info.
  /// [updateTime] The most recent time at which this assessment rule was updated.
  const AssessmentRuleState({
    this.active,
    this.assessmentRuleId,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.sampleRule,
    this.scheduleInfo,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'assessmentRuleId': ?assessmentRuleId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'sampleRule': ?pulumi.Input.mapOptionalInputValue<AssessmentRuleSampleRule, Map<String, dynamic>>(sampleRule, (value) => value.toMap()),
      'scheduleInfo': ?pulumi.Input.mapOptionalInputValue<AssessmentRuleScheduleInfo, Map<String, dynamic>>(scheduleInfo, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory AssessmentRuleState.fromMap(Map<String, dynamic> map) {
    return AssessmentRuleState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      assessmentRuleId: (() { final guardedValue = map['assessmentRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRule: (() { final guardedValue = map['sampleRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentRuleSampleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduleInfo: (() { final guardedValue = map['scheduleInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentRuleScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
