// ignore_for_file: unused_element, unnecessary_cast


class DicomServiceIdentity {
  /// A list of User Assigned Identity IDs which should be assigned to this Healthcare DICOM service.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// The type of identity used for the Healthcare DICOM service. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. If `UserAssigned` is set, an `identity_ids` must be set as well.
  final String type;

  /// Creates a new [DicomServiceIdentity].
  /// [identityIds] A list of User Assigned Identity IDs which should be assigned to this Healthcare DICOM service.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of identity used for the Healthcare DICOM service. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. If `UserAssigned` is set, an `identity_ids` must be set as well.
  DicomServiceIdentity({
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

  factory DicomServiceIdentity.fromMap(Map<String, dynamic> map) {
    return DicomServiceIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

