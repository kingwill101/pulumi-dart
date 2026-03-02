// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MirroringEndpoint resources.
class MirroringEndpointState {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? createTime;
  /// User-provided description of the endpoint.
  /// Used as additional context for the endpoint.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String>? location;
  /// The endpoint group that this endpoint belongs to.
  /// Format is:
  /// `projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}`
  final pulumi.Input<String>? mirroringEndpointGroup;
  /// The ID to use for the new endpoint, which will become the final
  /// component of the endpoint's resource name.
  final pulumi.Input<String>? mirroringEndpointId;
  /// The resource name of this endpoint, for example:
  /// `projects/123456789/locations/us-central1-a/mirroringEndpoints/my-endpoint`.
  /// See https://google.aip.dev/122 for more details.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. linking a new association to the parent group).
  /// See https://google.aip.dev/128.
  final pulumi.Input<bool>? reconciling;
  /// The current state of the endpoint.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// OUT_OF_SYNC
  final pulumi.Input<String>? state;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MirroringEndpointState].
  /// [createTime] The timestamp when the resource was created.
  /// [description] User-provided description of the endpoint.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  /// [mirroringEndpointGroup] The endpoint group that this endpoint belongs to.
  /// [mirroringEndpointId] The ID to use for the new endpoint, which will become the final
  /// [name] The resource name of this endpoint, for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] The current state of the endpoint.
  /// [updateTime] The timestamp when the resource was most recently updated.
  MirroringEndpointState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.mirroringEndpointGroup,
    this.mirroringEndpointId,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'mirroringEndpointGroup': ?mirroringEndpointGroup,
      'mirroringEndpointId': ?mirroringEndpointId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory MirroringEndpointState.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mirroringEndpointGroup: map['mirroringEndpointGroup'] == null ? null : (map['mirroringEndpointGroup']! as String).input(),
      mirroringEndpointId: map['mirroringEndpointId'] == null ? null : (map['mirroringEndpointId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

