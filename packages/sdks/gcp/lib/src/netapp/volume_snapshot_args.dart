// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_volume_snapshot_volume_snapshot_args_doc}
/// The set of arguments for VolumeSnapshot.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_snapshot_volume_snapshot_args_doc}
class VolumeSnapshotArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description for the snapshot.
  final pulumi.Input<String>? description;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  final pulumi.Input<String> location;
  /// The name of the snapshot.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the volume to create the snapshot in.
  final pulumi.Input<String> volumeName;

  /// Creates a new [VolumeSnapshotArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description for the snapshot.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  /// [name] The name of the snapshot.
  /// [project] The ID of the project in which the resource belongs.
  /// [volumeName] The name of the volume to create the snapshot in.
  const VolumeSnapshotArgs({
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'volumeName': volumeName,
    };
  }

  factory VolumeSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
