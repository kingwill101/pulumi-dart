// ignore_for_file: unused_element, unnecessary_cast


class ServiceIdentity {
  final String? principalId;
  final String? tenantId;
  /// The type of managed identity to assign. The only possible value is `SystemAssigned`.
  final String type;

  /// Creates a new [ServiceIdentity].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of managed identity to assign. The only possible value is `SystemAssigned`.
  ServiceIdentity({
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

  factory ServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ServiceIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

