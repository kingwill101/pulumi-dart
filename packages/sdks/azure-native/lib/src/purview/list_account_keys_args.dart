// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_purview_list_account_keys_args_doc}
/// Arguments for listAccountKeys.
/// {@endtemplate}
/// {@macro pulumi_purview_list_account_keys_args_doc}
class ListAccountKeysArgs {
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAccountKeysArgs].
  /// [accountName] The name of the account.
  /// [resourceGroupName] The resource group name.
  ListAccountKeysArgs({
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
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

