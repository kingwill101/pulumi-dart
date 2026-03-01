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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> username,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'username': username,
    };
  }

  factory ListLocalUserKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListLocalUserKeysArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

