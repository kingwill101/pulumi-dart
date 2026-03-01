// ignore_for_file: unused_element, unnecessary_cast


class GetProjectEnvironmentTypeIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Dev Center Project Environment Type.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project Environment Type.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project Environment Type.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Dev Center Project Environment Type.
  final String type;

  /// Creates a new [GetProjectEnvironmentTypeIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Dev Center Project Environment Type.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project Environment Type.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center Project Environment Type.
  /// [type] The type of Managed Service Identity that is configured on this Dev Center Project Environment Type.
  GetProjectEnvironmentTypeIdentity({
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

  factory GetProjectEnvironmentTypeIdentity.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

