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
    this.associations,
    this.connectedDeploymentGroups,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.mirroringDeploymentGroup,
    this.mirroringDeploymentGroups,
    this.mirroringEndpointGroupId,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.type,
    this.updateTime,
  });

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
      associations: map['associations'] == null ? null : (pulumi.Input.decodeList<MirroringEndpointGroupAssociation>(map['associations'], (value) => MirroringEndpointGroupAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectedDeploymentGroups: map['connectedDeploymentGroups'] == null ? null : (pulumi.Input.decodeList<MirroringEndpointGroupConnectedDeploymentGroup>(map['connectedDeploymentGroups'], (value) => MirroringEndpointGroupConnectedDeploymentGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mirroringDeploymentGroup: map['mirroringDeploymentGroup'] == null ? null : (map['mirroringDeploymentGroup'] as String).input(),
      mirroringDeploymentGroups: map['mirroringDeploymentGroups'] == null ? null : ((map['mirroringDeploymentGroups'] as List).cast<String>()).input(),
      mirroringEndpointGroupId: map['mirroringEndpointGroupId'] == null ? null : (map['mirroringEndpointGroupId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

