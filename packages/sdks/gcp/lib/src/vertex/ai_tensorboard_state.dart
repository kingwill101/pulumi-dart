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
    this.blobStoragePathPrefix,
    this.createTime,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.runCount,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStoragePathPrefix': ?blobStoragePathPrefix,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiTensorboardEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
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
      blobStoragePathPrefix: (() {
        final guardedValue = map['blobStoragePathPrefix'];
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
      displayName: (() {
        final guardedValue = map['displayName'];
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
      encryptionSpec: (() {
        final guardedValue = map['encryptionSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiTensorboardEncryptionSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
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
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runCount: (() {
        final guardedValue = map['runCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
