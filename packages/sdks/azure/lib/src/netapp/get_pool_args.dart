// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_pool_get_pool_args_doc}
/// Arguments for getPool.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_pool_get_pool_args_doc}
class GetPoolArgs {
  /// The name of the NetApp account where the NetApp pool exists.
  final pulumi.Input<String> accountName;
  /// The name of the NetApp Pool.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the NetApp Pool exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPoolArgs].
  /// [accountName] The name of the NetApp account where the NetApp pool exists.
  /// [name] The name of the NetApp Pool.
  /// [resourceGroupName] The Name of the Resource Group where the NetApp Pool exists.
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

