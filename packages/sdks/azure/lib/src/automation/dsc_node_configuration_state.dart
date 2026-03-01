// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DscNodeConfiguration resources.
class DscNodeConfigurationState {
  /// The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  final pulumi.Input<String>? configurationName;
  /// The PowerShell DSC Node Configuration (mof content).
  final pulumi.Input<String>? contentEmbedded;
  /// Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [DscNodeConfigurationState].
  /// [automationAccountName] The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  /// [configurationName] Optional.
  /// [contentEmbedded] The PowerShell DSC Node Configuration (mof content).
  /// [name] Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  DscNodeConfigurationState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? configurationName,
    pulumi.Output<String>? contentEmbedded,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      contentEmbedded = pulumi.Input.asOptionalInput<String>(contentEmbedded),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'configurationName': ?configurationName,
      'contentEmbedded': ?contentEmbedded,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory DscNodeConfigurationState.fromMap(Map<String, dynamic> map) {
    return DscNodeConfigurationState(
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      contentEmbedded: map['contentEmbedded'] == null ? null : pulumi.Output.create<String>(map['contentEmbedded'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

