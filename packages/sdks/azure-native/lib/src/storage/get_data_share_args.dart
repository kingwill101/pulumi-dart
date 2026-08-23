// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_data_share_args_doc}
/// Arguments for getDataShare.
/// {@endtemplate}
/// {@macro pulumi_storage_get_data_share_args_doc}
class GetDataShareArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the Storage DataShare.
  final pulumi.Input<String> dataShareName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataShareArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [dataShareName] The name of the Storage DataShare.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDataShareArgs({
    required this.accountName,
    required this.dataShareName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataShareName': dataShareName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataShareArgs.fromMap(Map<String, dynamic> map) {
    return GetDataShareArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataShareName: pulumi.Input.fromValue(map['dataShareName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
