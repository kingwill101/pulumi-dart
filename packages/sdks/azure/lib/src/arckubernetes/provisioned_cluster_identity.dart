// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisionedClusterIdentity {
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String>? tenantId;
  /// The type of the Managed Identity. The only possible value is `SystemAssigned`. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String> type;

  /// Creates a new [ProvisionedClusterIdentity].
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] The type of the Managed Identity. The only possible value is `SystemAssigned`. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  ProvisionedClusterIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory ProvisionedClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterIdentity(
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

