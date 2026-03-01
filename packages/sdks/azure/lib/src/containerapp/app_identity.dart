// ignore_for_file: unused_element, unnecessary_cast


class AppIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// The type of managed identity to assign. Possible values are `SystemAssigned`, `UserAssigned`, and `SystemAssigned, UserAssigned` (to enable both).
  final String type;

  /// Creates a new [AppIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of managed identity to assign. Possible values are `SystemAssigned`, `UserAssigned`, and `SystemAssigned, UserAssigned` (to enable both).
  AppIdentity({
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

  factory AppIdentity.fromMap(Map<String, dynamic> map) {
    return AppIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

