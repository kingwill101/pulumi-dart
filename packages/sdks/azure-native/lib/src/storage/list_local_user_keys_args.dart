// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_list_local_user_keys_args_doc}
/// Arguments for listLocalUserKeys.
/// {@endtemplate}
/// {@macro pulumi_storage_list_local_user_keys_args_doc}
class ListLocalUserKeysArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.
  final pulumi.Input<String> username;

  /// Creates a new [ListLocalUserKeysArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [username] The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.
  ListLocalUserKeysArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'username': username,
    };
  }

  factory ListLocalUserKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListLocalUserKeysArgs(
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

