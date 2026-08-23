// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_batch_get_account_get_account_args_doc}
class GetAccountArgs {
  /// The name of the Batch account.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where this Batch account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountArgs].
  /// [name] The name of the Batch account.
  /// [resourceGroupName] The Name of the Resource Group where this Batch account exists.
  const GetAccountArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
