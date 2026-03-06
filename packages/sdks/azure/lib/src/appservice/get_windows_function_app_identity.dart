// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Windows Function App.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Windows Function App.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Windows Function App.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this Windows Function App.
  final pulumi.Input<String> type;

  /// Creates a new [GetWindowsFunctionAppIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Windows Function App.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Windows Function App.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Windows Function App.
  /// [type] The type of Managed Service Identity that is configured on this Windows Function App.
  const GetWindowsFunctionAppIdentity({
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

  factory GetWindowsFunctionAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

