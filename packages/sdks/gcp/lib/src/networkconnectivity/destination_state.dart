// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_endpoint.dart';
import 'destination_state_timeline.dart';

/// Input properties used for looking up and filtering Destination resources.
class DestinationState {
  /// Time when the `Destination` resource was created.
  final pulumi.Input<String>? createTime;
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The list of DestinationEndpoint resources configured for the IP prefix.
  /// Structure is documented below.
  final pulumi.Input<List<DestinationEndpoint>>? endpoints;
  /// The etag is computed by the server, and might be sent with update and
  /// delete requests so that the client has an up-to-date value before
  /// proceeding.
  final pulumi.Input<String>? etag;
  /// The IP prefix that represents your workload on another CSP.
  final pulumi.Input<String>? ipPrefix;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the destination.
  final pulumi.Input<String>? location;
  /// The multicloud data transfer config of the destination.
  final pulumi.Input<String>? multicloudDataTransferConfig;
  /// The name of the destination.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The timeline of the expected `Destination` states or the current rest
  /// state. If a state change is expected, the value is `ADDING`,
  /// `DELETING` or `SUSPENDING`, depending on the action specified.
  /// Structure is documented below.
  final pulumi.Input<List<DestinationStateTimeline>>? stateTimelines;
  /// The Google-generated unique ID for the `Destination` resource.
  /// This value is unique across all `Destination` resources.
  /// If a resource is deleted and another with the same name is
  /// created, the new resource is assigned a different and unique ID.
  final pulumi.Input<String>? uid;
  /// Time when the `Destination` resource was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DestinationState].
  /// [createTime] Time when the `Destination` resource was created.
  /// [description] A description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endpoints] The list of DestinationEndpoint resources configured for the IP prefix.
  /// [etag] The etag is computed by the server, and might be sent with update and
  /// [ipPrefix] The IP prefix that represents your workload on another CSP.
  /// [labels] User-defined labels.
  /// [location] The location of the destination.
  /// [multicloudDataTransferConfig] The multicloud data transfer config of the destination.
  /// [name] The name of the destination.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [stateTimelines] The timeline of the expected `Destination` states or the current rest
  /// [uid] The Google-generated unique ID for the `Destination` resource.
  /// [updateTime] Time when the `Destination` resource was updated.
  DestinationState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<DestinationEndpoint>>? endpoints,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? ipPrefix,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? multicloudDataTransferConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<DestinationStateTimeline>>? stateTimelines,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endpoints = pulumi.Input.asOptionalInput<List<DestinationEndpoint>>(endpoints),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      ipPrefix = pulumi.Input.asOptionalInput<String>(ipPrefix),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      multicloudDataTransferConfig = pulumi.Input.asOptionalInput<String>(multicloudDataTransferConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      stateTimelines = pulumi.Input.asOptionalInput<List<DestinationStateTimeline>>(stateTimelines),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<DestinationEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<DestinationEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'ipPrefix': ?ipPrefix,
      'labels': ?labels,
      'location': ?location,
      'multicloudDataTransferConfig': ?multicloudDataTransferConfig,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'stateTimelines': ?pulumi.Input.mapOptionalInputValue<List<DestinationStateTimeline>, List<Map<String, dynamic>>>(stateTimelines, (value) => pulumi.Input.encodeList<DestinationStateTimeline, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DestinationState.fromMap(Map<String, dynamic> map) {
    return DestinationState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<DestinationEndpoint>>(pulumi.Input.decodeList<DestinationEndpoint>(map['endpoints'], (value) => DestinationEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      ipPrefix: map['ipPrefix'] == null ? null : pulumi.Output.create<String>(map['ipPrefix'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multicloudDataTransferConfig: map['multicloudDataTransferConfig'] == null ? null : pulumi.Output.create<String>(map['multicloudDataTransferConfig'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      stateTimelines: map['stateTimelines'] == null ? null : pulumi.Output.create<List<DestinationStateTimeline>>(pulumi.Input.decodeList<DestinationStateTimeline>(map['stateTimelines'], (value) => DestinationStateTimeline.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

