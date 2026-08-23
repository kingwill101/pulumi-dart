// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_action_group_condition_alert_context.dart';
import 'alert_processing_rule_action_group_condition_alert_rule_id.dart';
import 'alert_processing_rule_action_group_condition_alert_rule_name.dart';
import 'alert_processing_rule_action_group_condition_description.dart';
import 'alert_processing_rule_action_group_condition_monitor_condition.dart';
import 'alert_processing_rule_action_group_condition_monitor_service.dart';
import 'alert_processing_rule_action_group_condition_severity.dart';
import 'alert_processing_rule_action_group_condition_signal_type.dart';
import 'alert_processing_rule_action_group_condition_target_resource.dart';
import 'alert_processing_rule_action_group_condition_target_resource_group.dart';
import 'alert_processing_rule_action_group_condition_target_resource_type.dart';

class AlertProcessingRuleActionGroupCondition {
  /// A `alertContext` block as defined above.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionAlertContext>? alertContext;
  /// A `alertRuleId` block as defined above.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionAlertRuleId>? alertRuleId;
  /// A `alertRuleName` block as defined above.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionAlertRuleName>? alertRuleName;
  /// A `description` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionDescription>? description;
  /// A `monitorCondition` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionMonitorCondition>? monitorCondition;
  /// A `monitorService` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionMonitorService>? monitorService;
  /// A `severity` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionSeverity>? severity;
  /// A `signalType` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionSignalType>? signalType;
  /// A `targetResource` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionTargetResource>? targetResource;
  /// A `targetResourceGroup` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionTargetResourceGroup>? targetResourceGroup;
  /// A `targetResourceType` block as defined below.
  ///
  /// &gt; **Note:** At least one of the `alertContext`, `alertRuleId`, `alertRuleName`, `description`, `monitorCondition`, `monitorService`, `severity`, `signalType`, `targetResource`, `targetResourceGroup`, `targetResourceType` must be specified.
  final pulumi.Input<AlertProcessingRuleActionGroupConditionTargetResourceType>? targetResourceType;

  /// Creates a new [AlertProcessingRuleActionGroupCondition].
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
  const AlertProcessingRuleActionGroupCondition({
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
      'alertContext': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionAlertContext, Map<String, dynamic>>(alertContext, (value) => value.toMap()),
      'alertRuleId': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionAlertRuleId, Map<String, dynamic>>(alertRuleId, (value) => value.toMap()),
      'alertRuleName': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionAlertRuleName, Map<String, dynamic>>(alertRuleName, (value) => value.toMap()),
      'description': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionDescription, Map<String, dynamic>>(description, (value) => value.toMap()),
      'monitorCondition': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionMonitorCondition, Map<String, dynamic>>(monitorCondition, (value) => value.toMap()),
      'monitorService': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionMonitorService, Map<String, dynamic>>(monitorService, (value) => value.toMap()),
      'severity': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionSeverity, Map<String, dynamic>>(severity, (value) => value.toMap()),
      'signalType': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionSignalType, Map<String, dynamic>>(signalType, (value) => value.toMap()),
      'targetResource': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionTargetResource, Map<String, dynamic>>(targetResource, (value) => value.toMap()),
      'targetResourceGroup': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionTargetResourceGroup, Map<String, dynamic>>(targetResourceGroup, (value) => value.toMap()),
      'targetResourceType': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupConditionTargetResourceType, Map<String, dynamic>>(targetResourceType, (value) => value.toMap()),
    };
  }

  factory AlertProcessingRuleActionGroupCondition.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupCondition(
      alertContext: (() { final guardedValue = map['alertContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionAlertContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alertRuleId: (() { final guardedValue = map['alertRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionAlertRuleId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alertRuleName: (() { final guardedValue = map['alertRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionAlertRuleName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorCondition: (() { final guardedValue = map['monitorCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionMonitorCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorService: (() { final guardedValue = map['monitorService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionMonitorService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionSeverity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signalType: (() { final guardedValue = map['signalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionSignalType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResource: (() { final guardedValue = map['targetResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionTargetResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResourceGroup: (() { final guardedValue = map['targetResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionTargetResourceGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResourceType: (() { final guardedValue = map['targetResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleActionGroupConditionTargetResourceType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
