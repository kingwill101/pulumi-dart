// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_deployment_group_connected_endpoint_group.dart';
import 'mirroring_deployment_group_location.dart';

/// Input properties used for looking up and filtering MirroringDeploymentGroup resources.
class MirroringDeploymentGroupState {
  /// The list of endpoint groups that are connected to this resource.
  /// Structure is documented below.
  final pulumi.Input<List<MirroringDeploymentGroupConnectedEndpointGroup>>? connectedEndpointGroups;
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? createTime;
  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the deployment group, currently restricted to `global`.
  final pulumi.Input<String>? location;
  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  final pulumi.Input<List<MirroringDeploymentGroupLocation>>? locations;
  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  final pulumi.Input<String>? mirroringDeploymentGroupId;
  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
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

  /// Creates a new [MirroringDeploymentGroupState].
  /// [connectedEndpointGroups] The list of endpoint groups that are connected to this resource.
  /// [createTime] The timestamp when the resource was created.
  /// [description] User-provided description of the deployment group.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [locations] The list of locations where the deployment group is present.
  /// [mirroringDeploymentGroupId] The ID to use for the new deployment group, which will become the final
  /// [name] (Output)
  /// [network] The network that will be used for all child deployments, for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] (Output)
  /// [updateTime] The timestamp when the resource was most recently updated.
  MirroringDeploymentGroupState({
    this.connectedEndpointGroups,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.locations,
    this.mirroringDeploymentGroupId,
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
      'connectedEndpointGroups': ?pulumi.Input.mapOptionalInputValue<List<MirroringDeploymentGroupConnectedEndpointGroup>, List<Map<String, dynamic>>>(connectedEndpointGroups, (value) => pulumi.Input.encodeList<MirroringDeploymentGroupConnectedEndpointGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<MirroringDeploymentGroupLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<MirroringDeploymentGroupLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mirroringDeploymentGroupId': ?mirroringDeploymentGroupId,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory MirroringDeploymentGroupState.fromMap(Map<String, dynamic> map) {
    return MirroringDeploymentGroupState(
      connectedEndpointGroups: map['connectedEndpointGroups'] == null ? null : (pulumi.Input.decodeList<MirroringDeploymentGroupConnectedEndpointGroup>(map['connectedEndpointGroups']!, (value) => MirroringDeploymentGroupConnectedEndpointGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      locations: map['locations'] == null ? null : (pulumi.Input.decodeList<MirroringDeploymentGroupLocation>(map['locations']!, (value) => MirroringDeploymentGroupLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mirroringDeploymentGroupId: map['mirroringDeploymentGroupId'] == null ? null : (map['mirroringDeploymentGroupId']! as String).input(),
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

