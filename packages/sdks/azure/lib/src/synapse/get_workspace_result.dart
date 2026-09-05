// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_identity.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// A map of Connectivity endpoints for this Synapse Workspace.
  final Map<String, String>? connectivityEndpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below, which contains the Managed Service Identity information for this Synapse Workspace.
  final List<GetWorkspaceIdentity>? identities;
  /// The Azure location where the Synapse Workspace exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetWorkspaceResult].
  /// [connectivityEndpoints] A map of Connectivity endpoints for this Synapse Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below, which contains the Managed Service Identity information for this Synapse Workspace.
  /// [location] The Azure location where the Synapse Workspace exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  const GetWorkspaceResult({
    this.connectivityEndpoints,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityEndpoints': ?connectivityEndpoints,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspaceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      connectivityEndpoints: (() { final guardedValue = map['connectivityEndpoints']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspaceIdentity>(guardedValue, (value) => GetWorkspaceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
