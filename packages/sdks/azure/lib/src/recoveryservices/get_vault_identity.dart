// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVaultIdentity {
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String> principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String> tenantId;
  /// The identity type of this Managed Service Identity.
  final pulumi.Input<String> type;

  /// Creates a new [GetVaultIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] The identity type of this Managed Service Identity.
  GetVaultIdentity({
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

  factory GetVaultIdentity.fromMap(Map<String, dynamic> map) {
    return GetVaultIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

