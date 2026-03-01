// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_get_auto_import_job_args_doc}
/// Arguments for getAutoImportJob.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_auto_import_job_args_doc}
class GetAutoImportJobArgs {
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> amlFilesystemName;
  /// Name for the auto import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> autoImportJobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutoImportJobArgs].
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [autoImportJobName] Name for the auto import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAutoImportJobArgs({
    required pulumi.Output<String> amlFilesystemName,
    required pulumi.Output<String> autoImportJobName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      amlFilesystemName = pulumi.Input.asInput<String>(amlFilesystemName),
      autoImportJobName = pulumi.Input.asInput<String>(autoImportJobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlFilesystemName': amlFilesystemName,
      'autoImportJobName': autoImportJobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutoImportJobArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoImportJobArgs(
      amlFilesystemName: pulumi.Output.create<String>(map['amlFilesystemName'] as String),
      autoImportJobName: pulumi.Output.create<String>(map['autoImportJobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

