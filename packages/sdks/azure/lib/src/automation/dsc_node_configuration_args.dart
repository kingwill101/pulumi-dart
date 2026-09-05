// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_dsc_node_configuration_dsc_node_configuration_args_doc}
/// The set of arguments for DscNodeConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_dsc_node_configuration_dsc_node_configuration_args_doc}
class DscNodeConfigurationArgs {
  /// The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The PowerShell DSC Node Configuration (mof content).
  final pulumi.Input<String> contentEmbedded;
  /// Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DscNodeConfigurationArgs].
  /// [automationAccountName] The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  /// [contentEmbedded] The PowerShell DSC Node Configuration (mof content).
  /// [name] Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  const DscNodeConfigurationArgs({
    required this.automationAccountName,
    required this.contentEmbedded,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentEmbedded': contentEmbedded,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DscNodeConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DscNodeConfigurationArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      contentEmbedded: pulumi.Input.fromValue(map['contentEmbedded'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
