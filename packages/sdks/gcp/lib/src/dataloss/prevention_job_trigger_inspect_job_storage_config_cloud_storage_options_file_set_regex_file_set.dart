// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet {
  /// The name of a Cloud Storage bucket.
  final pulumi.Input<String> bucketName;
  /// A list of regular expressions matching file paths to exclude. All files in the bucket that match at
  /// least one of these regular expressions will be excluded from the scan.
  final pulumi.Input<List<String>>? excludeRegexes;
  /// A list of regular expressions matching file paths to include. All files in the bucket
  /// that match at least one of these regular expressions will be included in the set of files,
  /// except for those that also match an item in excludeRegex. Leaving this field empty will
  /// match all files by default (this is equivalent to including .* in the list)
  final pulumi.Input<List<String>>? includeRegexes;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet].
  /// [bucketName] The name of a Cloud Storage bucket.
  /// [excludeRegexes] A list of regular expressions matching file paths to exclude. All files in the bucket that match at
  /// [includeRegexes] A list of regular expressions matching file paths to include. All files in the bucket
  PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet({
    required this.bucketName,
    this.excludeRegexes,
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'excludeRegexes': ?excludeRegexes,
      'includeRegexes': ?includeRegexes,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet(
      bucketName: (map['bucketName'] as String).input(),
      excludeRegexes: map['excludeRegexes'] == null ? null : ((map['excludeRegexes']! as List).cast<String>()).input(),
      includeRegexes: map['includeRegexes'] == null ? null : ((map['includeRegexes']! as List).cast<String>()).input(),
    );
  }
}

