// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_encryption_spec.dart';
import 'ai_custom_job_job_spec.dart';

/// {@template pulumi_vertex_ai_custom_job_ai_custom_job_args_doc}
/// The set of arguments for AiCustomJob.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_custom_job_ai_custom_job_args_doc}
class AiCustomJobArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the CustomJob.
  /// The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key options for a CustomJob.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobEncryptionSpec?>? encryptionSpec;
  /// Job spec.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpec> jobSpec;
  /// The labels with user-defined metadata to organize CustomJobs.
  /// Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Google Cloud region to run the custom job in.
  final pulumi.Input<String> region;

  /// Creates a new [AiCustomJobArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the CustomJob.
  /// [encryptionSpec] Customer-managed encryption key options for a CustomJob.
  /// [jobSpec] Job spec.
  /// [labels] The labels with user-defined metadata to organize CustomJobs.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Google Cloud region to run the custom job in.
  const AiCustomJobArgs({
    this.deletionPolicy,
    required this.displayName,
    this.encryptionSpec,
    required this.jobSpec,
    this.labels,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiCustomJobEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'jobSpec': pulumi.Input.mapInputValue<AiCustomJobJobSpec, Map<String, dynamic>>(jobSpec, (value) => value.toMap()),
      'labels': ?labels,
      'project': ?project,
      'region': region,
    };
  }

  factory AiCustomJobArgs.fromMap(Map<String, dynamic> map) {
    return AiCustomJobArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobSpec: pulumi.Input.fromValue(AiCustomJobJobSpec.fromMap((map['jobSpec']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
