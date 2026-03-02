// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_identity.dart';

/// {@template pulumi_aifoundry_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_aifoundry_project_project_args_doc}
class ProjectArgs {
  /// The AI Foundry ID under which this Project should be created. Changing this forces a new AI Foundry Project to be created.
  final pulumi.Input<String> aiServicesHubId;
  /// The description of this AI Foundry Project.
  final pulumi.Input<String>? description;
  /// The display name of this AI Foundry Project.
  final pulumi.Input<String>? friendlyName;
  /// Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Project to be created. Defaults to `false`.
  final pulumi.Input<bool>? highBusinessImpactEnabled;
  /// A `identity` block as defined below.
  final pulumi.Input<ProjectIdentity>? identity;
  /// The Azure Region where the AI Foundry Project should exist. Changing this forces a new AI Foundry Project to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this AI Foundry Project. Changing this forces a new AI Foundry Project to be created.
  final pulumi.Input<String>? name;
  /// The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  final pulumi.Input<String>? primaryUserAssignedIdentity;
  /// A mapping of tags which should be assigned to the AI Foundry Project.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [aiServicesHubId] The AI Foundry ID under which this Project should be created. Changing this forces a new AI Foundry Project to be created.
  /// [description] The description of this AI Foundry Project.
  /// [friendlyName] The display name of this AI Foundry Project.
  /// [highBusinessImpactEnabled] Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Project to be created. Defaults to `false`.
  /// [identity] A `identity` block as defined below.
  /// [location] The Azure Region where the AI Foundry Project should exist. Changing this forces a new AI Foundry Project to be created.
  /// [name] The name which should be used for this AI Foundry Project. Changing this forces a new AI Foundry Project to be created.
  /// [primaryUserAssignedIdentity] The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  /// [tags] A mapping of tags which should be assigned to the AI Foundry Project.
  ProjectArgs({
    required this.aiServicesHubId,
    this.description,
    this.friendlyName,
    this.highBusinessImpactEnabled,
    this.identity,
    this.location,
    this.name,
    this.primaryUserAssignedIdentity,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiServicesHubId': aiServicesHubId,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'highBusinessImpactEnabled': ?highBusinessImpactEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ProjectIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      aiServicesHubId: (map['aiServicesHubId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      highBusinessImpactEnabled: map['highBusinessImpactEnabled'] == null ? null : (map['highBusinessImpactEnabled']! as bool).input(),
      identity: map['identity'] == null ? null : (ProjectIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : (map['primaryUserAssignedIdentity']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

