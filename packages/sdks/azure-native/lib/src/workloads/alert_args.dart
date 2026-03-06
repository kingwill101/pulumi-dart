// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_properties.dart';

/// {@template pulumi_workloads_alert_args_doc}
/// The set of arguments for Alert.
/// {@endtemplate}
/// {@macro pulumi_workloads_alert_args_doc}
class AlertArgs {
  /// Name of the SAP monitor alert resource.
  final pulumi.Input<String>? alertName;
  /// Describes the properties of an alert.
  final pulumi.Input<AlertRuleProperties>? alertRuleProperties;
  /// Name of the SAP monitor resource.
  final pulumi.Input<String> monitorName;
  /// Name of provider instances associated with the alert.
  final pulumi.Input<List<String>>? providerNames;
  /// The provider type for alert. For example, the value can be SapHana.
  final pulumi.Input<String>? providerType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the alert template from which it was created.
  final pulumi.Input<String>? templateName;

  /// Creates a new [AlertArgs].
  /// [alertName] Name of the SAP monitor alert resource.
  /// [alertRuleProperties] Describes the properties of an alert.
  /// [monitorName] Name of the SAP monitor resource.
  /// [providerNames] Name of provider instances associated with the alert.
  /// [providerType] The provider type for alert. For example, the value can be SapHana.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [templateName] Name of the alert template from which it was created.
  const AlertArgs({
    this.alertName,
    this.alertRuleProperties,
    required this.monitorName,
    this.providerNames,
    this.providerType,
    required this.resourceGroupName,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertName': ?alertName,
      'alertRuleProperties': ?pulumi.Input.mapOptionalInputValue<AlertRuleProperties, Map<String, dynamic>>(alertRuleProperties, (value) => value.toMap()),
      'monitorName': monitorName,
      'providerNames': ?providerNames,
      'providerType': ?providerType,
      'resourceGroupName': resourceGroupName,
      'templateName': ?templateName,
    };
  }

  factory AlertArgs.fromMap(Map<String, dynamic> map) {
    return AlertArgs(
      alertName: (() { final guardedValue = map['alertName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertRuleProperties: (() { final guardedValue = map['alertRuleProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertRuleProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      providerNames: (() { final guardedValue = map['providerNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      providerType: (() { final guardedValue = map['providerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

