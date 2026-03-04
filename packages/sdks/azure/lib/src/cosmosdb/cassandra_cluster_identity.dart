// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CassandraClusterIdentity {
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;

  /// Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is `SystemAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [CassandraClusterIdentity].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is `SystemAssigned`.
  CassandraClusterIdentity({
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

  factory CassandraClusterIdentity.fromMap(Map<String, dynamic> map) {
    return CassandraClusterIdentity(
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
