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
      actionGroup: (SmartDetectorAlertRuleActionGroup.fromMap((map['actionGroup'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      detectorType: (map['detectorType'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      frequency: (map['frequency'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopeResourceIds: ((map['scopeResourceIds'] as List).cast<String>()).input(),
      severity: (map['severity'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      throttlingDuration: map['throttlingDuration'] == null ? null : (map['throttlingDuration']! as String).input(),
    );
  }
}

