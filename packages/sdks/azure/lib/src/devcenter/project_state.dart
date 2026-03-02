// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_identity.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// Description of the project. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? description;
  /// Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? devCenterId;
  /// The URI of the Dev Center resource this project is associated with.
  final pulumi.Input<String>? devCenterUri;
  /// An `identity` block as defined below.
  final pulumi.Input<ProjectIdentity>? identity;
  /// The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? location;
  /// When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project.
  final pulumi.Input<int>? maximumDevBoxesPerUser;
  /// Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Dev Center Project.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectState].
  /// [description] Description of the project. Changing this forces a new Dev Center Project to be created.
  /// [devCenterId] Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created.
  /// [devCenterUri] The URI of the Dev Center resource this project is associated with.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  /// [maximumDevBoxesPerUser] When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project.
  /// [name] Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Project.
  ProjectState({
    this.description,
    this.devCenterId,
    this.devCenterUri,
    this.identity,
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
      'identity': ?pulumi.Input.mapOptionalInputValue<ProjectIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maximumDevBoxesPerUser': ?maximumDevBoxesPerUser,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      devCenterId: map['devCenterId'] == null ? null : (map['devCenterId'] as String).input(),
      devCenterUri: map['devCenterUri'] == null ? null : (map['devCenterUri'] as String).input(),
      identity: map['identity'] == null ? null : (ProjectIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maximumDevBoxesPerUser: map['maximumDevBoxesPerUser'] == null ? null : (map['maximumDevBoxesPerUser'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

