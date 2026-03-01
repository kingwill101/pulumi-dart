// ignore_for_file: unused_element, unnecessary_cast


class GetProjectIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Dev Center Project.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Dev Center Project.
  final String type;

  /// Creates a new [GetProjectIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Dev Center Project.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project.
  /// [type] The type of Managed Service Identity that is configured on this Dev Center Project.
  GetProjectIdentity({
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

  factory GetProjectIdentity.fromMap(Map<String, dynamic> map) {
    return GetProjectIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

