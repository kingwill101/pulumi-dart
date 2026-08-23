// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskEncryptionSetIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Disk Encryption Set.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The (Client) ID of the Service Principal.
  final pulumi.Input<String>? principalId;
  /// The ID of the Tenant the Service Principal is assigned in.
  final pulumi.Input<String>? tenantId;
  /// The type of Managed Service Identity that is configured on this Disk Encryption Set. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  final pulumi.Input<String> type;

  /// Creates a new [DiskEncryptionSetIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Disk Encryption Set.
  /// [principalId] The (Client) ID of the Service Principal.
  /// [tenantId] The ID of the Tenant the Service Principal is assigned in.
  /// [type] The type of Managed Service Identity that is configured on this Disk Encryption Set. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  const DiskEncryptionSetIdentity({
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

  factory DiskEncryptionSetIdentity.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSetIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
