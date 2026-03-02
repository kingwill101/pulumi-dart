// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountIdentity {
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String> principalId;
  final pulumi.Input<String> tenantId;
  final pulumi.Input<String> type;

  /// Creates a new [GetAccountIdentity].
  /// [identityIds] Optional.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] Required.
  GetAccountIdentity({
    this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetAccountIdentity.fromMap(Map<String, dynamic> map) {
    return GetAccountIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

