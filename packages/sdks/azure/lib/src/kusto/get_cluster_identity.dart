// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID associated with this System Assigned Managed Service Identity.
  final pulumi.Input<String> principalId;
  /// The Tenant ID associated with this System Assigned Managed Service Identity.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this Kusto Cluster.
  final pulumi.Input<String> type;

  /// Creates a new [GetClusterIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.
  /// [principalId] The Principal ID associated with this System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this System Assigned Managed Service Identity.
  /// [type] The type of Managed Service Identity that is configured on this Kusto Cluster.
  GetClusterIdentity({
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

  factory GetClusterIdentity.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

