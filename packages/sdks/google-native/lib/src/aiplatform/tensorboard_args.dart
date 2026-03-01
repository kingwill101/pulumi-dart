// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';

/// {@template pulumi_aiplatform_v1_tensorboard_args_doc}
/// The set of arguments for Tensorboard.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_tensorboard_args_doc}
class TensorboardArgs {
  /// Description of this Tensorboard.
  final pulumi.Input<String>? description;
  /// User provided name of this Tensorboard.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  final pulumi.Input<bool>? isDefault;
  /// The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [TensorboardArgs].
  /// [description] Description of this Tensorboard.
  /// [displayName] User provided name of this Tensorboard.
  /// [encryptionSpec] Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [isDefault] Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  /// [labels] The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [project] Optional.
  TensorboardArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? etag,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(encryptionSpec),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'isDefault': ?isDefault,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory TensorboardArgs.fromMap(Map<String, dynamic> map) {
    return TensorboardArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1EncryptionSpec>(GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

