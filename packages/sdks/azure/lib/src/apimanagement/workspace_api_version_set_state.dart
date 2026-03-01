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
    pulumi.Output<String>? apiManagementWorkspaceId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? versionHeaderName,
    pulumi.Output<String>? versionQueryName,
    pulumi.Output<String>? versioningScheme,
  }) :
      apiManagementWorkspaceId = pulumi.Input.asOptionalInput<String>(apiManagementWorkspaceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      versionHeaderName = pulumi.Input.asOptionalInput<String>(versionHeaderName),
      versionQueryName = pulumi.Input.asOptionalInput<String>(versionQueryName),
      versioningScheme = pulumi.Input.asOptionalInput<String>(versioningScheme);

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
      apiManagementWorkspaceId: map['apiManagementWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['apiManagementWorkspaceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      versionHeaderName: map['versionHeaderName'] == null ? null : pulumi.Output.create<String>(map['versionHeaderName'] as String),
      versionQueryName: map['versionQueryName'] == null ? null : pulumi.Output.create<String>(map['versionQueryName'] as String),
      versioningScheme: map['versioningScheme'] == null ? null : pulumi.Output.create<String>(map['versioningScheme'] as String),
    );
  }
}

