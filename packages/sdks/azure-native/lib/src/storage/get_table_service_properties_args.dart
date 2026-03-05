// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_table_service_properties_args_doc}
/// Arguments for getTableServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_get_table_service_properties_args_doc}
class GetTableServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Table Service within the specified storage account. Table Service Name must be 'default'
  final pulumi.Input<String> tableServiceName;

  /// Creates a new [GetTableServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [tableServiceName] The name of the Table Service within the specified storage account. Table Service Name must be 'default'
  GetTableServicePropertiesArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.tableServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'tableServiceName': tableServiceName,
    };
  }

  factory GetTableServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return GetTableServicePropertiesArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableServiceName: pulumi.Input.fromValue(map['tableServiceName'] as String),
    );
  }
}

