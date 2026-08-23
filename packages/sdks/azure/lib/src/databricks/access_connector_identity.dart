// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessConnectorIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to the Databricks Access Connector. Only one User Assigned Managed Identity ID is supported per Databricks Access Connector resource.
  ///
  /// &gt; **Note:** `identityIds` are required when `type` is set to `UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on the Databricks Access Connector. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [AccessConnectorIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to the Databricks Access Connector. Only one User Assigned Managed Identity ID is supported per Databricks Access Connector resource.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  /// [type] Specifies the type of Managed Service Identity that should be configured on the Databricks Access Connector. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  const AccessConnectorIdentity({
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

  factory AccessConnectorIdentity.fromMap(Map<String, dynamic> map) {
    return AccessConnectorIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
