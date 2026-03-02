// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_identity.dart';

/// {@template pulumi_devcenter_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_devcenter_project_project_args_doc}
class ProjectArgs {
  /// Description of the project. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? description;
  /// Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String> devCenterId;
  /// An `identity` block as defined below.
  final pulumi.Input<ProjectIdentity>? identity;
  /// The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? location;
  /// When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project.
  final pulumi.Input<int>? maximumDevBoxesPerUser;
  /// Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Dev Center Project.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [description] Description of the project. Changing this forces a new Dev Center Project to be created.
  /// [devCenterId] Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  /// [maximumDevBoxesPerUser] When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project.
  /// [name] Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Project.
  ProjectArgs({
    this.description,
    required this.devCenterId,
    this.identity,
    this.location,
    this.maximumDevBoxesPerUser,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'devCenterId': devCenterId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ProjectIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maximumDevBoxesPerUser': ?maximumDevBoxesPerUser,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      devCenterId: (map['devCenterId'] as String).input(),
      identity: map['identity'] == null ? null : (ProjectIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maximumDevBoxesPerUser: map['maximumDevBoxesPerUser'] == null ? null : (map['maximumDevBoxesPerUser']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

