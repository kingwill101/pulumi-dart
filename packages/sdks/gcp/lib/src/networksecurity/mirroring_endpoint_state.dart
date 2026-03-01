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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mirroringEndpointGroup,
    pulumi.Output<String>? mirroringEndpointId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mirroringEndpointGroup = pulumi.Input.asOptionalInput<String>(mirroringEndpointGroup),
      mirroringEndpointId = pulumi.Input.asOptionalInput<String>(mirroringEndpointId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mirroringEndpointGroup: map['mirroringEndpointGroup'] == null ? null : pulumi.Output.create<String>(map['mirroringEndpointGroup'] as String),
      mirroringEndpointId: map['mirroringEndpointId'] == null ? null : pulumi.Output.create<String>(map['mirroringEndpointId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

