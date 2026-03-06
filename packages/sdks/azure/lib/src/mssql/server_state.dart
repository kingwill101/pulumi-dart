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
  /// &gt; **Note:** If you have enabled the Classic SQL Vulnerability Assessment configuration using the `azure.mssql.ServerVulnerabilityAssessment` resource, you must first delete it before enabling `express_vulnerability_assessment_enabled`. If you wish to revert back to using the Classic SQL Vulnerability Assessment configuration you must first disable this setting.
  final pulumi.Input<bool>? expressVulnerabilityAssessmentEnabled;
  /// The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)
  final pulumi.Input<String>? fullyQualifiedDomainName;
  /// An `identity` block as defined below.
  final pulumi.Input<ServerIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`.
  ///
  /// &gt; **Note:** The `minimum_tls_version` is set to `Disabled` means all TLS versions are allowed. After you enforce a version of `minimum_tls_version`, it's not possible to revert to `Disabled`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
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
  /// The fully versioned `Key Vault` `Key` URL (e.g. `'https://&lt;YourVaultName&gt;.vault.azure.net/keys/&lt;YourKeyName&gt;/&lt;YourKeyVersion&gt;`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  ///
  /// &gt; **Note:** To successfully deploy a `Microsoft SQL Server` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`.
  ///
  /// &gt; **Note:** Cross-tenant `Key Vault` and `Microsoft SQL Server` interactions are not supported. Please see the [product documentation](https://learn.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview?view=azuresql#requirements-for-configuring-customer-managed-tde) for more information.
  ///
  /// &gt; **Note:** When using a firewall with a `Key Vault`, you must enable the option `Allow trusted Microsoft services to bypass the firewall`.
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
  /// [transparentDataEncryptionKeyVaultKeyId] The fully versioned `Key Vault` `Key` URL (e.g. `'https://&lt;YourVaultName&gt;.vault.azure.net/keys/&lt;YourKeyName&gt;/&lt;YourKeyVersion&gt;`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  /// [version] The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created.
  const ServerState({
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
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorLoginPassword: (() { final guardedValue = map['administratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorLoginPasswordWoVersion: (() { final guardedValue = map['administratorLoginPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      azureadAdministrator: (() { final guardedValue = map['azureadAdministrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerAzureadAdministrator.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionPolicy: (() { final guardedValue = map['connectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressVulnerabilityAssessmentEnabled: (() { final guardedValue = map['expressVulnerabilityAssessmentEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundNetworkRestrictionEnabled: (() { final guardedValue = map['outboundNetworkRestrictionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      primaryUserAssignedIdentityId: (() { final guardedValue = map['primaryUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorableDroppedDatabaseIds: (() { final guardedValue = map['restorableDroppedDatabaseIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transparentDataEncryptionKeyVaultKeyId: (() { final guardedValue = map['transparentDataEncryptionKeyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

