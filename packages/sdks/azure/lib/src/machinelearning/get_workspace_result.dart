// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_identity.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetWorkspaceIdentity>? identities;
  /// The location where the Machine Learning Workspace exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The access type for the system storage account.
  final String? storageAccountAccessType;
  /// A mapping of tags assigned to the Machine Learning Workspace.
  final Map<String, String>? tags;

  /// Creates a new [GetWorkspaceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The location where the Machine Learning Workspace exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [storageAccountAccessType] The access type for the system storage account.
  /// [tags] A mapping of tags assigned to the Machine Learning Workspace.
  const GetWorkspaceResult({
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.storageAccountAccessType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspaceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'storageAccountAccessType': ?storageAccountAccessType,
      'tags': ?tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspaceIdentity>(guardedValue, (value) => GetWorkspaceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountAccessType: (() { final guardedValue = map['storageAccountAccessType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
