// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupChannel resources.
class BackupChannelState {
  /// User specified descriptive string for this BackupChannel.
  final pulumi.Input<String>? description;
  /// The project where Backups are allowed to be stored.
  /// The format is `projects/{project}`.
  /// {project} can be project number or project id.
  final pulumi.Input<String>? destinationProject;
  /// The project_id where Backups are allowed to be stored.
  /// Example Project ID: "my-project-id".
  final pulumi.Input<String>? destinationProjectId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a backup channel from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform BackupChannel updates
  /// in order to avoid race conditions: An etag is returned in the response to backupChannels.get,
  /// and systems are expected to put that etag in the request to backupChannels.patch or
  /// backupChannels.delete to ensure that their change will be applied to the same version of the resource.
  final pulumi.Input<String>? etag;
  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region of the Backup Channel.
  final pulumi.Input<String>? location;
  /// The full name of the BackupChannel Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Server generated, unique identifier of UUID format.
  final pulumi.Input<String>? uid;

  /// Creates a new [BackupChannelState].
  /// [description] User specified descriptive string for this BackupChannel.
  /// [destinationProject] The project where Backups are allowed to be stored.
  /// [destinationProjectId] The project_id where Backups are allowed to be stored.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Backup Channel.
  /// [name] The full name of the BackupChannel Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] Server generated, unique identifier of UUID format.
  BackupChannelState({
    this.description,
    this.destinationProject,
    this.destinationProjectId,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.uid,
  });

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

  factory BackupChannelState.fromMap(Map<String, dynamic> map) {
    return BackupChannelState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationProject: map['destinationProject'] == null ? null : (map['destinationProject'] as String).input(),
      destinationProjectId: map['destinationProjectId'] == null ? null : (map['destinationProjectId'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
    );
  }
}

