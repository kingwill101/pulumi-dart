// ignore_for_file: unused_element, unnecessary_cast


class GetIdentity {
  /// The principal ID of resource identity.
  final String principalId;
  /// The tenant ID of resource.
  final String tenantId;
  /// The identity type.
  final String type;

  /// Creates a new [GetIdentity].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  GetIdentity({
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

  factory GetIdentity.fromMap(Map<String, dynamic> map) {
    return GetIdentity(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

