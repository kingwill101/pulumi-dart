// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_dsc_configuration_dsc_configuration_args_doc}
/// The set of arguments for DscConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_dsc_configuration_dsc_configuration_args_doc}
class DscConfigurationArgs {
  /// The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The PowerShell DSC Configuration script.
  final pulumi.Input<String> contentEmbedded;
  /// Description to go with DSC Configuration.
  final pulumi.Input<String?>? description;
  /// Must be the same location as the Automation Account. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Verbose log option.
  final pulumi.Input<bool?>? logVerbose;
  /// Specifies the name of the DSC Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DscConfigurationArgs].
  /// [automationAccountName] The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created.
  /// [contentEmbedded] The PowerShell DSC Configuration script.
  /// [description] Description to go with DSC Configuration.
  /// [location] Must be the same location as the Automation Account. Changing this forces a new resource to be created.
  /// [logVerbose] Verbose log option.
  /// [name] Specifies the name of the DSC Configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const DscConfigurationArgs({
    required this.automationAccountName,
    required this.contentEmbedded,
    this.description,
    this.location,
    this.logVerbose,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentEmbedded': contentEmbedded,
      'description': ?description,
      'location': ?location,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DscConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DscConfigurationArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      contentEmbedded: pulumi.Input.fromValue(map['contentEmbedded'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logVerbose: (() { final guardedValue = map['logVerbose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
