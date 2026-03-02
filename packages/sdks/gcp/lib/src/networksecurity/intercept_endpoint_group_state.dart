// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_endpoint_group_association.dart';
import 'intercept_endpoint_group_connected_deployment_group.dart';

/// Input properties used for looking up and filtering InterceptEndpointGroup resources.
class InterceptEndpointGroupState {
  /// List of associations to this endpoint group.
  /// Structure is documented below.
  final pulumi.Input<List<InterceptEndpointGroupAssociation>>? associations;
  /// The endpoint group's view of a connected deployment group.
  /// Structure is documented below.
  final pulumi.Input<List<InterceptEndpointGroupConnectedDeploymentGroup>>? connectedDeploymentGroups;
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? createTime;
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The deployment group that this endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? interceptDeploymentGroup;
  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  final pulumi.Input<String>? interceptEndpointGroupId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the endpoint group, currently restricted to `global`.
  final pulumi.Input<String>? location;
  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
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
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [InterceptEndpointGroupState].
  /// [associations] List of associations to this endpoint group.
  /// [connectedDeploymentGroups] The endpoint group's view of a connected deployment group.
  /// [createTime] The timestamp when the resource was created.
  /// [description] User-provided description of the endpoint group.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [interceptDeploymentGroup] The deployment group that this endpoint group is connected to, for example:
  /// [interceptEndpointGroupId] The ID to use for the endpoint group, which will become the final component
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [name] (Output)
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] (Output)
  /// [updateTime] The timestamp when the resource was most recently updated.
  InterceptEndpointGroupState({
    this.associations,
    this.connectedDeploymentGroups,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.interceptDeploymentGroup,
    this.interceptEndpointGroupId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?pulumi.Input.mapOptionalInputValue<List<InterceptEndpointGroupAssociation>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<InterceptEndpointGroupAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectedDeploymentGroups': ?pulumi.Input.mapOptionalInputValue<List<InterceptEndpointGroupConnectedDeploymentGroup>, List<Map<String, dynamic>>>(connectedDeploymentGroups, (value) => pulumi.Input.encodeList<InterceptEndpointGroupConnectedDeploymentGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'interceptDeploymentGroup': ?interceptDeploymentGroup,
      'interceptEndpointGroupId': ?interceptEndpointGroupId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory InterceptEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return InterceptEndpointGroupState(
      associations: map['associations'] == null ? null : (pulumi.Input.decodeList<InterceptEndpointGroupAssociation>(map['associations'], (value) => InterceptEndpointGroupAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectedDeploymentGroups: map['connectedDeploymentGroups'] == null ? null : (pulumi.Input.decodeList<InterceptEndpointGroupConnectedDeploymentGroup>(map['connectedDeploymentGroups'], (value) => InterceptEndpointGroupConnectedDeploymentGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      interceptDeploymentGroup: map['interceptDeploymentGroup'] == null ? null : (map['interceptDeploymentGroup'] as String).input(),
      interceptEndpointGroupId: map['interceptEndpointGroupId'] == null ? null : (map['interceptEndpointGroupId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

