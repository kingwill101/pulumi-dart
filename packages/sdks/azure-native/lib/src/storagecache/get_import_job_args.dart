// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_get_import_job_args_doc}
/// Arguments for getImportJob.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_import_job_args_doc}
class GetImportJobArgs {
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> amlFilesystemName;
  /// Name for the import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> importJobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImportJobArgs].
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [importJobName] Name for the import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetImportJobArgs({
    required pulumi.Output<String> amlFilesystemName,
    required pulumi.Output<String> importJobName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      amlFilesystemName = pulumi.Input.asInput<String>(amlFilesystemName),
      importJobName = pulumi.Input.asInput<String>(importJobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlFilesystemName': amlFilesystemName,
      'importJobName': importJobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImportJobArgs.fromMap(Map<String, dynamic> map) {
    return GetImportJobArgs(
      amlFilesystemName: pulumi.Output.create<String>(map['amlFilesystemName'] as String),
      importJobName: pulumi.Output.create<String>(map['importJobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

