// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
class WsfcDomainCredentialsResponse {
  /// Cluster bootstrap account password.
  final pulumi.Input<String>? clusterBootstrapAccountPassword;
  /// Cluster operator account password.
  final pulumi.Input<String>? clusterOperatorAccountPassword;
  /// SQL service account password.
  final pulumi.Input<String>? sqlServiceAccountPassword;

  /// Creates a new [WsfcDomainCredentialsResponse].
  /// [clusterBootstrapAccountPassword] Cluster bootstrap account password.
  /// [clusterOperatorAccountPassword] Cluster operator account password.
  /// [sqlServiceAccountPassword] SQL service account password.
  WsfcDomainCredentialsResponse({
    this.clusterBootstrapAccountPassword,
    this.clusterOperatorAccountPassword,
    this.sqlServiceAccountPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterBootstrapAccountPassword': ?clusterBootstrapAccountPassword,
      'clusterOperatorAccountPassword': ?clusterOperatorAccountPassword,
      'sqlServiceAccountPassword': ?sqlServiceAccountPassword,
    };
  }

  factory WsfcDomainCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return WsfcDomainCredentialsResponse(
      clusterBootstrapAccountPassword: map['clusterBootstrapAccountPassword'] == null ? null : (map['clusterBootstrapAccountPassword'] as String).input(),
      clusterOperatorAccountPassword: map['clusterOperatorAccountPassword'] == null ? null : (map['clusterOperatorAccountPassword'] as String).input(),
      sqlServiceAccountPassword: map['sqlServiceAccountPassword'] == null ? null : (map['sqlServiceAccountPassword'] as String).input(),
    );
  }
}

