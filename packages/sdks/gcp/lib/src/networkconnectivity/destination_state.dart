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
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.endpoints,
    this.etag,
    this.ipPrefix,
    this.labels,
    this.location,
    this.multicloudDataTransferConfig,
    this.name,
    this.project,
    this.pulumiLabels,
    this.stateTimelines,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<DestinationEndpoint>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<
                  DestinationEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'etag': ?etag,
      'ipPrefix': ?ipPrefix,
      'labels': ?labels,
      'location': ?location,
      'multicloudDataTransferConfig': ?multicloudDataTransferConfig,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'stateTimelines':
          ?pulumi.Input.mapOptionalInputValue<
            List<DestinationStateTimeline>,
            List<Map<String, dynamic>>
          >(
            stateTimelines,
            (value) =>
                pulumi.Input.encodeList<
                  DestinationStateTimeline,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DestinationState.fromMap(Map<String, dynamic> map) {
    return DestinationState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DestinationEndpoint>(
            guardedValue,
            (value) => DestinationEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipPrefix: (() {
        final guardedValue = map['ipPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multicloudDataTransferConfig: (() {
        final guardedValue = map['multicloudDataTransferConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      stateTimelines: (() {
        final guardedValue = map['stateTimelines'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DestinationStateTimeline>(
            guardedValue,
            (value) => DestinationStateTimeline.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
