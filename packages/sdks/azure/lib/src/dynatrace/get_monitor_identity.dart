// ignore_for_file: unused_element, unnecessary_cast


class GetMonitorIdentity {
  final String principalId;
  final String tenantId;
  /// The type of identity used for the resource.
  final String type;

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
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

