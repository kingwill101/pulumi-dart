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
  AlertArgs({
    pulumi.Output<String>? alertName,
    pulumi.Output<AlertRuleProperties>? alertRuleProperties,
    required pulumi.Output<String> monitorName,
    pulumi.Output<List<String>>? providerNames,
    pulumi.Output<String>? providerType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? templateName,
  }) :
      alertName = pulumi.Input.asOptionalInput<String>(alertName),
      alertRuleProperties = pulumi.Input.asOptionalInput<AlertRuleProperties>(alertRuleProperties),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      providerNames = pulumi.Input.asOptionalInput<List<String>>(providerNames),
      providerType = pulumi.Input.asOptionalInput<String>(providerType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      templateName = pulumi.Input.asOptionalInput<String>(templateName);

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
      alertName: map['alertName'] == null ? null : pulumi.Output.create<String>(map['alertName'] as String),
      alertRuleProperties: map['alertRuleProperties'] == null ? null : pulumi.Output.create<AlertRuleProperties>(AlertRuleProperties.fromMap((map['alertRuleProperties'] as Map).cast<String, dynamic>())),
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      providerNames: map['providerNames'] == null ? null : pulumi.Output.create<List<String>>((map['providerNames'] as List).cast<String>()),
      providerType: map['providerType'] == null ? null : pulumi.Output.create<String>(map['providerType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
    );
  }
}

