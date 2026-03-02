// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_auto_export_job_args_doc}
/// The set of arguments for AutoExportJob.
/// {@endtemplate}
/// {@macro pulumi_storagecache_auto_export_job_args_doc}
class AutoExportJobArgs {
  /// The administrative status of the auto export job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto export job. By default it is set to 'Enable'.
  final pulumi.Input<String>? adminStatus;
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> amlFilesystemName;
  /// Name for the auto export job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String>? autoExportJobName;
  /// An array of blob paths/prefixes that get auto exported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths for now is 1.
  final pulumi.Input<List<String>>? autoExportPrefixes;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The operational state of auto export. InProgress indicates the export is running.  Disabling indicates the user has requested to disable the export but the disabling is still in progress. Disabled indicates auto export has been disabled.  DisableFailed indicates the disabling has failed.  Failed means the export was unable to continue, due to a fatal error.
  final pulumi.Input<String>? state;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AutoExportJobArgs].
  /// [adminStatus] The administrative status of the auto export job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto export job. By default it is set to 'Enable'.
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [autoExportJobName] Name for the auto export job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [autoExportPrefixes] An array of blob paths/prefixes that get auto exported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths for now is 1.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [state] The operational state of auto export. InProgress indicates the export is running.  Disabling indicates the user has requested to disable the export but the disabling is still in progress. Disabled indicates auto export has been disabled.  DisableFailed indicates the disabling has failed.  Failed means the export was unable to continue, due to a fatal error.
  /// [tags] Resource tags.
  AutoExportJobArgs({
    this.adminStatus,
    required this.amlFilesystemName,
    this.autoExportJobName,
    this.autoExportPrefixes,
    this.location,
    required this.resourceGroupName,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStatus': ?adminStatus,
      'amlFilesystemName': amlFilesystemName,
      'autoExportJobName': ?autoExportJobName,
      'autoExportPrefixes': ?autoExportPrefixes,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory AutoExportJobArgs.fromMap(Map<String, dynamic> map) {
    return AutoExportJobArgs(
      adminStatus: map['adminStatus'] == null ? null : (map['adminStatus']! as String).input(),
      amlFilesystemName: (map['amlFilesystemName'] as String).input(),
      autoExportJobName: map['autoExportJobName'] == null ? null : (map['autoExportJobName']! as String).input(),
      autoExportPrefixes: map['autoExportPrefixes'] == null ? null : ((map['autoExportPrefixes']! as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

