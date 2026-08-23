// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_purview_list_account_keys_args_doc}
/// Arguments for listAccountKeys.
/// {@endtemplate}
/// {@macro pulumi_purview_list_account_keys_args_doc}
class ListAccountKeysArgs {
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAccountKeysArgs].
  /// [accountName] The name of the account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListAccountKeysArgs({
    required this.accountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAccountKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListAccountKeysArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
