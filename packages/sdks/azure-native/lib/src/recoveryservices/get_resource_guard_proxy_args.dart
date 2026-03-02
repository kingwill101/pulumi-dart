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
    required this.resourceGroupName,
    required this.resourceGuardProxyName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceGuardProxyName': resourceGuardProxyName,
      'vaultName': vaultName,
    };
  }

  factory GetResourceGuardProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGuardProxyArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceGuardProxyName: (map['resourceGuardProxyName'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

