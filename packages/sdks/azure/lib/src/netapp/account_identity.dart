// ignore_for_file: unused_element, unnecessary_cast


class AccountIdentity {
  /// The identity id of the user assigned identity to use when type is `UserAssigned`
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// The identity type, which can be `SystemAssigned` or `UserAssigned`. Only one type at a time is supported by Azure NetApp Files.
  final String type;

  /// Creates a new [AccountIdentity].
  /// [identityIds] The identity id of the user assigned identity to use when type is `UserAssigned`
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The identity type, which can be `SystemAssigned` or `UserAssigned`. Only one type at a time is supported by Azure NetApp Files.
  AccountIdentity({
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

  factory AccountIdentity.fromMap(Map<String, dynamic> map) {
    return AccountIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

