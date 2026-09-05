// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorIdentity {
  /// The Principal ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  final pulumi.Input<String?>? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  final pulumi.Input<String?>? tenantId;
  /// Specifies the identity type of the Azure Native New Relic Monitor. The only possible value is `SystemAssigned`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String> type;

  /// Creates a new [MonitorIdentity].
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  /// [type] Specifies the identity type of the Azure Native New Relic Monitor. The only possible value is `SystemAssigned`. Changing this forces a new Azure Native New Relic Monitor to be created.
  const MonitorIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory MonitorIdentity.fromMap(Map<String, dynamic> map) {
    return MonitorIdentity(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
