// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
class WsfcDomainCredentialsResponse {
  /// Cluster bootstrap account password.
  final pulumi.Input<String?>? clusterBootstrapAccountPassword;
  /// Cluster operator account password.
  final pulumi.Input<String?>? clusterOperatorAccountPassword;
  /// SQL service account password.
  final pulumi.Input<String?>? sqlServiceAccountPassword;

  /// Creates a new [WsfcDomainCredentialsResponse].
  /// [clusterBootstrapAccountPassword] Cluster bootstrap account password.
  /// [clusterOperatorAccountPassword] Cluster operator account password.
  /// [sqlServiceAccountPassword] SQL service account password.
  const WsfcDomainCredentialsResponse({
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
      clusterBootstrapAccountPassword: (() { final guardedValue = map['clusterBootstrapAccountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterOperatorAccountPassword: (() { final guardedValue = map['clusterOperatorAccountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServiceAccountPassword: (() { final guardedValue = map['sqlServiceAccountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
