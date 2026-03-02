// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstantSnapshot resources.
class InstantSnapshotState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Size of the snapshot, specified in GB.
  final pulumi.Input<int>? diskSizeGb;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// A reference to the disk used to create this instant snapshot.
  final pulumi.Input<String>? sourceDisk;
  /// The ID value of the disk used to create this InstantSnapshot.
  final pulumi.Input<String>? sourceDiskId;
  /// A reference to the zone where the disk is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstantSnapshotState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [diskSizeGb] Size of the snapshot, specified in GB.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource. Used
  /// [labels] Labels to apply to this InstantSnapshot.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [selfLink] The URI of the created resource.
  /// [sourceDisk] A reference to the disk used to create this instant snapshot.
  /// [sourceDiskId] The ID value of the disk used to create this InstantSnapshot.
  /// [zone] A reference to the zone where the disk is located.
  InstantSnapshotState({
    this.creationTimestamp,
    this.description,
    this.diskSizeGb,
    this.effectiveLabels,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.selfLink,
    this.sourceDisk,
    this.sourceDiskId,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'effectiveLabels': ?effectiveLabels,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'sourceDisk': ?sourceDisk,
      'sourceDiskId': ?sourceDiskId,
      'zone': ?zone,
    };
  }

  factory InstantSnapshotState.fromMap(Map<String, dynamic> map) {
    return InstantSnapshotState(
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb']! as int).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labelFingerprint: map['labelFingerprint'] == null ? null : (map['labelFingerprint']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      sourceDisk: map['sourceDisk'] == null ? null : (map['sourceDisk']! as String).input(),
      sourceDiskId: map['sourceDiskId'] == null ? null : (map['sourceDiskId']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

