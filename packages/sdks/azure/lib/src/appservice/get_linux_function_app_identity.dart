// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Linux Function App.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Linux Function App.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Linux Function App.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Linux Function App.
  final String type;

  /// Creates a new [GetLinuxFunctionAppIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Linux Function App.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Linux Function App.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Linux Function App.
  /// [type] The type of Managed Service Identity that is configured on this Linux Function App.
  GetLinuxFunctionAppIdentity({
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

  factory GetLinuxFunctionAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

