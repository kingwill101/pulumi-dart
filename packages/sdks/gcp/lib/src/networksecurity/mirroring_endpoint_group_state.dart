// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_endpoint_group_association.dart';
import 'mirroring_endpoint_group_connected_deployment_group.dart';

/// Input properties used for looking up and filtering MirroringEndpointGroup resources.
class MirroringEndpointGroupState {
  /// List of associations to this endpoint group.
  /// Structure is documented below.
  final pulumi.Input<List<MirroringEndpointGroupAssociation>>? associations;
  /// List of details about the connected deployment groups to this endpoint
  /// group.
  /// Structure is documented below.
  final pulumi.Input<List<MirroringEndpointGroupConnectedDeploymentGroup>>? connectedDeploymentGroups;
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? createTime;
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the endpoint group, currently restricted to `global`.
  final pulumi.Input<String>? location;
  /// The deployment group that this DIRECT endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? mirroringDeploymentGroup;
  /// A list of the deployment groups that this BROKER endpoint group is
  /// connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<List<String>>? mirroringDeploymentGroups;
  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  final pulumi.Input<String>? mirroringEndpointGroupId;
  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new association to the group).
  /// See https://google.aip.dev/128.
  final pulumi.Input<bool>? reconciling;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final pulumi.Input<String>? state;
  /// The type of the endpoint group.
  /// If left unspecified, defaults to DIRECT.
  /// Possible values:
  /// DIRECT
  /// BROKER
  final pulumi.Input<String>? type;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MirroringEndpointGroupState].
  /// [associations] List of associations to this endpoint group.
  /// [connectedDeploymentGroups] List of details about the connected deployment groups to this endpoint
  /// [createTime] The timestamp when the resource was created.
  /// [description] User-provided description of the endpoint group.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [mirroringDeploymentGroup] The deployment group that this DIRECT endpoint group is connected to, for example:
  /// [mirroringDeploymentGroups] A list of the deployment groups that this BROKER endpoint group is
  /// [mirroringEndpointGroupId] The ID to use for the endpoint group, which will become the final component
  /// [name] (Output)
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] (Output)
  /// [type] The type of the endpoint group.
  /// [updateTime] The timestamp when the resource was most recently updated.
  MirroringEndpointGroupState({
    pulumi.Output<List<MirroringEndpointGroupAssociation>>? associations,
    pulumi.Output<List<MirroringEndpointGroupConnectedDeploymentGroup>>? connectedDeploymentGroups,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mirroringDeploymentGroup,
    pulumi.Output<List<String>>? mirroringDeploymentGroups,
    pulumi.Output<String>? mirroringEndpointGroupId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      associations = pulumi.Input.asOptionalInput<List<MirroringEndpointGroupAssociation>>(associations),
      connectedDeploymentGroups = pulumi.Input.asOptionalInput<List<MirroringEndpointGroupConnectedDeploymentGroup>>(connectedDeploymentGroups),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mirroringDeploymentGroup = pulumi.Input.asOptionalInput<String>(mirroringDeploymentGroup),
      mirroringDeploymentGroups = pulumi.Input.asOptionalInput<List<String>>(mirroringDeploymentGroups),
      mirroringEndpointGroupId = pulumi.Input.asOptionalInput<String>(mirroringEndpointGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?pulumi.Input.mapOptionalInputValue<List<MirroringEndpointGroupAssociation>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<MirroringEndpointGroupAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectedDeploymentGroups': ?pulumi.Input.mapOptionalInputValue<List<MirroringEndpointGroupConnectedDeploymentGroup>, List<Map<String, dynamic>>>(connectedDeploymentGroups, (value) => pulumi.Input.encodeList<MirroringEndpointGroupConnectedDeploymentGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'mirroringDeploymentGroup': ?mirroringDeploymentGroup,
      'mirroringDeploymentGroups': ?mirroringDeploymentGroups,
      'mirroringEndpointGroupId': ?mirroringEndpointGroupId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory MirroringEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointGroupState(
      associations: map['associations'] == null ? null : pulumi.Output.create<List<MirroringEndpointGroupAssociation>>(pulumi.Input.decodeList<MirroringEndpointGroupAssociation>(map['associations'], (value) => MirroringEndpointGroupAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      connectedDeploymentGroups: map['connectedDeploymentGroups'] == null ? null : pulumi.Output.create<List<MirroringEndpointGroupConnectedDeploymentGroup>>(pulumi.Input.decodeList<MirroringEndpointGroupConnectedDeploymentGroup>(map['connectedDeploymentGroups'], (value) => MirroringEndpointGroupConnectedDeploymentGroup.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mirroringDeploymentGroup: map['mirroringDeploymentGroup'] == null ? null : pulumi.Output.create<String>(map['mirroringDeploymentGroup'] as String),
      mirroringDeploymentGroups: map['mirroringDeploymentGroups'] == null ? null : pulumi.Output.create<List<String>>((map['mirroringDeploymentGroups'] as List).cast<String>()),
      mirroringEndpointGroupId: map['mirroringEndpointGroupId'] == null ? null : pulumi.Output.create<String>(map['mirroringEndpointGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

