// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Backup resources.
class BackupState {
  /// The amount of bytes needed to allocate a full copy of the snapshot content.
  final pulumi.Input<String>? capacityGb;
  /// The time when the snapshot was created in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  /// Amount of bytes that will be downloaded if the backup is restored.
  final pulumi.Input<String>? downloadBytes;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  final pulumi.Input<String>? location;
  /// The resource name of the backup. The name must be unique within the specified instance.
  /// The name must be 1-63 characters long, and comply with
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
  /// Name of the file share in the source Cloud Filestore instance that the backup is created from.
  final pulumi.Input<String>? sourceFileShare;
  /// The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup.
  final pulumi.Input<String>? sourceInstance;
  /// The service tier of the source Cloud Filestore instance that this backup is created from.
  final pulumi.Input<String>? sourceInstanceTier;
  /// The backup state.
  final pulumi.Input<String>? state;
  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  final pulumi.Input<String>? storageBytes;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  /// The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BackupState].
  /// [capacityGb] The amount of bytes needed to allocate a full copy of the snapshot content.
  /// [createTime] The time when the snapshot was created in RFC3339 text format.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [downloadBytes] Amount of bytes that will be downloaded if the backup is restored.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [kmsKeyName] KMS key name used for data encryption.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  /// [name] The resource name of the backup. The name must be unique within the specified instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceFileShare] Name of the file share in the source Cloud Filestore instance that the backup is created from.
  /// [sourceInstance] The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup.
  /// [sourceInstanceTier] The service tier of the source Cloud Filestore instance that this backup is created from.
  /// [state] The backup state.
  /// [storageBytes] The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  /// [tags] A map of resource manager tags.
  BackupState({
    pulumi.Output<String>? capacityGb,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? downloadBytes,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? sourceFileShare,
    pulumi.Output<String>? sourceInstance,
    pulumi.Output<String>? sourceInstanceTier,
    pulumi.Output<String>? state,
    pulumi.Output<String>? storageBytes,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      capacityGb = pulumi.Input.asOptionalInput<String>(capacityGb),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      downloadBytes = pulumi.Input.asOptionalInput<String>(downloadBytes),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      sourceFileShare = pulumi.Input.asOptionalInput<String>(sourceFileShare),
      sourceInstance = pulumi.Input.asOptionalInput<String>(sourceInstance),
      sourceInstanceTier = pulumi.Input.asOptionalInput<String>(sourceInstanceTier),
      state = pulumi.Input.asOptionalInput<String>(state),
      storageBytes = pulumi.Input.asOptionalInput<String>(storageBytes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': ?capacityGb,
      'createTime': ?createTime,
      'description': ?description,
      'downloadBytes': ?downloadBytes,
      'effectiveLabels': ?effectiveLabels,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'sourceFileShare': ?sourceFileShare,
      'sourceInstance': ?sourceInstance,
      'sourceInstanceTier': ?sourceInstanceTier,
      'state': ?state,
      'storageBytes': ?storageBytes,
      'tags': ?tags,
    };
  }

  factory BackupState.fromMap(Map<String, dynamic> map) {
    return BackupState(
      capacityGb: map['capacityGb'] == null ? null : pulumi.Output.create<String>(map['capacityGb'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      downloadBytes: map['downloadBytes'] == null ? null : pulumi.Output.create<String>(map['downloadBytes'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      sourceFileShare: map['sourceFileShare'] == null ? null : pulumi.Output.create<String>(map['sourceFileShare'] as String),
      sourceInstance: map['sourceInstance'] == null ? null : pulumi.Output.create<String>(map['sourceInstance'] as String),
      sourceInstanceTier: map['sourceInstanceTier'] == null ? null : pulumi.Output.create<String>(map['sourceInstanceTier'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      storageBytes: map['storageBytes'] == null ? null : pulumi.Output.create<String>(map['storageBytes'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

