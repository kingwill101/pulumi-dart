// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_nas_job_spec.dart';

/// {@template pulumi_aiplatform_v1_nas_job_args_doc}
/// The set of arguments for NasJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_nas_job_args_doc}
class NasJobArgs {
  /// The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  final pulumi.Input<bool>? enableRestrictedImageTraining;
  /// Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The specification of a NasJob.
  final pulumi.Input<GoogleCloudAiplatformV1NasJobSpec> nasJobSpec;
  final pulumi.Input<String>? project;

  /// Creates a new [NasJobArgs].
  /// [displayName] The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enableRestrictedImageTraining] Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  /// [encryptionSpec] Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  /// [labels] The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [nasJobSpec] The specification of a NasJob.
  /// [project] Optional.
  NasJobArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? enableRestrictedImageTraining,
    pulumi.Output<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<GoogleCloudAiplatformV1NasJobSpec> nasJobSpec,
    pulumi.Output<String>? project,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      enableRestrictedImageTraining = pulumi.Input.asOptionalInput<bool>(enableRestrictedImageTraining),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(encryptionSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      nasJobSpec = pulumi.Input.asInput<GoogleCloudAiplatformV1NasJobSpec>(nasJobSpec),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'enableRestrictedImageTraining': ?enableRestrictedImageTraining,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'nasJobSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1NasJobSpec, Map<String, dynamic>>(nasJobSpec, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory NasJobArgs.fromMap(Map<String, dynamic> map) {
    return NasJobArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enableRestrictedImageTraining: map['enableRestrictedImageTraining'] == null ? null : pulumi.Output.create<bool>(map['enableRestrictedImageTraining'] as bool),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1EncryptionSpec>(GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      nasJobSpec: pulumi.Output.create<GoogleCloudAiplatformV1NasJobSpec>(GoogleCloudAiplatformV1NasJobSpec.fromMap((map['nasJobSpec'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

