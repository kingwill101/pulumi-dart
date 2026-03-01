// ignore_for_file: unused_element, unnecessary_cast


class ExpressRoutePortIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is `UserAssigned`.
  final String type;

  /// Creates a new [ExpressRoutePortIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is `UserAssigned`.
  ExpressRoutePortIdentity({
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

  factory ExpressRoutePortIdentity.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

