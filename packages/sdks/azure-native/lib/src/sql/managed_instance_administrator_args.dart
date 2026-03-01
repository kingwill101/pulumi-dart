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
    pulumi.Output<String>? administratorName,
    required pulumi.Output<String> administratorType,
    required pulumi.Output<String> login,
    required pulumi.Output<String> managedInstanceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sid,
    pulumi.Output<String>? tenantId,
  }) :
      administratorName = pulumi.Input.asOptionalInput<String>(administratorName),
      administratorType = pulumi.Input.asInput<String>(administratorType),
      login = pulumi.Input.asInput<String>(login),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sid = pulumi.Input.asInput<String>(sid),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      administratorName: map['administratorName'] == null ? null : pulumi.Output.create<String>(map['administratorName'] as String),
      administratorType: pulumi.Output.create<String>(map['administratorType'] as String),
      login: pulumi.Output.create<String>(map['login'] as String),
      managedInstanceName: pulumi.Output.create<String>(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sid: pulumi.Output.create<String>(map['sid'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

