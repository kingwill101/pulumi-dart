// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_detector_alert_rule_action_group.dart';

/// {@template pulumi_monitoring_smart_detector_alert_rule_smart_detector_alert_rule_args_doc}
/// The set of arguments for SmartDetectorAlertRule.
/// {@endtemplate}
/// {@macro pulumi_monitoring_smart_detector_alert_rule_smart_detector_alert_rule_args_doc}
class SmartDetectorAlertRuleArgs {
  /// An `action_group` block as defined below.
  final pulumi.Input<SmartDetectorAlertRuleActionGroup> actionGroup;
  /// Specifies a description for the Smart Detector Alert Rule.
  final pulumi.Input<String>? description;
  /// Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`.
  final pulumi.Input<String> detectorType;
  /// Is the Smart Detector Alert Rule enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format.
  final pulumi.Input<String> frequency;
  /// Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the scopes of this Smart Detector Alert Rule.
  final pulumi.Input<List<String>> scopeResourceIds;
  /// Specifies the severity of this Smart Detector Alert Rule. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3` or `Sev4`.
  final pulumi.Input<String> severity;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again.
  final pulumi.Input<String>? throttlingDuration;

  /// Creates a new [SmartDetectorAlertRuleArgs].
  /// [actionGroup] An `action_group` block as defined below.
  /// [description] Specifies a description for the Smart Detector Alert Rule.
  /// [detectorType] Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`.
  /// [enabled] Is the Smart Detector Alert Rule enabled? Defaults to `true`.
  /// [frequency] Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format.
  /// [name] Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created.
  /// [scopeResourceIds] Specifies the scopes of this Smart Detector Alert Rule.
  /// [severity] Specifies the severity of this Smart Detector Alert Rule. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3` or `Sev4`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [throttlingDuration] Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again.
  SmartDetectorAlertRuleArgs({
    required this.actionGroup,
    this.description,
    required this.detectorType,
    this.enabled,
    required this.frequency,
    this.name,
    required this.resourceGroupName,
    required this.scopeResourceIds,
    required this.severity,
    this.tags,
    this.throttlingDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroup': pulumi.Input.mapInputValue<SmartDetectorAlertRuleActionGroup, Map<String, dynamic>>(actionGroup, (value) => value.toMap()),
      'description': ?description,
      'detectorType': detectorType,
      'enabled': ?enabled,
      'frequency': frequency,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scopeResourceIds': scopeResourceIds,
      'severity': severity,
      'tags': ?tags,
      'throttlingDuration': ?throttlingDuration,
    };
  }

  factory SmartDetectorAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return SmartDetectorAlertRuleArgs(
      actionGroup: pulumi.Input.fromValue(SmartDetectorAlertRuleActionGroup.fromMap((map['actionGroup']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detectorType: pulumi.Input.fromValue(map['detectorType'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopeResourceIds: pulumi.Input.fromValue((map['scopeResourceIds'] as List).cast<String>()),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throttlingDuration: (() { final guardedValue = map['throttlingDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

