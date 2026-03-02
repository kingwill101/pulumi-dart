// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMonitorIdentity {
  final pulumi.Input<String> principalId;
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the resource.
  final pulumi.Input<String> type;

  /// Creates a new [GetMonitorIdentity].
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The type of identity used for the resource.
  GetMonitorIdentity({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetMonitorIdentity.fromMap(Map<String, dynamic> map) {
    return GetMonitorIdentity(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

