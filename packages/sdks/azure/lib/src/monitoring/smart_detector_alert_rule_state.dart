// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_detector_alert_rule_action_group.dart';

/// Input properties used for looking up and filtering SmartDetectorAlertRule resources.
class SmartDetectorAlertRuleState {
  /// An `action_group` block as defined below.
  final pulumi.Input<SmartDetectorAlertRuleActionGroup>? actionGroup;
  /// Specifies a description for the Smart Detector Alert Rule.
  final pulumi.Input<String>? description;
  /// Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`.
  final pulumi.Input<String>? detectorType;
  /// Is the Smart Detector Alert Rule enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format.
  final pulumi.Input<String>? frequency;
  /// Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the scopes of this Smart Detector Alert Rule.
  final pulumi.Input<List<String>>? scopeResourceIds;
  /// Specifies the severity of this Smart Detector Alert Rule. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3` or `Sev4`.
  final pulumi.Input<String>? severity;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again.
  final pulumi.Input<String>? throttlingDuration;

  /// Creates a new [SmartDetectorAlertRuleState].
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
  SmartDetectorAlertRuleState({
    pulumi.Output<SmartDetectorAlertRuleActionGroup>? actionGroup,
    pulumi.Output<String>? description,
    pulumi.Output<String>? detectorType,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? frequency,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<String>>? scopeResourceIds,
    pulumi.Output<String>? severity,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? throttlingDuration,
  }) :
      actionGroup = pulumi.Input.asOptionalInput<SmartDetectorAlertRuleActionGroup>(actionGroup),
      description = pulumi.Input.asOptionalInput<String>(description),
      detectorType = pulumi.Input.asOptionalInput<String>(detectorType),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scopeResourceIds = pulumi.Input.asOptionalInput<List<String>>(scopeResourceIds),
      severity = pulumi.Input.asOptionalInput<String>(severity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      throttlingDuration = pulumi.Input.asOptionalInput<String>(throttlingDuration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroup': ?pulumi.Input.mapOptionalInputValue<SmartDetectorAlertRuleActionGroup, Map<String, dynamic>>(actionGroup, (value) => value.toMap()),
      'description': ?description,
      'detectorType': ?detectorType,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scopeResourceIds': ?scopeResourceIds,
      'severity': ?severity,
      'tags': ?tags,
      'throttlingDuration': ?throttlingDuration,
    };
  }

  factory SmartDetectorAlertRuleState.fromMap(Map<String, dynamic> map) {
    return SmartDetectorAlertRuleState(
      actionGroup: map['actionGroup'] == null ? null : pulumi.Output.create<SmartDetectorAlertRuleActionGroup>(SmartDetectorAlertRuleActionGroup.fromMap((map['actionGroup'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      detectorType: map['detectorType'] == null ? null : pulumi.Output.create<String>(map['detectorType'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopeResourceIds: map['scopeResourceIds'] == null ? null : pulumi.Output.create<List<String>>((map['scopeResourceIds'] as List).cast<String>()),
      severity: map['severity'] == null ? null : pulumi.Output.create<String>(map['severity'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      throttlingDuration: map['throttlingDuration'] == null ? null : pulumi.Output.create<String>(map['throttlingDuration'] as String),
    );
  }
}

