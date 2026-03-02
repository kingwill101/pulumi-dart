// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Active Directory account details to operate Windows Server Failover Cluster.
class WsfcDomainProfileResponse {
  /// Account name used for creating cluster (at minimum needs permissions to 'Create Computer Objects' in domain).
  final pulumi.Input<String>? clusterBootstrapAccount;
  /// Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster.
  final pulumi.Input<String>? clusterOperatorAccount;
  /// Cluster subnet type.
  final pulumi.Input<String>? clusterSubnetType;
  /// Fully qualified name of the domain.
  final pulumi.Input<String>? domainFqdn;
  /// Optional path for fileshare witness.
  final pulumi.Input<String>? fileShareWitnessPath;
  /// The flag to check if SQL service account is GMSA.
  final pulumi.Input<bool>? isSqlServiceAccountGmsa;
  /// Organizational Unit path in which the nodes and cluster will be present.
  final pulumi.Input<String>? ouPath;
  /// Account name under which SQL service will run on all participating SQL virtual machines in the cluster.
  final pulumi.Input<String>? sqlServiceAccount;
  /// Fully qualified ARM resource id of the witness storage account.
  final pulumi.Input<String>? storageAccountUrl;

  /// Creates a new [WsfcDomainProfileResponse].
  /// [clusterBootstrapAccount] Account name used for creating cluster (at minimum needs permissions to 'Create Computer Objects' in domain).
  /// [clusterOperatorAccount] Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster.
  /// [clusterSubnetType] Cluster subnet type.
  /// [domainFqdn] Fully qualified name of the domain.
  /// [fileShareWitnessPath] Optional path for fileshare witness.
  /// [isSqlServiceAccountGmsa] The flag to check if SQL service account is GMSA.
  /// [ouPath] Organizational Unit path in which the nodes and cluster will be present.
  /// [sqlServiceAccount] Account name under which SQL service will run on all participating SQL virtual machines in the cluster.
  /// [storageAccountUrl] Fully qualified ARM resource id of the witness storage account.
  WsfcDomainProfileResponse({
    this.clusterBootstrapAccount,
    this.clusterOperatorAccount,
    this.clusterSubnetType,
    this.domainFqdn,
    this.fileShareWitnessPath,
    this.isSqlServiceAccountGmsa,
    this.ouPath,
    this.sqlServiceAccount,
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
      'storageAccountUrl': ?storageAccountUrl,
    };
  }

  factory WsfcDomainProfileResponse.fromMap(Map<String, dynamic> map) {
    return WsfcDomainProfileResponse(
      clusterBootstrapAccount: map['clusterBootstrapAccount'] == null ? null : (map['clusterBootstrapAccount'] as String).input(),
      clusterOperatorAccount: map['clusterOperatorAccount'] == null ? null : (map['clusterOperatorAccount'] as String).input(),
      clusterSubnetType: map['clusterSubnetType'] == null ? null : (map['clusterSubnetType'] as String).input(),
      domainFqdn: map['domainFqdn'] == null ? null : (map['domainFqdn'] as String).input(),
      fileShareWitnessPath: map['fileShareWitnessPath'] == null ? null : (map['fileShareWitnessPath'] as String).input(),
      isSqlServiceAccountGmsa: map['isSqlServiceAccountGmsa'] == null ? null : (map['isSqlServiceAccountGmsa'] as bool).input(),
      ouPath: map['ouPath'] == null ? null : (map['ouPath'] as String).input(),
      sqlServiceAccount: map['sqlServiceAccount'] == null ? null : (map['sqlServiceAccount'] as String).input(),
      storageAccountUrl: map['storageAccountUrl'] == null ? null : (map['storageAccountUrl'] as String).input(),
    );
  }
}

