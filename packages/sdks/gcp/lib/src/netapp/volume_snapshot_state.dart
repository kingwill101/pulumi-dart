// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeSnapshot resources.
class VolumeSnapshotState {
  /// Description for the snapshot.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  final pulumi.Input<String>? location;
  /// The name of the snapshot.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Storage used to store blocks unique to this snapshot.
  final pulumi.Input<int>? usedBytes;
  /// The name of the volume to create the snapshot in.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeSnapshotState].
  /// [description] Description for the snapshot.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  /// [name] The name of the snapshot.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [usedBytes] Storage used to store blocks unique to this snapshot.
  /// [volumeName] The name of the volume to create the snapshot in.
  VolumeSnapshotState({
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<int>? usedBytes,
    pulumi.Output<String>? volumeName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      usedBytes = pulumi.Input.asOptionalInput<int>(usedBytes),
      volumeName = pulumi.Input.asOptionalInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'usedBytes': ?usedBytes,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeSnapshotState.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      usedBytes: map['usedBytes'] == null ? null : pulumi.Output.create<int>(map['usedBytes'] as int),
      volumeName: map['volumeName'] == null ? null : pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

