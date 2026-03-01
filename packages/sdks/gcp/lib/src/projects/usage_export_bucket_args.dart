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
  /// A prefix for the reports, for instance, the project name.
  final pulumi.Input<String>? prefix;
  /// The project to set the export bucket on. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [UsageExportBucketArgs].
  /// [bucketName] The bucket to store reports in.
  /// [prefix] A prefix for the reports, for instance, the project name.
  /// [project] The project to set the export bucket on. If it is not provided, the provider project is used.
  UsageExportBucketArgs({
    required pulumi.Output<String> bucketName,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? project,
  }) :
      bucketName = pulumi.Input.asInput<String>(bucketName),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'prefix': ?prefix,
      'project': ?project,
    };
  }

  factory UsageExportBucketArgs.fromMap(Map<String, dynamic> map) {
    return UsageExportBucketArgs(
      bucketName: pulumi.Output.create<String>(map['bucketName'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

