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
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? contentEmbedded,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logVerbose,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      contentEmbedded = pulumi.Input.asOptionalInput<String>(contentEmbedded),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      logVerbose = pulumi.Input.asOptionalInput<bool>(logVerbose),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      contentEmbedded: map['contentEmbedded'] == null ? null : pulumi.Output.create<String>(map['contentEmbedded'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logVerbose: map['logVerbose'] == null ? null : pulumi.Output.create<bool>(map['logVerbose'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

