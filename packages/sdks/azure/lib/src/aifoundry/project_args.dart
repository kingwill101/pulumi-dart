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
    required pulumi.Output<String> aiServicesHubId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<bool>? highBusinessImpactEnabled,
    pulumi.Output<ProjectIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryUserAssignedIdentity,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aiServicesHubId = pulumi.Input.asInput<String>(aiServicesHubId),
      description = pulumi.Input.asOptionalInput<String>(description),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      highBusinessImpactEnabled = pulumi.Input.asOptionalInput<bool>(highBusinessImpactEnabled),
      identity = pulumi.Input.asOptionalInput<ProjectIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryUserAssignedIdentity = pulumi.Input.asOptionalInput<String>(primaryUserAssignedIdentity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      aiServicesHubId: pulumi.Output.create<String>(map['aiServicesHubId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      highBusinessImpactEnabled: map['highBusinessImpactEnabled'] == null ? null : pulumi.Output.create<bool>(map['highBusinessImpactEnabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<ProjectIdentity>(ProjectIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : pulumi.Output.create<String>(map['primaryUserAssignedIdentity'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

