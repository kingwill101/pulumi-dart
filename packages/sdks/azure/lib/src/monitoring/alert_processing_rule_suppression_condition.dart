// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_suppression_condition_alert_context.dart';
import 'alert_processing_rule_suppression_condition_alert_rule_id.dart';
import 'alert_processing_rule_suppression_condition_alert_rule_name.dart';
import 'alert_processing_rule_suppression_condition_description.dart';
import 'alert_processing_rule_suppression_condition_monitor_condition.dart';
import 'alert_processing_rule_suppression_condition_monitor_service.dart';
import 'alert_processing_rule_suppression_condition_severity.dart';
import 'alert_processing_rule_suppression_condition_signal_type.dart';
import 'alert_processing_rule_suppression_condition_target_resource.dart';
import 'alert_processing_rule_suppression_condition_target_resource_group.dart';
import 'alert_processing_rule_suppression_condition_target_resource_type.dart';

class AlertProcessingRuleSuppressionCondition {
  /// A `alert_context` block as defined above.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionAlertContext>? alertContext;
  /// A `alert_rule_id` block as defined above.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionAlertRuleId>? alertRuleId;
  /// A `alert_rule_name` block as defined above.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionAlertRuleName>? alertRuleName;
  /// A `description` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionDescription>? description;
  /// A `monitor_condition` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionMonitorCondition>? monitorCondition;
  /// A `monitor_service` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionMonitorService>? monitorService;
  /// A `severity` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionSeverity>? severity;
  /// A `signal_type` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionSignalType>? signalType;
  /// A `target_resource` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionTargetResource>? targetResource;
  /// A `target_resource_group` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionTargetResourceGroup>? targetResourceGroup;
  /// A `target_resource_type` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionTargetResourceType>? targetResourceType;

  /// Creates a new [AlertProcessingRuleSuppressionCondition].
  /// [alertContext] A `alert_context` block as defined above.
  /// [alertRuleId] A `alert_rule_id` block as defined above.
  /// [alertRuleName] A `alert_rule_name` block as defined above.
  /// [description] A `description` block as defined below.
  /// [monitorCondition] A `monitor_condition` block as defined below.
  /// [monitorService] A `monitor_service` block as defined below.
  /// [severity] A `severity` block as defined below.
  /// [signalType] A `signal_type` block as defined below.
  /// [targetResource] A `target_resource` block as defined below.
  /// [targetResourceGroup] A `target_resource_group` block as defined below.
  /// [targetResourceType] A `target_resource_type` block as defined below.
  AlertProcessingRuleSuppressionCondition({
    this.alertContext,
    this.alertRuleId,
    this.alertRuleName,
    this.description,
    this.monitorCondition,
    this.monitorService,
    this.severity,
    this.signalType,
    this.targetResource,
    this.targetResourceGroup,
    this.targetResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContext': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionAlertContext, Map<String, dynamic>>(alertContext, (value) => value.toMap()),
      'alertRuleId': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionAlertRuleId, Map<String, dynamic>>(alertRuleId, (value) => value.toMap()),
      'alertRuleName': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionAlertRuleName, Map<String, dynamic>>(alertRuleName, (value) => value.toMap()),
      'description': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionDescription, Map<String, dynamic>>(description, (value) => value.toMap()),
      'monitorCondition': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionMonitorCondition, Map<String, dynamic>>(monitorCondition, (value) => value.toMap()),
      'monitorService': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionMonitorService, Map<String, dynamic>>(monitorService, (value) => value.toMap()),
      'severity': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionSeverity, Map<String, dynamic>>(severity, (value) => value.toMap()),
      'signalType': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionSignalType, Map<String, dynamic>>(signalType, (value) => value.toMap()),
      'targetResource': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionTargetResource, Map<String, dynamic>>(targetResource, (value) => value.toMap()),
      'targetResourceGroup': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionTargetResourceGroup, Map<String, dynamic>>(targetResourceGroup, (value) => value.toMap()),
      'targetResourceType': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionConditionTargetResourceType, Map<String, dynamic>>(targetResourceType, (value) => value.toMap()),
    };
  }

  factory AlertProcessingRuleSuppressionCondition.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionCondition(
      alertContext: map['alertContext'] == null ? null : (AlertProcessingRuleSuppressionConditionAlertContext.fromMap((map['alertContext']! as Map).cast<String, dynamic>())).input(),
      alertRuleId: map['alertRuleId'] == null ? null : (AlertProcessingRuleSuppressionConditionAlertRuleId.fromMap((map['alertRuleId']! as Map).cast<String, dynamic>())).input(),
      alertRuleName: map['alertRuleName'] == null ? null : (AlertProcessingRuleSuppressionConditionAlertRuleName.fromMap((map['alertRuleName']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (AlertProcessingRuleSuppressionConditionDescription.fromMap((map['description']! as Map).cast<String, dynamic>())).input(),
      monitorCondition: map['monitorCondition'] == null ? null : (AlertProcessingRuleSuppressionConditionMonitorCondition.fromMap((map['monitorCondition']! as Map).cast<String, dynamic>())).input(),
      monitorService: map['monitorService'] == null ? null : (AlertProcessingRuleSuppressionConditionMonitorService.fromMap((map['monitorService']! as Map).cast<String, dynamic>())).input(),
      severity: map['severity'] == null ? null : (AlertProcessingRuleSuppressionConditionSeverity.fromMap((map['severity']! as Map).cast<String, dynamic>())).input(),
      signalType: map['signalType'] == null ? null : (AlertProcessingRuleSuppressionConditionSignalType.fromMap((map['signalType']! as Map).cast<String, dynamic>())).input(),
      targetResource: map['targetResource'] == null ? null : (AlertProcessingRuleSuppressionConditionTargetResource.fromMap((map['targetResource']! as Map).cast<String, dynamic>())).input(),
      targetResourceGroup: map['targetResourceGroup'] == null ? null : (AlertProcessingRuleSuppressionConditionTargetResourceGroup.fromMap((map['targetResourceGroup']! as Map).cast<String, dynamic>())).input(),
      targetResourceType: map['targetResourceType'] == null ? null : (AlertProcessingRuleSuppressionConditionTargetResourceType.fromMap((map['targetResourceType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

