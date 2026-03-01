// ignore_for_file: unused_element, unnecessary_cast


class GetFrontdoorProfileIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Front Door Profile.
  final List<String> identityIds;
  final String principalId;
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Front Door Profile.
  final String type;

  /// Creates a new [GetFrontdoorProfileIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Front Door Profile.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The type of Managed Service Identity that is configured on this Front Door Profile.
  GetFrontdoorProfileIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetFrontdoorProfileIdentity.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorProfileIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

