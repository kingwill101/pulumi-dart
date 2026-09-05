// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_identity.dart';

/// Result data returned by getProject.
class GetProjectResult {
  /// The description of the Dev Center Project.
  final String? description;
  /// The ID of the associated Dev Center.
  final String? devCenterId;
  /// The URI of the Dev Center.
  final String? devCenterUri;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetProjectIdentity>? identities;
  /// The Azure Region where the Dev Center Project exists.
  final String? location;
  /// The maximum number of Dev Boxes a single user can create across all pools in the project.
  final int? maximumDevBoxesPerUser;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Dev Center Project.
  final Map<String, String>? tags;

  /// Creates a new [GetProjectResult].
  /// [description] The description of the Dev Center Project.
  /// [devCenterId] The ID of the associated Dev Center.
  /// [devCenterUri] The URI of the Dev Center.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project exists.
  /// [maximumDevBoxesPerUser] The maximum number of Dev Boxes a single user can create across all pools in the project.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Dev Center Project.
  const GetProjectResult({
    this.description,
    this.devCenterId,
    this.devCenterUri,
    this.id,
    this.identities,
    this.location,
    this.maximumDevBoxesPerUser,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'devCenterId': ?devCenterId,
      'devCenterUri': ?devCenterUri,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProjectIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'maximumDevBoxesPerUser': ?maximumDevBoxesPerUser,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterUri: (() { final guardedValue = map['devCenterUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProjectIdentity>(guardedValue, (value) => GetProjectIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumDevBoxesPerUser: (() { final guardedValue = map['maximumDevBoxesPerUser']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
