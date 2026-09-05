// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Server.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned`
  ///
  /// &gt; **Note:** When `type` is set to `SystemAssigned`, the assigned `principalId` and `tenantId` can be retrieved after the Microsoft SQL Server has been created. More details are available below.
  final pulumi.Input<List<String>?>? identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this SQL Server.
  final pulumi.Input<String?>? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this SQL Server.
  final pulumi.Input<String?>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this SQL Server. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  final pulumi.Input<String> type;

  /// Creates a new [ServerIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Server.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this SQL Server.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this SQL Server.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this SQL Server. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  const ServerIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory ServerIdentity.fromMap(Map<String, dynamic> map) {
    return ServerIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
