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
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? principalName,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? tenantId,
  }) :
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      principalName = pulumi.Input.asOptionalInput<String>(principalName),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      principalName: map['principalName'] == null ? null : pulumi.Output.create<String>(map['principalName'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

