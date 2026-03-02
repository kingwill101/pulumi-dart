// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MedtechServiceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID associated with this System Assigned Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID associated with this System Assigned Managed Service Identity.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [MedtechServiceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service.
  /// [principalId] The Principal ID associated with this System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this System Assigned Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  MedtechServiceIdentity({
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

  factory MedtechServiceIdentity.fromMap(Map<String, dynamic> map) {
    return MedtechServiceIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds'] as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

