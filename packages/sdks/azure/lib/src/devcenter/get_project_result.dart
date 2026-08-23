// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_identity.dart';

/// Result data returned by getProject.
class GetProjectResult {
  /// The description of the Dev Center Project.
  final String description;
  /// The ID of the associated Dev Center.
  final String devCenterId;
  /// The URI of the Dev Center.
  final String devCenterUri;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetProjectIdentity> identities;
  /// The Azure Region where the Dev Center Project exists.
  final String location;
  /// The maximum number of Dev Boxes a single user can create across all pools in the project.
  final int maximumDevBoxesPerUser;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Dev Center Project.
  final Map<String, String> tags;

  /// Creates a new [GetProjectResult].
  /// [description] The description of the Dev Center Project.
  /// [devCenterId] The ID of the associated Dev Center.
  /// [devCenterUri] The URI of the Dev Center.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project exists.
  /// [maximumDevBoxesPerUser] The maximum number of Dev Boxes a single user can create across all pools in the project.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Dev Center Project.
  const GetProjectResult({
    required this.description,
    required this.devCenterId,
    required this.devCenterUri,
    required this.id,
    required this.identities,
    required this.location,
    required this.maximumDevBoxesPerUser,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'devCenterId': devCenterId,
      'devCenterUri': devCenterUri,
      'id': id,
      'identities': pulumi.Input.encodeList<GetProjectIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'maximumDevBoxesPerUser': maximumDevBoxesPerUser,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      description: map['description'] as String,
      devCenterId: map['devCenterId'] as String,
      devCenterUri: map['devCenterUri'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetProjectIdentity>(map['identities']!, (value) => GetProjectIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      maximumDevBoxesPerUser: map['maximumDevBoxesPerUser'] as int,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
