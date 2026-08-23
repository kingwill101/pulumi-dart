// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_list_storage_account_keys_args_doc}
/// Arguments for listStorageAccountKeys.
/// {@endtemplate}
/// {@macro pulumi_storage_list_storage_account_keys_args_doc}
class ListStorageAccountKeysArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Specifies type of the key to be listed. Possible value is kerb.
  final pulumi.Input<String>? expand;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStorageAccountKeysArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [expand] Specifies type of the key to be listed. Possible value is kerb.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  const ListStorageAccountKeysArgs({
    required this.accountName,
    this.expand,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStorageAccountKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountKeysArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
