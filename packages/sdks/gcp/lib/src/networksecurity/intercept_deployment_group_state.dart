// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_deployment_group_connected_endpoint_group.dart';
import 'intercept_deployment_group_location.dart';

/// Input properties used for looking up and filtering InterceptDeploymentGroup resources.
class InterceptDeploymentGroupState {
  /// The list of endpoint groups that are connected to this resource.
  /// Structure is documented below.
  final pulumi.Input<List<InterceptDeploymentGroupConnectedEndpointGroup>>? connectedEndpointGroups;
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? createTime;
  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  final pulumi.Input<String>? interceptDeploymentGroupId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the deployment group, currently restricted to `global`.
  final pulumi.Input<String>? location;
  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  final pulumi.Input<List<InterceptDeploymentGroupLocation>>? locations;
  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? name;
  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new deployment to the group)
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

  /// Creates a new [InterceptDeploymentGroupState].
  /// [connectedEndpointGroups] The list of endpoint groups that are connected to this resource.
  /// [createTime] The timestamp when the resource was created.
  /// [description] User-provided description of the deployment group.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [interceptDeploymentGroupId] The ID to use for the new deployment group, which will become the final
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [locations] The list of locations where the deployment group is present.
  /// [name] (Output)
  /// [network] The network that will be used for all child deployments, for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] (Output)
  /// [updateTime] The timestamp when the resource was most recently updated.
  InterceptDeploymentGroupState({
    pulumi.Output<List<InterceptDeploymentGroupConnectedEndpointGroup>>? connectedEndpointGroups,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? interceptDeploymentGroupId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<InterceptDeploymentGroupLocation>>? locations,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      connectedEndpointGroups = pulumi.Input.asOptionalInput<List<InterceptDeploymentGroupConnectedEndpointGroup>>(connectedEndpointGroups),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      interceptDeploymentGroupId = pulumi.Input.asOptionalInput<String>(interceptDeploymentGroupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      locations = pulumi.Input.asOptionalInput<List<InterceptDeploymentGroupLocation>>(locations),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEndpointGroups': ?pulumi.Input.mapOptionalInputValue<List<InterceptDeploymentGroupConnectedEndpointGroup>, List<Map<String, dynamic>>>(connectedEndpointGroups, (value) => pulumi.Input.encodeList<InterceptDeploymentGroupConnectedEndpointGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'interceptDeploymentGroupId': ?interceptDeploymentGroupId,
      'labels': ?labels,
      'location': ?location,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<InterceptDeploymentGroupLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<InterceptDeploymentGroupLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory InterceptDeploymentGroupState.fromMap(Map<String, dynamic> map) {
    return InterceptDeploymentGroupState(
      connectedEndpointGroups: map['connectedEndpointGroups'] == null ? null : pulumi.Output.create<List<InterceptDeploymentGroupConnectedEndpointGroup>>(pulumi.Input.decodeList<InterceptDeploymentGroupConnectedEndpointGroup>(map['connectedEndpointGroups'], (value) => InterceptDeploymentGroupConnectedEndpointGroup.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      interceptDeploymentGroupId: map['interceptDeploymentGroupId'] == null ? null : pulumi.Output.create<String>(map['interceptDeploymentGroupId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locations: map['locations'] == null ? null : pulumi.Output.create<List<InterceptDeploymentGroupLocation>>(pulumi.Input.decodeList<InterceptDeploymentGroupLocation>(map['locations'], (value) => InterceptDeploymentGroupLocation.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

