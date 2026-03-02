// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_import_job_args_doc}
/// The set of arguments for ImportJob.
/// {@endtemplate}
/// {@macro pulumi_storagecache_import_job_args_doc}
class ImportJobArgs {
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> amlFilesystemName;
  /// How the import job will handle conflicts. For example, if the import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or was not previously imported. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/ for a thorough explanation of these resolution modes.
  final pulumi.Input<String>? conflictResolutionMode;
  /// Name for the import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String>? importJobName;
  /// An array of blob paths/prefixes that get imported into the cluster namespace. It has '/' as the default value.
  final pulumi.Input<List<String>>? importPrefixes;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Total non-conflict oriented errors the import job will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately and is the default.
  final pulumi.Input<int>? maximumErrors;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ImportJobArgs].
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [conflictResolutionMode] How the import job will handle conflicts. For example, if the import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or was not previously imported. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/ for a thorough explanation of these resolution modes.
  /// [importJobName] Name for the import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [importPrefixes] An array of blob paths/prefixes that get imported into the cluster namespace. It has '/' as the default value.
  /// [location] The geo-location where the resource lives
  /// [maximumErrors] Total non-conflict oriented errors the import job will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately and is the default.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ImportJobArgs({
    required this.amlFilesystemName,
    this.conflictResolutionMode,
    this.importJobName,
    this.importPrefixes,
    this.location,
    this.maximumErrors,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlFilesystemName': amlFilesystemName,
      'conflictResolutionMode': ?conflictResolutionMode,
      'importJobName': ?importJobName,
      'importPrefixes': ?importPrefixes,
      'location': ?location,
      'maximumErrors': ?maximumErrors,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ImportJobArgs.fromMap(Map<String, dynamic> map) {
    return ImportJobArgs(
      amlFilesystemName: (map['amlFilesystemName'] as String).input(),
      conflictResolutionMode: map['conflictResolutionMode'] == null ? null : (map['conflictResolutionMode']! as String).input(),
      importJobName: map['importJobName'] == null ? null : (map['importJobName']! as String).input(),
      importPrefixes: map['importPrefixes'] == null ? null : ((map['importPrefixes']! as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maximumErrors: map['maximumErrors'] == null ? null : (map['maximumErrors']! as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

