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
    pulumi.Output<List<InterceptEndpointGroupAssociation>>? associations,
    pulumi.Output<List<InterceptEndpointGroupConnectedDeploymentGroup>>? connectedDeploymentGroups,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? interceptDeploymentGroup,
    pulumi.Output<String>? interceptEndpointGroupId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      associations = pulumi.Input.asOptionalInput<List<InterceptEndpointGroupAssociation>>(associations),
      connectedDeploymentGroups = pulumi.Input.asOptionalInput<List<InterceptEndpointGroupConnectedDeploymentGroup>>(connectedDeploymentGroups),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      interceptDeploymentGroup = pulumi.Input.asOptionalInput<String>(interceptDeploymentGroup),
      interceptEndpointGroupId = pulumi.Input.asOptionalInput<String>(interceptEndpointGroupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      associations: map['associations'] == null ? null : pulumi.Output.create<List<InterceptEndpointGroupAssociation>>(pulumi.Input.decodeList<InterceptEndpointGroupAssociation>(map['associations'], (value) => InterceptEndpointGroupAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      connectedDeploymentGroups: map['connectedDeploymentGroups'] == null ? null : pulumi.Output.create<List<InterceptEndpointGroupConnectedDeploymentGroup>>(pulumi.Input.decodeList<InterceptEndpointGroupConnectedDeploymentGroup>(map['connectedDeploymentGroups'], (value) => InterceptEndpointGroupConnectedDeploymentGroup.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      interceptDeploymentGroup: map['interceptDeploymentGroup'] == null ? null : pulumi.Output.create<String>(map['interceptDeploymentGroup'] as String),
      interceptEndpointGroupId: map['interceptEndpointGroupId'] == null ? null : pulumi.Output.create<String>(map['interceptEndpointGroupId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

