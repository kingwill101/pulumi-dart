// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceApiVersionSet resources.
class WorkspaceApiVersionSetState {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementWorkspaceId;
  /// Specifies the description of the API Management Workspace API Version Set.
  final pulumi.Input<String>? description;
  /// Specifies the display name of the API Management Workspace API Version Set.
  final pulumi.Input<String>? displayName;
  /// Specifies the name of the API Management Workspace API Version Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the header to read from inbound requests to determine the API version.
  final pulumi.Input<String>? versionHeaderName;
  /// Specifies the name of the query string parameter to read from inbound requests to determine the API version.
  final pulumi.Input<String>? versionQueryName;
  /// Specifies where in a request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  final pulumi.Input<String>? versioningScheme;

  /// Creates a new [WorkspaceApiVersionSetState].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [description] Specifies the description of the API Management Workspace API Version Set.
  /// [displayName] Specifies the display name of the API Management Workspace API Version Set.
  /// [name] Specifies the name of the API Management Workspace API Version Set. Changing this forces a new resource to be created.
  /// [versionHeaderName] Specifies the name of the header to read from inbound requests to determine the API version.
  /// [versionQueryName] Specifies the name of the query string parameter to read from inbound requests to determine the API version.
  /// [versioningScheme] Specifies where in a request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  WorkspaceApiVersionSetState({
    this.apiManagementWorkspaceId,
    this.description,
    this.displayName,
    this.name,
    this.versionHeaderName,
    this.versionQueryName,
    this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': ?apiManagementWorkspaceId,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': ?versioningScheme,
    };
  }

  factory WorkspaceApiVersionSetState.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiVersionSetState(
      apiManagementWorkspaceId: map['apiManagementWorkspaceId'] == null ? null : (map['apiManagementWorkspaceId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      versionHeaderName: map['versionHeaderName'] == null ? null : (map['versionHeaderName']! as String).input(),
      versionQueryName: map['versionQueryName'] == null ? null : (map['versionQueryName']! as String).input(),
      versioningScheme: map['versioningScheme'] == null ? null : (map['versioningScheme']! as String).input(),
    );
  }
}

