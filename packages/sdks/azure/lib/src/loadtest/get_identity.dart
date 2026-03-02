// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIdentity {
  /// The list of the User Assigned Identity IDs that is assigned to this Load Test Service.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  final pulumi.Input<String> principalId;
  /// The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  final pulumi.Input<String> tenantId;
  /// Type of Managed Service Identity that is assigned to this Load Test Encryption.
  final pulumi.Input<String> type;

  /// Creates a new [GetIdentity].
  /// [identityIds] The list of the User Assigned Identity IDs that is assigned to this Load Test Service.
  /// [principalId] The Principal ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  /// [tenantId] The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  /// [type] Type of Managed Service Identity that is assigned to this Load Test Encryption.
  GetIdentity({
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

  factory GetIdentity.fromMap(Map<String, dynamic> map) {
    return GetIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

