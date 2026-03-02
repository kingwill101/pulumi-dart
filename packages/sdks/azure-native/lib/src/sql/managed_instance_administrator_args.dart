// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_instance_administrator_args_doc}
/// The set of arguments for ManagedInstanceAdministrator.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_instance_administrator_args_doc}
class ManagedInstanceAdministratorArgs {
  final pulumi.Input<String>? administratorName;
  /// Type of the managed instance administrator.
  final pulumi.Input<String> administratorType;
  /// Login name of the managed instance administrator.
  final pulumi.Input<String> login;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// SID (object ID) of the managed instance administrator.
  final pulumi.Input<String> sid;
  /// Tenant ID of the managed instance administrator.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ManagedInstanceAdministratorArgs].
  /// [administratorName] Optional.
  /// [administratorType] Type of the managed instance administrator.
  /// [login] Login name of the managed instance administrator.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sid] SID (object ID) of the managed instance administrator.
  /// [tenantId] Tenant ID of the managed instance administrator.
  ManagedInstanceAdministratorArgs({
    this.administratorName,
    required this.administratorType,
    required this.login,
    required this.managedInstanceName,
    required this.resourceGroupName,
    required this.sid,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorName': ?administratorName,
      'administratorType': administratorType,
      'login': login,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
      'sid': sid,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedInstanceAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceAdministratorArgs(
      administratorName: map['administratorName'] == null ? null : (map['administratorName']! as String).input(),
      administratorType: (map['administratorType'] as String).input(),
      login: (map['login'] as String).input(),
      managedInstanceName: (map['managedInstanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sid: (map['sid'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

