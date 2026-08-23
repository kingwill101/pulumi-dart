// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDicomServiceIdentity {
  final pulumi.Input<List<String>> identityIds;
  final pulumi.Input<String> principalId;
  final pulumi.Input<String> tenantId;
  final pulumi.Input<String> type;

  /// Creates a new [GetDicomServiceIdentity].
  /// [identityIds] Required.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] Required.
  const GetDicomServiceIdentity({
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

  factory GetDicomServiceIdentity.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
