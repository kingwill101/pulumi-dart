// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_instant_snapshot_instant_snapshot_args_doc}
/// The set of arguments for InstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_instant_snapshot_instant_snapshot_args_doc}
class InstantSnapshotArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Labels to apply to this InstantSnapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the disk used to create this instant snapshot.
  final pulumi.Input<String> sourceDisk;
  /// A reference to the zone where the disk is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstantSnapshotArgs].
  /// [description] An optional description of this resource.
  /// [labels] Labels to apply to this InstantSnapshot.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceDisk] A reference to the disk used to create this instant snapshot.
  /// [zone] A reference to the zone where the disk is located.
  InstantSnapshotArgs({
    this.description,
    this.labels,
    this.name,
    this.project,
    required this.sourceDisk,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'sourceDisk': sourceDisk,
      'zone': ?zone,
    };
  }

  factory InstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return InstantSnapshotArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDisk: pulumi.Input.fromValue(map['sourceDisk'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

