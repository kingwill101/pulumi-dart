// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// Specifies the ID of the API Management Service in which the API Management Workspace should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The description of the API Management Workspace.
  final pulumi.Input<String>? description;
  /// The display name of the API Management Workspace.
  final pulumi.Input<String>? displayName;
  /// Specifies the name which should be used for this API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [WorkspaceState].
  /// [apiManagementId] Specifies the ID of the API Management Service in which the API Management Workspace should be created. Changing this forces a new resource to be created.
  /// [description] The description of the API Management Workspace.
  /// [displayName] The display name of the API Management Workspace.
  /// [name] Specifies the name which should be used for this API Management Workspace. Changing this forces a new resource to be created.
  WorkspaceState({
    pulumi.Output<String>? apiManagementId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
  }) :
      apiManagementId = pulumi.Input.asOptionalInput<String>(apiManagementId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      apiManagementId: map['apiManagementId'] == null ? null : pulumi.Output.create<String>(map['apiManagementId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

