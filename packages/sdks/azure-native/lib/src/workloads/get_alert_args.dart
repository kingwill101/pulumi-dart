// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_alert_args_doc}
/// Arguments for getAlert.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_alert_args_doc}
class GetAlertArgs {
  /// Name of the SAP monitor alert resource.
  final pulumi.Input<String> alertName;
  /// Name of the SAP monitor resource.
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAlertArgs].
  /// [alertName] Name of the SAP monitor alert resource.
  /// [monitorName] Name of the SAP monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAlertArgs({
    required pulumi.Output<String> alertName,
    required pulumi.Output<String> monitorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      alertName = pulumi.Input.asInput<String>(alertName),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertName': alertName,
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAlertArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertArgs(
      alertName: pulumi.Output.create<String>(map['alertName'] as String),
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

