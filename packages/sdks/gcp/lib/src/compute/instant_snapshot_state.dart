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
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<int>? diskSizeGb,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? sourceDisk,
    pulumi.Output<String>? sourceDiskId,
    pulumi.Output<String>? zone,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskSizeGb = pulumi.Input.asOptionalInput<int>(diskSizeGb),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceDiskId = pulumi.Input.asOptionalInput<String>(sourceDiskId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskSizeGb: map['diskSizeGb'] == null ? null : pulumi.Output.create<int>(map['diskSizeGb'] as int),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      sourceDisk: map['sourceDisk'] == null ? null : pulumi.Output.create<String>(map['sourceDisk'] as String),
      sourceDiskId: map['sourceDiskId'] == null ? null : pulumi.Output.create<String>(map['sourceDiskId'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

