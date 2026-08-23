// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DevCenterIdentity {
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<String> type;

  /// Creates a new [DevCenterIdentity].
  /// [identityIds] Optional.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Required.
  const DevCenterIdentity({
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

  factory DevCenterIdentity.fromMap(Map<String, dynamic> map) {
    return DevCenterIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
