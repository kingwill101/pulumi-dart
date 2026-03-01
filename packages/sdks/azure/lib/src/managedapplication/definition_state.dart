// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_authorization.dart';

/// Input properties used for looking up and filtering Definition resources.
class DefinitionState {
  /// One or more `authorization` block defined below.
  final pulumi.Input<List<DefinitionAuthorization>>? authorizations;
  /// Specifies the `createUiDefinition` JSON for the backing template with `Microsoft.Solutions/applications` resource.
  final pulumi.Input<String>? createUiDefinition;
  /// Specifies the managed application definition description.
  final pulumi.Input<String>? description;
  /// Specifies the managed application definition display name.
  final pulumi.Input<String>? displayName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the managed application lock level. Valid values include `CanNotDelete`, `None`, `ReadOnly`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? lockLevel;
  /// Specifies the inline main template JSON which has resources to be provisioned.
  final pulumi.Input<String>? mainTemplate;
  /// Specifies the name of the Managed Application Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Is the package enabled? Defaults to `true`.
  final pulumi.Input<bool>? packageEnabled;
  /// Specifies the managed application definition package file Uri.
  final pulumi.Input<String>? packageFileUri;
  /// The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** If either `create_ui_definition` or `main_template` is set they both must be set.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DefinitionState].
  /// [authorizations] One or more `authorization` block defined below.
  /// [createUiDefinition] Specifies the `createUiDefinition` JSON for the backing template with `Microsoft.Solutions/applications` resource.
  /// [description] Specifies the managed application definition description.
  /// [displayName] Specifies the managed application definition display name.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [lockLevel] Specifies the managed application lock level. Valid values include `CanNotDelete`, `None`, `ReadOnly`. Changing this forces a new resource to be created.
  /// [mainTemplate] Specifies the inline main template JSON which has resources to be provisioned.
  /// [name] Specifies the name of the Managed Application Definition. Changing this forces a new resource to be created.
  /// [packageEnabled] Is the package enabled? Defaults to `true`.
  /// [packageFileUri] Specifies the managed application definition package file Uri.
  /// [resourceGroupName] The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  DefinitionState({
    pulumi.Output<List<DefinitionAuthorization>>? authorizations,
    pulumi.Output<String>? createUiDefinition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? lockLevel,
    pulumi.Output<String>? mainTemplate,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? packageEnabled,
    pulumi.Output<String>? packageFileUri,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      authorizations = pulumi.Input.asOptionalInput<List<DefinitionAuthorization>>(authorizations),
      createUiDefinition = pulumi.Input.asOptionalInput<String>(createUiDefinition),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockLevel = pulumi.Input.asOptionalInput<String>(lockLevel),
      mainTemplate = pulumi.Input.asOptionalInput<String>(mainTemplate),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageEnabled = pulumi.Input.asOptionalInput<bool>(packageEnabled),
      packageFileUri = pulumi.Input.asOptionalInput<String>(packageFileUri),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<DefinitionAuthorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<DefinitionAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createUiDefinition': ?createUiDefinition,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'lockLevel': ?lockLevel,
      'mainTemplate': ?mainTemplate,
      'name': ?name,
      'packageEnabled': ?packageEnabled,
      'packageFileUri': ?packageFileUri,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DefinitionState.fromMap(Map<String, dynamic> map) {
    return DefinitionState(
      authorizations: map['authorizations'] == null ? null : pulumi.Output.create<List<DefinitionAuthorization>>(pulumi.Input.decodeList<DefinitionAuthorization>(map['authorizations'], (value) => DefinitionAuthorization.fromMap((value as Map).cast<String, dynamic>()))),
      createUiDefinition: map['createUiDefinition'] == null ? null : pulumi.Output.create<String>(map['createUiDefinition'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      lockLevel: map['lockLevel'] == null ? null : pulumi.Output.create<String>(map['lockLevel'] as String),
      mainTemplate: map['mainTemplate'] == null ? null : pulumi.Output.create<String>(map['mainTemplate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      packageEnabled: map['packageEnabled'] == null ? null : pulumi.Output.create<bool>(map['packageEnabled'] as bool),
      packageFileUri: map['packageFileUri'] == null ? null : pulumi.Output.create<String>(map['packageFileUri'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

