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
    pulumi.Output<String>? description,
    pulumi.Output<String>? devCenterId,
    pulumi.Output<String>? devCenterUri,
    pulumi.Output<ProjectIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maximumDevBoxesPerUser,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      devCenterId = pulumi.Input.asOptionalInput<String>(devCenterId),
      devCenterUri = pulumi.Input.asOptionalInput<String>(devCenterUri),
      identity = pulumi.Input.asOptionalInput<ProjectIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumDevBoxesPerUser = pulumi.Input.asOptionalInput<int>(maximumDevBoxesPerUser),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      devCenterId: map['devCenterId'] == null ? null : pulumi.Output.create<String>(map['devCenterId'] as String),
      devCenterUri: map['devCenterUri'] == null ? null : pulumi.Output.create<String>(map['devCenterUri'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ProjectIdentity>(ProjectIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maximumDevBoxesPerUser: map['maximumDevBoxesPerUser'] == null ? null : pulumi.Output.create<int>(map['maximumDevBoxesPerUser'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

