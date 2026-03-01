// ignore_for_file: unused_element, unnecessary_cast


/// Active Directory account details to operate Windows Server Failover Cluster.
class WsfcDomainProfileResponse {
  /// Account name used for creating cluster (at minimum needs permissions to 'Create Computer Objects' in domain).
  final String? clusterBootstrapAccount;
  /// Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster.
  final String? clusterOperatorAccount;
  /// Cluster subnet type.
  final String? clusterSubnetType;
  /// Fully qualified name of the domain.
  final String? domainFqdn;
  /// Optional path for fileshare witness.
  final String? fileShareWitnessPath;
  /// The flag to check if SQL service account is GMSA.
  final bool? isSqlServiceAccountGmsa;
  /// Organizational Unit path in which the nodes and cluster will be present.
  final String? ouPath;
  /// Account name under which SQL service will run on all participating SQL virtual machines in the cluster.
  final String? sqlServiceAccount;
  /// Fully qualified ARM resource id of the witness storage account.
  final String? storageAccountUrl;

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
      clusterBootstrapAccount: map['clusterBootstrapAccount'] == null ? null : map['clusterBootstrapAccount'] as String,
      clusterOperatorAccount: map['clusterOperatorAccount'] == null ? null : map['clusterOperatorAccount'] as String,
      clusterSubnetType: map['clusterSubnetType'] == null ? null : map['clusterSubnetType'] as String,
      domainFqdn: map['domainFqdn'] == null ? null : map['domainFqdn'] as String,
      fileShareWitnessPath: map['fileShareWitnessPath'] == null ? null : map['fileShareWitnessPath'] as String,
      isSqlServiceAccountGmsa: map['isSqlServiceAccountGmsa'] == null ? null : map['isSqlServiceAccountGmsa'] as bool,
      ouPath: map['ouPath'] == null ? null : map['ouPath'] as String,
      sqlServiceAccount: map['sqlServiceAccount'] == null ? null : map['sqlServiceAccount'] as String,
      storageAccountUrl: map['storageAccountUrl'] == null ? null : map['storageAccountUrl'] as String,
    );
  }
}

