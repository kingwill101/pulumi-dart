// ignore_for_file: unused_element, unnecessary_cast


class GetFactoryIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Data Factory.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Data Factory.
  final String principalId;
  /// The Tenant ID associated with the VSTS account.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Data Factory.
  final String type;

  /// Creates a new [GetFactoryIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Data Factory.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Data Factory.
  /// [tenantId] The Tenant ID associated with the VSTS account.
  /// [type] The type of Managed Service Identity that is configured on this Data Factory.
  GetFactoryIdentity({
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

  factory GetFactoryIdentity.fromMap(Map<String, dynamic> map) {
    return GetFactoryIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

