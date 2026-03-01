// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_tensorboard_encryption_spec.dart';

/// Input properties used for looking up and filtering AiTensorboard resources.
class AiTensorboardState {
  /// Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  final pulumi.Input<String>? blobStoragePathPrefix;
  /// The timestamp of when the Tensorboard was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// Description of this Tensorboard.
  final pulumi.Input<String>? description;
  /// User provided name of this Tensorboard.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiTensorboardEncryptionSpec>? encryptionSpec;
  /// The labels with user-defined metadata to organize your Tensorboards.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Tensorboard.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the tensorboard. eg us-central1
  final pulumi.Input<String>? region;
  /// The number of Runs stored in this Tensorboard.
  final pulumi.Input<String>? runCount;
  /// The timestamp of when the Tensorboard was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiTensorboardState].
  /// [blobStoragePathPrefix] Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  /// [createTime] The timestamp of when the Tensorboard was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [description] Description of this Tensorboard.
  /// [displayName] User provided name of this Tensorboard.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize your Tensorboards.
  /// [name] Name of the Tensorboard.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the tensorboard. eg us-central1
  /// [runCount] The number of Runs stored in this Tensorboard.
  /// [updateTime] The timestamp of when the Tensorboard was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  AiTensorboardState({
    pulumi.Output<String>? blobStoragePathPrefix,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<AiTensorboardEncryptionSpec>? encryptionSpec,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? runCount,
    pulumi.Output<String>? updateTime,
  }) :
      blobStoragePathPrefix = pulumi.Input.asOptionalInput<String>(blobStoragePathPrefix),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      encryptionSpec = pulumi.Input.asOptionalInput<AiTensorboardEncryptionSpec>(encryptionSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      runCount = pulumi.Input.asOptionalInput<String>(runCount),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStoragePathPrefix': ?blobStoragePathPrefix,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiTensorboardEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'runCount': ?runCount,
      'updateTime': ?updateTime,
    };
  }

  factory AiTensorboardState.fromMap(Map<String, dynamic> map) {
    return AiTensorboardState(
      blobStoragePathPrefix: map['blobStoragePathPrefix'] == null ? null : pulumi.Output.create<String>(map['blobStoragePathPrefix'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<AiTensorboardEncryptionSpec>(AiTensorboardEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      runCount: map['runCount'] == null ? null : pulumi.Output.create<String>(map['runCount'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

