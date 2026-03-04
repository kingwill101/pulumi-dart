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
    this.capacityGb,
    this.createTime,
    this.description,
    this.downloadBytes,
    this.effectiveLabels,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.sourceFileShare,
    this.sourceInstance,
    this.sourceInstanceTier,
    this.state,
    this.storageBytes,
    this.tags,
  });

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
      capacityGb: (() {
        final guardedValue = map['capacityGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      downloadBytes: (() {
        final guardedValue = map['downloadBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      kmsKeyName: (() {
        final guardedValue = map['kmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      sourceFileShare: (() {
        final guardedValue = map['sourceFileShare'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceInstance: (() {
        final guardedValue = map['sourceInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceInstanceTier: (() {
        final guardedValue = map['sourceInstanceTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageBytes: (() {
        final guardedValue = map['storageBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
