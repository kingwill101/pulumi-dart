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
      apiManagementWorkspaceId: (() { final guardedValue = map['apiManagementWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionHeaderName: (() { final guardedValue = map['versionHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionQueryName: (() { final guardedValue = map['versionQueryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versioningScheme: (() { final guardedValue = map['versioningScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

