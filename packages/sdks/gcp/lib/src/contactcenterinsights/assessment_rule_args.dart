// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_rule_sample_rule.dart';
import 'assessment_rule_schedule_info.dart';

/// {@template pulumi_contactcenterinsights_assessment_rule_assessment_rule_args_doc}
/// The set of arguments for AssessmentRule.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_assessment_rule_assessment_rule_args_doc}
class AssessmentRuleArgs {
  /// If true, apply this rule to conversations. Otherwise, this rule is
  /// inactive.
  final pulumi.Input<bool>? active;
  /// A unique ID for the new AssessmentRule. This ID will become the final
  /// component of the AssessmentRule's resource name. If no ID is specified,
  /// a server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[A-Za-z0-9]{4,64}$`.
  final pulumi.Input<String>? assessmentRuleId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Display Name of the assessment rule.
  final pulumi.Input<String>? displayName;
  /// Location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Message for sampling conversations.
  /// Structure is documented below.
  final pulumi.Input<AssessmentRuleSampleRule>? sampleRule;
  /// Message for schedule info.
  /// Structure is documented below.
  final pulumi.Input<AssessmentRuleScheduleInfo>? scheduleInfo;

  /// Creates a new [AssessmentRuleArgs].
  /// [active] If true, apply this rule to conversations. Otherwise, this rule is
  /// [assessmentRuleId] A unique ID for the new AssessmentRule. This ID will become the final
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Display Name of the assessment rule.
  /// [location] Location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [sampleRule] Message for sampling conversations.
  /// [scheduleInfo] Message for schedule info.
  const AssessmentRuleArgs({
    this.active,
    this.assessmentRuleId,
    this.deletionPolicy,
    this.displayName,
    required this.location,
    this.project,
    this.sampleRule,
    this.scheduleInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'assessmentRuleId': ?assessmentRuleId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'sampleRule': ?pulumi.Input.mapOptionalInputValue<AssessmentRuleSampleRule, Map<String, dynamic>>(sampleRule, (value) => value.toMap()),
      'scheduleInfo': ?pulumi.Input.mapOptionalInputValue<AssessmentRuleScheduleInfo, Map<String, dynamic>>(scheduleInfo, (value) => value.toMap()),
    };
  }

  factory AssessmentRuleArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentRuleArgs(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      assessmentRuleId: (() { final guardedValue = map['assessmentRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRule: (() { final guardedValue = map['sampleRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentRuleSampleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduleInfo: (() { final guardedValue = map['scheduleInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentRuleScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
