// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisCatalogInfo {
  /// Administrator login name for the SQL Server.
  final String? administratorLogin;
  /// Administrator login password for the SQL Server.
  final String? administratorPassword;
  /// The dual standby Azure-SSIS Integration Runtime pair with SSISDB failover.
  final String? dualStandbyPairName;
  /// The name of SQL elastic pool where the database will be created for the SSIS catalog. Mutually exclusive with `pricing_tier`.
  final String? elasticPoolName;
  /// Pricing tier for the database that will be created for the SSIS catalog. Valid values are: `Basic`, `S0`, `S1`, `S2`, `S3`, `S4`, `S6`, `S7`, `S9`, `S12`, `P1`, `P2`, `P4`, `P6`, `P11`, `P15`, `GP_S_Gen5_1`, `GP_S_Gen5_2`, `GP_S_Gen5_4`, `GP_S_Gen5_6`, `GP_S_Gen5_8`, `GP_S_Gen5_10`, `GP_S_Gen5_12`, `GP_S_Gen5_14`, `GP_S_Gen5_16`, `GP_S_Gen5_18`, `GP_S_Gen5_20`, `GP_S_Gen5_24`, `GP_S_Gen5_32`, `GP_S_Gen5_40`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_6`, `GP_Gen5_8`, `GP_Gen5_10`, `GP_Gen5_12`, `GP_Gen5_14`, `GP_Gen5_16`, `GP_Gen5_18`, `GP_Gen5_20`, `GP_Gen5_24`, `GP_Gen5_32`, `GP_Gen5_40`, `GP_Gen5_80`, `BC_Gen5_2`, `BC_Gen5_4`, `BC_Gen5_6`, `BC_Gen5_8`, `BC_Gen5_10`, `BC_Gen5_12`, `BC_Gen5_14`, `BC_Gen5_16`, `BC_Gen5_18`, `BC_Gen5_20`, `BC_Gen5_24`, `BC_Gen5_32`, `BC_Gen5_40`, `BC_Gen5_80`, `HS_Gen5_2`, `HS_Gen5_4`, `HS_Gen5_6`, `HS_Gen5_8`, `HS_Gen5_10`, `HS_Gen5_12`, `HS_Gen5_14`, `HS_Gen5_16`, `HS_Gen5_18`, `HS_Gen5_20`, `HS_Gen5_24`, `HS_Gen5_32`, `HS_Gen5_40` and `HS_Gen5_80`. Mutually exclusive with `elastic_pool_name`.
  final String? pricingTier;
  /// The endpoint of an Azure SQL Server that will be used to host the SSIS catalog.
  final String serverEndpoint;

  /// Creates a new [IntegrationRuntimeSsisCatalogInfo].
  /// [administratorLogin] Administrator login name for the SQL Server.
  /// [administratorPassword] Administrator login password for the SQL Server.
  /// [dualStandbyPairName] The dual standby Azure-SSIS Integration Runtime pair with SSISDB failover.
  /// [elasticPoolName] The name of SQL elastic pool where the database will be created for the SSIS catalog. Mutually exclusive with `pricing_tier`.
  /// [pricingTier] Pricing tier for the database that will be created for the SSIS catalog. Valid values are: `Basic`, `S0`, `S1`, `S2`, `S3`, `S4`, `S6`, `S7`, `S9`, `S12`, `P1`, `P2`, `P4`, `P6`, `P11`, `P15`, `GP_S_Gen5_1`, `GP_S_Gen5_2`, `GP_S_Gen5_4`, `GP_S_Gen5_6`, `GP_S_Gen5_8`, `GP_S_Gen5_10`, `GP_S_Gen5_12`, `GP_S_Gen5_14`, `GP_S_Gen5_16`, `GP_S_Gen5_18`, `GP_S_Gen5_20`, `GP_S_Gen5_24`, `GP_S_Gen5_32`, `GP_S_Gen5_40`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_6`, `GP_Gen5_8`, `GP_Gen5_10`, `GP_Gen5_12`, `GP_Gen5_14`, `GP_Gen5_16`, `GP_Gen5_18`, `GP_Gen5_20`, `GP_Gen5_24`, `GP_Gen5_32`, `GP_Gen5_40`, `GP_Gen5_80`, `BC_Gen5_2`, `BC_Gen5_4`, `BC_Gen5_6`, `BC_Gen5_8`, `BC_Gen5_10`, `BC_Gen5_12`, `BC_Gen5_14`, `BC_Gen5_16`, `BC_Gen5_18`, `BC_Gen5_20`, `BC_Gen5_24`, `BC_Gen5_32`, `BC_Gen5_40`, `BC_Gen5_80`, `HS_Gen5_2`, `HS_Gen5_4`, `HS_Gen5_6`, `HS_Gen5_8`, `HS_Gen5_10`, `HS_Gen5_12`, `HS_Gen5_14`, `HS_Gen5_16`, `HS_Gen5_18`, `HS_Gen5_20`, `HS_Gen5_24`, `HS_Gen5_32`, `HS_Gen5_40` and `HS_Gen5_80`. Mutually exclusive with `elastic_pool_name`.
  /// [serverEndpoint] The endpoint of an Azure SQL Server that will be used to host the SSIS catalog.
  IntegrationRuntimeSsisCatalogInfo({
    this.administratorLogin,
    this.administratorPassword,
    this.dualStandbyPairName,
    this.elasticPoolName,
    this.pricingTier,
    required this.serverEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorPassword': ?administratorPassword,
      'dualStandbyPairName': ?dualStandbyPairName,
      'elasticPoolName': ?elasticPoolName,
      'pricingTier': ?pricingTier,
      'serverEndpoint': serverEndpoint,
    };
  }

  factory IntegrationRuntimeSsisCatalogInfo.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisCatalogInfo(
      administratorLogin: map['administratorLogin'] == null ? null : map['administratorLogin'] as String,
      administratorPassword: map['administratorPassword'] == null ? null : map['administratorPassword'] as String,
      dualStandbyPairName: map['dualStandbyPairName'] == null ? null : map['dualStandbyPairName'] as String,
      elasticPoolName: map['elasticPoolName'] == null ? null : map['elasticPoolName'] as String,
      pricingTier: map['pricingTier'] == null ? null : map['pricingTier'] as String,
      serverEndpoint: map['serverEndpoint'] as String,
    );
  }
}

