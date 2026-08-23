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
  /// A `alertContext` block as defined above.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionAlertContext>? alertContext;
  /// A `alertRuleId` block as defined above.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionAlertRuleId>? alertRuleId;
  /// A `alertRuleName` block as defined above.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionAlertRuleName>? alertRuleName;
  /// A `description` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionDescription>? description;
  /// A `monitorCondition` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionMonitorCondition>? monitorCondition;
  /// A `monitorService` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionMonitorService>? monitorService;
  /// A `severity` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionSeverity>? severity;
  /// A `signalType` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionSignalType>? signalType;
  /// A `targetResource` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionTargetResource>? targetResource;
  /// A `targetResourceGroup` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionTargetResourceGroup>? targetResourceGroup;
  /// A `targetResourceType` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionConditionTargetResourceType>? targetResourceType;

  /// Creates a new [AlertProcessingRuleSuppressionCondition].
  /// [alertContext] A `alertContext` block as defined above.
  /// [alertRuleId] A `alertRuleId` block as defined above.
  /// [alertRuleName] A `alertRuleName` block as defined above.
  /// [description] A `description` block as defined below.
  /// [monitorCondition] A `monitorCondition` block as defined below.
  /// [monitorService] A `monitorService` block as defined below.
  /// [severity] A `severity` block as defined below.
  /// [signalType] A `signalType` block as defined below.
  /// [targetResource] A `targetResource` block as defined below.
  /// [targetResourceGroup] A `targetResourceGroup` block as defined below.
  /// [targetResourceType] A `targetResourceType` block as defined below.
  const AlertProcessingRuleSuppressionCondition({
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
      alertContext: (() { final guardedValue = map['alertContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionAlertContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alertRuleId: (() { final guardedValue = map['alertRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionAlertRuleId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alertRuleName: (() { final guardedValue = map['alertRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionAlertRuleName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorCondition: (() { final guardedValue = map['monitorCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionMonitorCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorService: (() { final guardedValue = map['monitorService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionMonitorService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionSeverity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signalType: (() { final guardedValue = map['signalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionSignalType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResource: (() { final guardedValue = map['targetResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionTargetResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResourceGroup: (() { final guardedValue = map['targetResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionTargetResourceGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResourceType: (() { final guardedValue = map['targetResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionConditionTargetResourceType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
