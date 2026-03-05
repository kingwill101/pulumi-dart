// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerActiveDirectoryAdministrator resources.
class FlexibleServerActiveDirectoryAdministratorState {
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created.
  final pulumi.Input<String>? objectId;
  /// The name of Azure Active Directory principal. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalName;
  /// The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalType;
  /// The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// The Azure Tenant ID. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [FlexibleServerActiveDirectoryAdministratorState].
  /// [objectId] The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created.
  /// [principalName] The name of Azure Active Directory principal. Changing this forces a new resource to be created.
  /// [principalType] The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created.
  /// [serverName] The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created.
  /// [tenantId] The Azure Tenant ID. Changing this forces a new resource to be created.
  FlexibleServerActiveDirectoryAdministratorState({
    this.objectId,
    this.principalName,
    this.principalType,
    this.resourceGroupName,
    this.serverName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'tenantId': ?tenantId,
    };
  }

  factory FlexibleServerActiveDirectoryAdministratorState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerActiveDirectoryAdministratorState(
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalName: (() { final guardedValue = map['principalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

