// ignore_for_file: unused_element, unnecessary_cast


class ArcMachineIdentity {
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity assigned to this Arc Machine. At this time the only possible value is `SystemAssigned`.
  final String type;

  /// Creates a new [ArcMachineIdentity].
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity assigned to this Arc Machine. At this time the only possible value is `SystemAssigned`.
  ArcMachineIdentity({
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

  factory ArcMachineIdentity.fromMap(Map<String, dynamic> map) {
    return ArcMachineIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

