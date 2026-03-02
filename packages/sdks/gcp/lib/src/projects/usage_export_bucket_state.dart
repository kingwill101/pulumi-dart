// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UsageExportBucket resources.
class UsageExportBucketState {
  /// The bucket to store reports in.
  ///
  /// - - -
  final pulumi.Input<String>? bucketName;
  /// A prefix for the reports, for instance, the project name.
  final pulumi.Input<String>? prefix;
  /// The project to set the export bucket on. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [UsageExportBucketState].
  /// [bucketName] The bucket to store reports in.
  /// [prefix] A prefix for the reports, for instance, the project name.
  /// [project] The project to set the export bucket on. If it is not provided, the provider project is used.
  UsageExportBucketState({
    this.bucketName,
    this.prefix,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'prefix': ?prefix,
      'project': ?project,
    };
  }

  factory UsageExportBucketState.fromMap(Map<String, dynamic> map) {
    return UsageExportBucketState(
      bucketName: map['bucketName'] == null ? null : (map['bucketName']! as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

