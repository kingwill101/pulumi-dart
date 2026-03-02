// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_custom_job_spec.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';

/// {@template pulumi_aiplatform_v1beta1_custom_job_aiplatform_v1beta1_args_doc}
/// The set of arguments for CustomJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_custom_job_aiplatform_v1beta1_args_doc}
class CustomJobAiplatformV1beta1Args {
  /// The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Job spec.
  final pulumi.Input<GoogleCloudAiplatformV1beta1CustomJobSpec> jobSpec;
  /// The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [CustomJobAiplatformV1beta1Args].
  /// [displayName] The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  /// [jobSpec] Job spec.
  /// [labels] The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [project] Optional.
  CustomJobAiplatformV1beta1Args({
    required this.displayName,
    this.encryptionSpec,
    required this.jobSpec,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'jobSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1CustomJobSpec, Map<String, dynamic>>(jobSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory CustomJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return CustomJobAiplatformV1beta1Args(
      displayName: (map['displayName'] as String).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())).input(),
      jobSpec: (GoogleCloudAiplatformV1beta1CustomJobSpec.fromMap((map['jobSpec'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

