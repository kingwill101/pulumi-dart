// ignore_for_file: unused_element, unnecessary_cast


class MonitorIdentity {
  final String? principalId;
  final String? tenantId;
  /// The type of identity used for the resource. Only possible value is `SystemAssigned`.
  final String type;

  /// Creates a new [MonitorIdentity].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of identity used for the resource. Only possible value is `SystemAssigned`.
  MonitorIdentity({
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
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

