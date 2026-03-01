// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_resource_guard_proxy_args_doc}
/// Arguments for getResourceGuardProxy.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_resource_guard_proxy_args_doc}
class GetResourceGuardProxyArgs {
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> resourceGuardProxyName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetResourceGuardProxyArgs].
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceGuardProxyName] Required.
  /// [vaultName] The name of the recovery services vault.
  GetResourceGuardProxyArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceGuardProxyName,
    required pulumi.Output<String> vaultName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceGuardProxyName = pulumi.Input.asInput<String>(resourceGuardProxyName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceGuardProxyName': resourceGuardProxyName,
      'vaultName': vaultName,
    };
  }

  factory GetResourceGuardProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGuardProxyArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceGuardProxyName: pulumi.Output.create<String>(map['resourceGuardProxyName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

