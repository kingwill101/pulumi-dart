// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_azuread_administrator.dart';
import 'server_identity.dart';

/// Input properties used for looking up and filtering Server resources.
class ServerState {
  /// The administrator login name for the new server. Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorLogin;
  /// The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx).
  final pulumi.Input<String>? administratorLoginPassword;
  /// An integer value used to trigger an update for `administrator_login_password_wo`. This property should be incremented when updating `administrator_login_password_wo`.
  final pulumi.Input<int>? administratorLoginPasswordWoVersion;
  /// An `azuread_administrator` block as defined below.
  final pulumi.Input<ServerAzureadAdministrator>? azureadAdministrator;
  /// The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`.
  final pulumi.Input<String>? connectionPolicy;
  /// Whether to enable the Express Vulnerability Assessment Configuration. Defaults to `false`.
  ///
  /// > **Note:** If you have enabled the Classic SQL Vulnerability Assessment configuration using the `azure.mssql.ServerVulnerabilityAssessment` resource, you must first delete it before enabling `express_vulnerability_assessment_enabled`. If you wish to revert back to using the Classic SQL Vulnerability Assessment configuration you must first disable this setting.
  final pulumi.Input<bool>? expressVulnerabilityAssessmentEnabled;
  /// The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)
  final pulumi.Input<String>? fullyQualifiedDomainName;
  /// An `identity` block as defined below.
  final pulumi.Input<ServerIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`.
  ///
  /// > **Note:** The `minimum_tls_version` is set to `Disabled` means all TLS versions are allowed. After you enforce a version of `minimum_tls_version`, it's not possible to revert to `Disabled`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether outbound network traffic is restricted for this server. Defaults to `false`.
  final pulumi.Input<bool>? outboundNetworkRestrictionEnabled;
  /// Specifies the primary user managed identity id. Required if `type` within the `identity` block is set to either `SystemAssigned, UserAssigned` or `UserAssigned` and should be set at same time as setting `identity_ids`.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;
  /// Whether public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A list of dropped restorable database IDs on the server.
  final pulumi.Input<List<String>>? restorableDroppedDatabaseIds;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  ///
  /// > **Note:** To successfully deploy a `Microsoft SQL Server` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`.
  ///
  /// > **Note:** Cross-tenant `Key Vault` and `Microsoft SQL Server` interactions are not supported. Please see the [product documentation](https://learn.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview?view=azuresql#requirements-for-configuring-customer-managed-tde) for more information.
  ///
  /// > **Note:** When using a firewall with a `Key Vault`, you must enable the option `Allow trusted Microsoft services to bypass the firewall`.
  final pulumi.Input<String>? transparentDataEncryptionKeyVaultKeyId;
  /// The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [ServerState].
  /// [administratorLogin] The administrator login name for the new server. Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created.
  /// [administratorLoginPassword] The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx).
  /// [administratorLoginPasswordWoVersion] An integer value used to trigger an update for `administrator_login_password_wo`. This property should be incremented when updating `administrator_login_password_wo`.
  /// [azureadAdministrator] An `azuread_administrator` block as defined below.
  /// [connectionPolicy] The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`.
  /// [expressVulnerabilityAssessmentEnabled] Whether to enable the Express Vulnerability Assessment Configuration. Defaults to `false`.
  /// [fullyQualifiedDomainName] The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [minimumTlsVersion] The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`.
  /// [name] The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  /// [outboundNetworkRestrictionEnabled] Whether outbound network traffic is restricted for this server. Defaults to `false`.
  /// [primaryUserAssignedIdentityId] Specifies the primary user managed identity id. Required if `type` within the `identity` block is set to either `SystemAssigned, UserAssigned` or `UserAssigned` and should be set at same time as setting `identity_ids`.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created.
  /// [restorableDroppedDatabaseIds] A list of dropped restorable database IDs on the server.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transparentDataEncryptionKeyVaultKeyId] The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  /// [version] The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created.
  ServerState({
    this.administratorLogin,
    this.administratorLoginPassword,
    this.administratorLoginPasswordWoVersion,
    this.azureadAdministrator,
    this.connectionPolicy,
    this.expressVulnerabilityAssessmentEnabled,
    this.fullyQualifiedDomainName,
    this.identity,
    this.location,
    this.minimumTlsVersion,
    this.name,
    this.outboundNetworkRestrictionEnabled,
    this.primaryUserAssignedIdentityId,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.restorableDroppedDatabaseIds,
    this.tags,
    this.transparentDataEncryptionKeyVaultKeyId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'administratorLoginPasswordWoVersion': ?administratorLoginPasswordWoVersion,
      'azureadAdministrator': ?pulumi.Input.mapOptionalInputValue<ServerAzureadAdministrator, Map<String, dynamic>>(azureadAdministrator, (value) => value.toMap()),
      'connectionPolicy': ?connectionPolicy,
      'expressVulnerabilityAssessmentEnabled': ?expressVulnerabilityAssessmentEnabled,
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'outboundNetworkRestrictionEnabled': ?outboundNetworkRestrictionEnabled,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'restorableDroppedDatabaseIds': ?restorableDroppedDatabaseIds,
      'tags': ?tags,
      'transparentDataEncryptionKeyVaultKeyId': ?transparentDataEncryptionKeyVaultKeyId,
      'version': ?version,
    };
  }

  factory ServerState.fromMap(Map<String, dynamic> map) {
    return ServerState(
      administratorLogin: map['administratorLogin'] == null ? null : (map['administratorLogin']! as String).input(),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : (map['administratorLoginPassword']! as String).input(),
      administratorLoginPasswordWoVersion: map['administratorLoginPasswordWoVersion'] == null ? null : (map['administratorLoginPasswordWoVersion']! as int).input(),
      azureadAdministrator: map['azureadAdministrator'] == null ? null : (ServerAzureadAdministrator.fromMap((map['azureadAdministrator']! as Map).cast<String, dynamic>())).input(),
      connectionPolicy: map['connectionPolicy'] == null ? null : (map['connectionPolicy']! as String).input(),
      expressVulnerabilityAssessmentEnabled: map['expressVulnerabilityAssessmentEnabled'] == null ? null : (map['expressVulnerabilityAssessmentEnabled']! as bool).input(),
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] == null ? null : (map['fullyQualifiedDomainName']! as String).input(),
      identity: map['identity'] == null ? null : (ServerIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outboundNetworkRestrictionEnabled: map['outboundNetworkRestrictionEnabled'] == null ? null : (map['outboundNetworkRestrictionEnabled']! as bool).input(),
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : (map['primaryUserAssignedIdentityId']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      restorableDroppedDatabaseIds: map['restorableDroppedDatabaseIds'] == null ? null : ((map['restorableDroppedDatabaseIds']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transparentDataEncryptionKeyVaultKeyId: map['transparentDataEncryptionKeyVaultKeyId'] == null ? null : (map['transparentDataEncryptionKeyVaultKeyId']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

