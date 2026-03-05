// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_blob_service_properties_args_doc}
/// Arguments for getBlobServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_get_blob_service_properties_args_doc}
class GetBlobServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  final pulumi.Input<String> blobServicesName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBlobServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [blobServicesName] The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetBlobServicePropertiesArgs({
    required this.accountName,
    required this.blobServicesName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'blobServicesName': blobServicesName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBlobServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobServicePropertiesArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      blobServicesName: pulumi.Input.fromValue(map['blobServicesName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

