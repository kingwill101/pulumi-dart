// ignore_for_file: unused_element, unnecessary_cast


class StaticWebAppIdentity {
  /// A list of Managed Identity IDs which should be assigned to this Static Web App resource.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// The Type of Managed Identity assigned to this Static Web App resource. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [StaticWebAppIdentity].
  /// [identityIds] A list of Managed Identity IDs which should be assigned to this Static Web App resource.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The Type of Managed Identity assigned to this Static Web App resource. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  StaticWebAppIdentity({
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

  factory StaticWebAppIdentity.fromMap(Map<String, dynamic> map) {
    return StaticWebAppIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

