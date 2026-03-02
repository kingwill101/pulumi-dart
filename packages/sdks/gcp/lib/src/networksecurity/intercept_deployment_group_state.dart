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
    this.connectedEndpointGroups,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.interceptDeploymentGroupId,
    this.labels,
    this.location,
    this.locations,
    this.name,
    this.network,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.updateTime,
  });

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
      connectedEndpointGroups: map['connectedEndpointGroups'] == null ? null : (pulumi.Input.decodeList<InterceptDeploymentGroupConnectedEndpointGroup>(map['connectedEndpointGroups']!, (value) => InterceptDeploymentGroupConnectedEndpointGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      interceptDeploymentGroupId: map['interceptDeploymentGroupId'] == null ? null : (map['interceptDeploymentGroupId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      locations: map['locations'] == null ? null : (pulumi.Input.decodeList<InterceptDeploymentGroupLocation>(map['locations']!, (value) => InterceptDeploymentGroupLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

