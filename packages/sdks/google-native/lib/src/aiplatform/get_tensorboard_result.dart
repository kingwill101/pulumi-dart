// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';

/// Result data returned by getTensorboard.
class GetTensorboardResult {
  /// Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  final String? blobStoragePathPrefix;
  /// Timestamp when this Tensorboard was created.
  final String? createTime;
  /// Description of this Tensorboard.
  final String? description;
  /// User provided name of this Tensorboard.
  final String? displayName;
  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse? encryptionSpec;
  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  final bool? isDefault;
  /// The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String>? labels;
  /// Name of the Tensorboard. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  final String? name;
  /// The number of Runs stored in this Tensorboard.
  final int? runCount;
  /// Timestamp when this Tensorboard was last updated.
  final String? updateTime;

  /// Creates a new [GetTensorboardResult].
  /// [blobStoragePathPrefix] Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  /// [createTime] Timestamp when this Tensorboard was created.
  /// [description] Description of this Tensorboard.
  /// [displayName] User provided name of this Tensorboard.
  /// [encryptionSpec] Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [isDefault] Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  /// [labels] The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] Name of the Tensorboard. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  /// [runCount] The number of Runs stored in this Tensorboard.
  /// [updateTime] Timestamp when this Tensorboard was last updated.
  const GetTensorboardResult({
    this.blobStoragePathPrefix,
    this.createTime,
    this.description,
    this.displayName,
    this.encryptionSpec,
    this.etag,
    this.isDefault,
    this.labels,
    this.name,
    this.runCount,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStoragePathPrefix': ?blobStoragePathPrefix,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'etag': ?etag,
      'isDefault': ?isDefault,
      'labels': ?labels,
      'name': ?name,
      'runCount': ?runCount,
      'updateTime': ?updateTime,
    };
  }

  factory GetTensorboardResult.fromMap(Map<String, dynamic> map) {
    return GetTensorboardResult(
      blobStoragePathPrefix: (() { final guardedValue = map['blobStoragePathPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runCount: (() { final guardedValue = map['runCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
