// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskEncryptionSetIdentity {
  /// A list of User Assigned Managed Identity IDs assigned to this Disk Encryption Set.
  final pulumi.Input<List<String>> identityIds;
  /// The (Client) ID of the Service Principal.
  final pulumi.Input<String> principalId;
  /// The ID of the Tenant the Service Principal is assigned in.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this Disk Encryption Set.
  final pulumi.Input<String> type;

  /// Creates a new [GetDiskEncryptionSetIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs assigned to this Disk Encryption Set.
  /// [principalId] The (Client) ID of the Service Principal.
  /// [tenantId] The ID of the Tenant the Service Principal is assigned in.
  /// [type] The type of Managed Service Identity that is configured on this Disk Encryption Set.
  GetDiskEncryptionSetIdentity({
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

  factory GetDiskEncryptionSetIdentity.fromMap(Map<String, dynamic> map) {
    return GetDiskEncryptionSetIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

