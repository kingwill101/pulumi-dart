// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionAppIdentity {
  /// A list of User Assigned Identity IDs assigned to the Function App.
  final pulumi.Input<List<String>> identityIds;
  /// The ID of the Managed Identity assigned to the Function App.
  final pulumi.Input<String> principalId;
  /// The ID of the Tenant where the Managed Identity assigned to the Function App is located.
  final pulumi.Input<String> tenantId;
  /// The identity type of the Managed Identity assigned to the Function App.
  final pulumi.Input<String> type;

  /// Creates a new [GetFunctionAppIdentity].
  /// [identityIds] A list of User Assigned Identity IDs assigned to the Function App.
  /// [principalId] The ID of the Managed Identity assigned to the Function App.
  /// [tenantId] The ID of the Tenant where the Managed Identity assigned to the Function App is located.
  /// [type] The identity type of the Managed Identity assigned to the Function App.
  GetFunctionAppIdentity({
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

  factory GetFunctionAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

