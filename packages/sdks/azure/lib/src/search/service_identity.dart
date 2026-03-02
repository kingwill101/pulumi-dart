// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceIdentity {
  /// Specifies the list of User Assigned Managed Service Identity IDs which should be assigned to this Search Service.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Search Service. Possible values are `SystemAssigned`, `UserAssigned`, and `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceIdentity].
  /// [identityIds] Specifies the list of User Assigned Managed Service Identity IDs which should be assigned to this Search Service.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Search Service. Possible values are `SystemAssigned`, `UserAssigned`, and `SystemAssigned, UserAssigned`.
  ServiceIdentity({
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

  factory ServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ServiceIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

