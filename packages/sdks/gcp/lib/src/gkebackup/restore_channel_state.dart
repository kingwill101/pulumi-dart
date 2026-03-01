// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RestoreChannel resources.
class RestoreChannelState {
  /// User specified descriptive string for this RestoreChannel.
  final pulumi.Input<String>? description;
  /// The project where Backups will be restored.
  /// The format is `projects/{project}`.
  /// {project} can be project number or project id.
  final pulumi.Input<String>? destinationProject;
  /// The project_id where Backups will be restored.
  /// Example Project ID: "my-project-id".
  final pulumi.Input<String>? destinationProjectId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a restore channel from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform RestoreChannel updates
  /// in order to avoid race conditions: An etag is returned in the response to restoreChannels.get,
  /// and systems are expected to put that etag in the request to restoreChannels.patch or
  /// restoreChannels.delete to ensure that their change will be applied to the same version of the resource.
  final pulumi.Input<String>? etag;
  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region of the Restore Channel.
  final pulumi.Input<String>? location;
  /// The full name of the RestoreChannel Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Server generated, unique identifier of UUID format.
  final pulumi.Input<String>? uid;

  /// Creates a new [RestoreChannelState].
  /// [description] User specified descriptive string for this RestoreChannel.
  /// [destinationProject] The project where Backups will be restored.
  /// [destinationProjectId] The project_id where Backups will be restored.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Restore Channel.
  /// [name] The full name of the RestoreChannel Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] Server generated, unique identifier of UUID format.
  RestoreChannelState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationProject,
    pulumi.Output<String>? destinationProjectId,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? uid,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationProject = pulumi.Input.asOptionalInput<String>(destinationProject),
      destinationProjectId = pulumi.Input.asOptionalInput<String>(destinationProjectId),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      uid = pulumi.Input.asOptionalInput<String>(uid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationProject': ?destinationProject,
      'destinationProjectId': ?destinationProjectId,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
    };
  }

  factory RestoreChannelState.fromMap(Map<String, dynamic> map) {
    return RestoreChannelState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationProject: map['destinationProject'] == null ? null : pulumi.Output.create<String>(map['destinationProject'] as String),
      destinationProjectId: map['destinationProjectId'] == null ? null : pulumi.Output.create<String>(map['destinationProjectId'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
    );
  }
}

