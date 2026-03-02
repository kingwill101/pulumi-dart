// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DscConfiguration resources.
class DscConfigurationState {
  /// The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The PowerShell DSC Configuration script.
  final pulumi.Input<String>? contentEmbedded;
  /// Description to go with DSC Configuration.
  final pulumi.Input<String>? description;
  /// Must be the same location as the Automation Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Verbose log option.
  final pulumi.Input<bool>? logVerbose;
  /// Specifies the name of the DSC Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  final pulumi.Input<String>? state;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DscConfigurationState].
  /// [automationAccountName] The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created.
  /// [contentEmbedded] The PowerShell DSC Configuration script.
  /// [description] Description to go with DSC Configuration.
  /// [location] Must be the same location as the Automation Account. Changing this forces a new resource to be created.
  /// [logVerbose] Verbose log option.
  /// [name] Specifies the name of the DSC Configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created.
  /// [state] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  DscConfigurationState({
    this.automationAccountName,
    this.contentEmbedded,
    this.description,
    this.location,
    this.logVerbose,
    this.name,
    this.resourceGroupName,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'contentEmbedded': ?contentEmbedded,
      'description': ?description,
      'location': ?location,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory DscConfigurationState.fromMap(Map<String, dynamic> map) {
    return DscConfigurationState(
      automationAccountName: map['automationAccountName'] == null ? null : (map['automationAccountName']! as String).input(),
      contentEmbedded: map['contentEmbedded'] == null ? null : (map['contentEmbedded']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logVerbose: map['logVerbose'] == null ? null : (map['logVerbose']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

