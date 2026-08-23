// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_identity.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// A map of Connectivity endpoints for this Synapse Workspace.
  final Map<String, String> connectivityEndpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below, which contains the Managed Service Identity information for this Synapse Workspace.
  final List<GetWorkspaceIdentity> identities;
  /// The Azure location where the Synapse Workspace exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetWorkspaceResult].
  /// [connectivityEndpoints] A map of Connectivity endpoints for this Synapse Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below, which contains the Managed Service Identity information for this Synapse Workspace.
  /// [location] The Azure location where the Synapse Workspace exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  const GetWorkspaceResult({
    required this.connectivityEndpoints,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityEndpoints': connectivityEndpoints,
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
      connectivityEndpoints: (map['connectivityEndpoints'] as Map).cast<String, String>(),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetWorkspaceIdentity>(map['identities']!, (value) => GetWorkspaceIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
