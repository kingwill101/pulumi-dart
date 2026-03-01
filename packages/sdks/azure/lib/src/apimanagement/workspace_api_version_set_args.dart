// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_api_version_set_workspace_api_version_set_args_doc}
/// The set of arguments for WorkspaceApiVersionSet.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_version_set_workspace_api_version_set_args_doc}
class WorkspaceApiVersionSetArgs {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementWorkspaceId;
  /// Specifies the description of the API Management Workspace API Version Set.
  final pulumi.Input<String>? description;
  /// Specifies the display name of the API Management Workspace API Version Set.
  final pulumi.Input<String> displayName;
  /// Specifies the name of the API Management Workspace API Version Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the header to read from inbound requests to determine the API version.
  final pulumi.Input<String>? versionHeaderName;
  /// Specifies the name of the query string parameter to read from inbound requests to determine the API version.
  final pulumi.Input<String>? versionQueryName;
  /// Specifies where in a request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  final pulumi.Input<String> versioningScheme;

  /// Creates a new [WorkspaceApiVersionSetArgs].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [description] Specifies the description of the API Management Workspace API Version Set.
  /// [displayName] Specifies the display name of the API Management Workspace API Version Set.
  /// [name] Specifies the name of the API Management Workspace API Version Set. Changing this forces a new resource to be created.
  /// [versionHeaderName] Specifies the name of the header to read from inbound requests to determine the API version.
  /// [versionQueryName] Specifies the name of the query string parameter to read from inbound requests to determine the API version.
  /// [versioningScheme] Specifies where in a request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  WorkspaceApiVersionSetArgs({
    required pulumi.Output<String> apiManagementWorkspaceId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? versionHeaderName,
    pulumi.Output<String>? versionQueryName,
    required pulumi.Output<String> versioningScheme,
  }) :
      apiManagementWorkspaceId = pulumi.Input.asInput<String>(apiManagementWorkspaceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      versionHeaderName = pulumi.Input.asOptionalInput<String>(versionHeaderName),
      versionQueryName = pulumi.Input.asOptionalInput<String>(versionQueryName),
      versioningScheme = pulumi.Input.asInput<String>(versioningScheme);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': apiManagementWorkspaceId,
      'description': ?description,
      'displayName': displayName,
      'name': ?name,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': versioningScheme,
    };
  }

  factory WorkspaceApiVersionSetArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiVersionSetArgs(
      apiManagementWorkspaceId: pulumi.Output.create<String>(map['apiManagementWorkspaceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      versionHeaderName: map['versionHeaderName'] == null ? null : pulumi.Output.create<String>(map['versionHeaderName'] as String),
      versionQueryName: map['versionQueryName'] == null ? null : pulumi.Output.create<String>(map['versionQueryName'] as String),
      versioningScheme: pulumi.Output.create<String>(map['versioningScheme'] as String),
    );
  }
}

