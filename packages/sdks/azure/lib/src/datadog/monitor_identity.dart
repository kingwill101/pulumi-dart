// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorIdentity {
  /// The Principal ID for the Service Principal associated with the Identity of this Datadog Monitor.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Datadog Monitor.
  final pulumi.Input<String>? tenantId;
  /// Specifies the identity type of the Datadog Monitor. At this time the only allowed value is `SystemAssigned`.
  ///
  /// &gt; **Note:** The assigned `principal_id` and `tenant_id` can be retrieved after the identity `type` has been set to `SystemAssigned` and the Datadog Monitor has been created. More details are available below.
  final pulumi.Input<String> type;

  /// Creates a new [MonitorIdentity].
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Datadog Monitor.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Datadog Monitor.
  /// [type] Specifies the identity type of the Datadog Monitor. At this time the only allowed value is `SystemAssigned`.
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

