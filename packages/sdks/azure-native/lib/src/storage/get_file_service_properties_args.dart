// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_file_service_properties_args_doc}
/// Arguments for getFileServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_get_file_service_properties_args_doc}
class GetFileServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the file Service within the specified storage account. File Service Name must be "default"
  final pulumi.Input<String> fileServicesName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFileServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [fileServicesName] The name of the file Service within the specified storage account. File Service Name must be "default"
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetFileServicePropertiesArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> fileServicesName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      fileServicesName = pulumi.Input.asInput<String>(fileServicesName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'fileServicesName': fileServicesName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFileServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return GetFileServicePropertiesArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      fileServicesName: pulumi.Output.create<String>(map['fileServicesName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

