// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrafanaIdentity {
  /// Specifies the list of User Assigned Managed Service Identity IDs which should be assigned to this Dashboard Grafana. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity. Possible values are `SystemAssigned`, `UserAssigned`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [GrafanaIdentity].
  /// [identityIds] Specifies the list of User Assigned Managed Service Identity IDs which should be assigned to this Dashboard Grafana. Changing this forces a new resource to be created.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity. Possible values are `SystemAssigned`, `UserAssigned`. Changing this forces a new resource to be created.
  const GrafanaIdentity({
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

  factory GrafanaIdentity.fromMap(Map<String, dynamic> map) {
    return GrafanaIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
