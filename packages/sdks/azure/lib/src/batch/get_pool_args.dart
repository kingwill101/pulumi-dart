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
  GetPoolArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPoolArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

