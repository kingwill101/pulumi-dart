// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_pool_get_pool_args_doc}
/// Arguments for getPool.
/// {@endtemplate}
/// {@macro pulumi_batch_get_pool_get_pool_args_doc}
class GetPoolArgs {
  /// The Batch Account name associated with the Batch pool.
  final pulumi.Input<String> accountName;
  /// The name of the Batch pool.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the Batch pool exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPoolArgs].
  /// [accountName] The Batch Account name associated with the Batch pool.
  /// [name] The name of the Batch pool.
  /// [resourceGroupName] The name of the resource group in which the Batch pool exists.
  const GetPoolArgs({
    required this.accountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPoolArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

