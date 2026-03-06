// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_identity.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// The AI Foundry ID under which this Project should be created. Changing this forces a new AI Foundry Project to be created.
  final pulumi.Input<String>? aiServicesHubId;
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
  /// The immutable project ID associated with this AI Foundry Project.
  final pulumi.Input<String>? projectId;
  /// A mapping of tags which should be assigned to the AI Foundry Project.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectState].
  /// [aiServicesHubId] The AI Foundry ID under which this Project should be created. Changing this forces a new AI Foundry Project to be created.
  /// [description] The description of this AI Foundry Project.
  /// [friendlyName] The display name of this AI Foundry Project.
  /// [highBusinessImpactEnabled] Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Project to be created. Defaults to `false`.
  /// [identity] A `identity` block as defined below.
  /// [location] The Azure Region where the AI Foundry Project should exist. Changing this forces a new AI Foundry Project to be created.
  /// [name] The name which should be used for this AI Foundry Project. Changing this forces a new AI Foundry Project to be created.
  /// [primaryUserAssignedIdentity] The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  /// [projectId] The immutable project ID associated with this AI Foundry Project.
  /// [tags] A mapping of tags which should be assigned to the AI Foundry Project.
  const ProjectState({
    this.aiServicesHubId,
    this.description,
    this.friendlyName,
    this.highBusinessImpactEnabled,
    this.identity,
    this.location,
    this.name,
    this.primaryUserAssignedIdentity,
    this.projectId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiServicesHubId': ?aiServicesHubId,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'highBusinessImpactEnabled': ?highBusinessImpactEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ProjectIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'projectId': ?projectId,
      'tags': ?tags,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      aiServicesHubId: (() { final guardedValue = map['aiServicesHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highBusinessImpactEnabled: (() { final guardedValue = map['highBusinessImpactEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryUserAssignedIdentity: (() { final guardedValue = map['primaryUserAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

