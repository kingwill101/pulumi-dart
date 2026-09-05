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
  final pulumi.Input<String?>? description;
  /// Specifies the display name of the API Management Workspace API Version Set.
  final pulumi.Input<String> displayName;
  /// Specifies the name of the API Management Workspace API Version Set. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the header to read from inbound requests to determine the API version.
  final pulumi.Input<String?>? versionHeaderName;
  /// Specifies the name of the query string parameter to read from inbound requests to determine the API version.
  final pulumi.Input<String?>? versionQueryName;
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
  const WorkspaceApiVersionSetArgs({
    required this.apiManagementWorkspaceId,
    this.description,
    required this.displayName,
    this.name,
    this.versionHeaderName,
    this.versionQueryName,
    required this.versioningScheme,
  });

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
      apiManagementWorkspaceId: pulumi.Input.fromValue(map['apiManagementWorkspaceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionHeaderName: (() { final guardedValue = map['versionHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionQueryName: (() { final guardedValue = map['versionQueryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versioningScheme: pulumi.Input.fromValue(map['versioningScheme'] as String),
    );
  }
}
