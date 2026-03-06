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
  const ProjectState({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devCenterUri: (() { final guardedValue = map['devCenterUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumDevBoxesPerUser: (() { final guardedValue = map['maximumDevBoxesPerUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

