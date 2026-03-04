// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_server_dns_alias_args_doc}
/// The set of arguments for ManagedServerDnsAlias.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_server_dns_alias_args_doc}
class ManagedServerDnsAliasArgs {
  /// Whether or not DNS record should be created for this alias.
  final pulumi.Input<bool>? createDnsRecord;
  final pulumi.Input<String>? dnsAliasName;

  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedServerDnsAliasArgs].
  /// [createDnsRecord] Whether or not DNS record should be created for this alias.
  /// [dnsAliasName] Optional.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  ManagedServerDnsAliasArgs({
    this.createDnsRecord,
    this.dnsAliasName,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDnsRecord': ?createDnsRecord,
      'dnsAliasName': ?dnsAliasName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedServerDnsAliasArgs.fromMap(Map<String, dynamic> map) {
    return ManagedServerDnsAliasArgs(
      createDnsRecord: (() {
        final guardedValue = map['createDnsRecord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dnsAliasName: (() {
        final guardedValue = map['dnsAliasName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
