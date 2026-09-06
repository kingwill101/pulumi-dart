// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Active Directory account details to operate Windows Server Failover Cluster.
class WsfcDomainProfile {
  /// Account name used for creating cluster (at minimum needs permissions to 'Create Computer Objects' in domain).
  final pulumi.Input<String?>? clusterBootstrapAccount;
  /// Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster.
  final pulumi.Input<String?>? clusterOperatorAccount;
  /// Cluster subnet type.
  final pulumi.Input<dynamic>? clusterSubnetType;
  /// Fully qualified name of the domain.
  final pulumi.Input<String?>? domainFqdn;
  /// Optional path for fileshare witness.
  final pulumi.Input<String?>? fileShareWitnessPath;
  /// The flag to check if SQL service account is GMSA.
  final pulumi.Input<bool?>? isSqlServiceAccountGmsa;
  /// Organizational Unit path in which the nodes and cluster will be present.
  final pulumi.Input<String?>? ouPath;
  /// Account name under which SQL service will run on all participating SQL virtual machines in the cluster.
  final pulumi.Input<String?>? sqlServiceAccount;
  /// Primary key of the witness storage account.
  final pulumi.Input<String?>? storageAccountPrimaryKey;
  /// Fully qualified ARM resource id of the witness storage account.
  final pulumi.Input<String?>? storageAccountUrl;

  /// Creates a new [WsfcDomainProfile].
  /// [clusterBootstrapAccount] Account name used for creating cluster (at minimum needs permissions to 'Create Computer Objects' in domain).
  /// [clusterOperatorAccount] Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster.
  /// [clusterSubnetType] Cluster subnet type.
  /// [domainFqdn] Fully qualified name of the domain.
  /// [fileShareWitnessPath] Optional path for fileshare witness.
  /// [isSqlServiceAccountGmsa] The flag to check if SQL service account is GMSA.
  /// [ouPath] Organizational Unit path in which the nodes and cluster will be present.
  /// [sqlServiceAccount] Account name under which SQL service will run on all participating SQL virtual machines in the cluster.
  /// [storageAccountPrimaryKey] Primary key of the witness storage account.
  /// [storageAccountUrl] Fully qualified ARM resource id of the witness storage account.
  const WsfcDomainProfile({
    this.clusterBootstrapAccount,
    this.clusterOperatorAccount,
    this.clusterSubnetType,
    this.domainFqdn,
    this.fileShareWitnessPath,
    this.isSqlServiceAccountGmsa,
    this.ouPath,
    this.sqlServiceAccount,
    this.storageAccountPrimaryKey,
    this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterBootstrapAccount': ?clusterBootstrapAccount,
      'clusterOperatorAccount': ?clusterOperatorAccount,
      'clusterSubnetType': ?clusterSubnetType,
      'domainFqdn': ?domainFqdn,
      'fileShareWitnessPath': ?fileShareWitnessPath,
      'isSqlServiceAccountGmsa': ?isSqlServiceAccountGmsa,
      'ouPath': ?ouPath,
      'sqlServiceAccount': ?sqlServiceAccount,
      'storageAccountPrimaryKey': ?storageAccountPrimaryKey,
      'storageAccountUrl': ?storageAccountUrl,
    };
  }

  factory WsfcDomainProfile.fromMap(Map<String, dynamic> map) {
    return WsfcDomainProfile(
      clusterBootstrapAccount: (() { final guardedValue = map['clusterBootstrapAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterOperatorAccount: (() { final guardedValue = map['clusterOperatorAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterSubnetType: (() { final guardedValue = map['clusterSubnetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      domainFqdn: (() { final guardedValue = map['domainFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileShareWitnessPath: (() { final guardedValue = map['fileShareWitnessPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSqlServiceAccountGmsa: (() { final guardedValue = map['isSqlServiceAccountGmsa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ouPath: (() { final guardedValue = map['ouPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServiceAccount: (() { final guardedValue = map['sqlServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountPrimaryKey: (() { final guardedValue = map['storageAccountPrimaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountUrl: (() { final guardedValue = map['storageAccountUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
