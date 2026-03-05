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
    required this.displayName,
    this.enableRestrictedImageTraining,
    this.encryptionSpec,
    this.labels,
    this.location,
    required this.nasJobSpec,
    this.project,
  });

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
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableRestrictedImageTraining: (() { final guardedValue = map['enableRestrictedImageTraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1EncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nasJobSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1NasJobSpec.fromMap((map['nasJobSpec']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

