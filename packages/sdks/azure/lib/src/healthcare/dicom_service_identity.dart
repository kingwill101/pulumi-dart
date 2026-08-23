// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DicomServiceIdentity {
  /// A list of User Assigned Identity IDs which should be assigned to this Healthcare DICOM service.
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  /// The type of identity used for the Healthcare DICOM service. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. If `UserAssigned` is set, an `identityIds` must be set as well.
  final pulumi.Input<String> type;

  /// Creates a new [DicomServiceIdentity].
  /// [identityIds] A list of User Assigned Identity IDs which should be assigned to this Healthcare DICOM service.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of identity used for the Healthcare DICOM service. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. If `UserAssigned` is set, an `identityIds` must be set as well.
  const DicomServiceIdentity({
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
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
