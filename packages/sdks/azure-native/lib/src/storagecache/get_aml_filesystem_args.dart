// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_get_aml_filesystem_args_doc}
/// Arguments for getAmlFilesystem.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_aml_filesystem_args_doc}
class GetAmlFilesystemArgs {
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> amlFilesystemName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAmlFilesystemArgs].
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAmlFilesystemArgs({
    required pulumi.Output<String> amlFilesystemName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      amlFilesystemName = pulumi.Input.asInput<String>(amlFilesystemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlFilesystemName': amlFilesystemName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAmlFilesystemArgs.fromMap(Map<String, dynamic> map) {
    return GetAmlFilesystemArgs(
      amlFilesystemName: pulumi.Output.create<String>(map['amlFilesystemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

