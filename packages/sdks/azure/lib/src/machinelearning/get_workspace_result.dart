// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_identity.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetWorkspaceIdentity> identities;
  /// The location where the Machine Learning Workspace exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Machine Learning Workspace.
  final Map<String, String> tags;

  /// Creates a new [GetWorkspaceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The location where the Machine Learning Workspace exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Machine Learning Workspace.
  GetWorkspaceResult({
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities': pulumi.Input.encodeList<GetWorkspaceIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetWorkspaceIdentity>(map['identities']!, (value) => GetWorkspaceIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

