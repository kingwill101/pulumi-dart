// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_usage_export_bucket_usage_export_bucket_args_doc}
/// The set of arguments for UsageExportBucket.
/// {@endtemplate}
/// {@macro pulumi_projects_usage_export_bucket_usage_export_bucket_args_doc}
class UsageExportBucketArgs {
  /// The bucket to store reports in.
  ///
  /// - - -
  final pulumi.Input<String> bucketName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A prefix for the reports, for instance, the project name.
  final pulumi.Input<String?>? prefix;
  /// The project to set the export bucket on. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [UsageExportBucketArgs].
  /// [bucketName] The bucket to store reports in.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [prefix] A prefix for the reports, for instance, the project name.
  /// [project] The project to set the export bucket on. If it is not provided, the provider project is used.
  const UsageExportBucketArgs({
    required this.bucketName,
    this.deletionPolicy,
    this.prefix,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'deletionPolicy': ?deletionPolicy,
      'prefix': ?prefix,
      'project': ?project,
    };
  }

  factory UsageExportBucketArgs.fromMap(Map<String, dynamic> map) {
    return UsageExportBucketArgs(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
