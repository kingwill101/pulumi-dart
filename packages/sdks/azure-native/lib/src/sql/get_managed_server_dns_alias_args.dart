// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_server_dns_alias_args_doc}
/// Arguments for getManagedServerDnsAlias.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_server_dns_alias_args_doc}
class GetManagedServerDnsAliasArgs {
  final pulumi.Input<String> dnsAliasName;

  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedServerDnsAliasArgs].
  /// [dnsAliasName] Required.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetManagedServerDnsAliasArgs({
    required this.dnsAliasName,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAliasName': dnsAliasName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedServerDnsAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedServerDnsAliasArgs(
      dnsAliasName: pulumi.Input.fromValue(map['dnsAliasName'] as String),
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
