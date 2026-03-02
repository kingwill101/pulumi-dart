// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorProfileIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  /// The type of managed identity to assign. Possible values are `SystemAssigned`, `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [FrontdoorProfileIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of managed identity to assign. Possible values are `SystemAssigned`, `UserAssigned` or `SystemAssigned, UserAssigned`.
  FrontdoorProfileIdentity({
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

  factory FrontdoorProfileIdentity.fromMap(Map<String, dynamic> map) {
    return FrontdoorProfileIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

