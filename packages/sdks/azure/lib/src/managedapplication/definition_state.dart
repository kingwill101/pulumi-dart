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
    this.authorizations,
    this.createUiDefinition,
    this.description,
    this.displayName,
    this.location,
    this.lockLevel,
    this.mainTemplate,
    this.name,
    this.packageEnabled,
    this.packageFileUri,
    this.resourceGroupName,
    this.tags,
  });

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
      authorizations: map['authorizations'] == null ? null : (pulumi.Input.decodeList<DefinitionAuthorization>(map['authorizations'], (value) => DefinitionAuthorization.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createUiDefinition: map['createUiDefinition'] == null ? null : (map['createUiDefinition'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      lockLevel: map['lockLevel'] == null ? null : (map['lockLevel'] as String).input(),
      mainTemplate: map['mainTemplate'] == null ? null : (map['mainTemplate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      packageEnabled: map['packageEnabled'] == null ? null : (map['packageEnabled'] as bool).input(),
      packageFileUri: map['packageFileUri'] == null ? null : (map['packageFileUri'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

