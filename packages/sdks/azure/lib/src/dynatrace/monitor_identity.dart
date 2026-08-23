// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorIdentity {
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  /// The type of identity used for the resource. Only possible value is `SystemAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [MonitorIdentity].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of identity used for the resource. Only possible value is `SystemAssigned`.
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
