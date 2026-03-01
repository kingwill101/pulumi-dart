// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_storage_get_table_args_doc}
class GetTableArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetTableArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [tableName] A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.
  GetTableArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> tableName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'tableName': tableName,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

