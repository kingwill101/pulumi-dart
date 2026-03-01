// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_definition_info_response.dart';
import 'api_management_config_response.dart';
import 'auto_heal_rules_response.dart';
import 'azure_storage_info_value_response.dart';
import 'conn_string_info_response.dart';
import 'cors_settings_response.dart';
import 'experiments_response.dart';
import 'handler_mapping_response.dart';
import 'ip_security_restriction_response.dart';
import 'name_value_pair_response.dart';
import 'push_settings_response.dart';
import 'site_limits_response.dart';
import 'site_machine_key_response.dart';
import 'virtual_application_response.dart';

/// Configuration of an App Service app.
class SiteConfigResponse {
  /// Flag to use Managed Identity Creds for ACR pull
  final bool? acrUseManagedIdentityCreds;
  /// If using user managed identity, the user managed identity ClientId
  final String? acrUserManagedIdentityID;
  /// <code>true</code> if Always On is enabled; otherwise, <code>false</code>.
  final bool? alwaysOn;
  /// Information about the formal API definition for the app.
  final ApiDefinitionInfoResponse? apiDefinition;
  /// Azure API management settings linked to the app.
  final ApiManagementConfigResponse? apiManagementConfig;
  /// App command line to launch.
  final String? appCommandLine;
  /// Application settings.
  final List<NameValuePairResponse>? appSettings;
  /// <code>true</code> if Auto Heal is enabled; otherwise, <code>false</code>.
  final bool? autoHealEnabled;
  /// Auto Heal rules.
  final AutoHealRulesResponse? autoHealRules;
  /// Auto-swap slot name.
  final String? autoSwapSlotName;
  /// List of Azure Storage Accounts.
  final Map<String, AzureStorageInfoValueResponse>? azureStorageAccounts;
  /// Connection strings.
  final List<ConnStringInfoResponse>? connectionStrings;
  /// Cross-Origin Resource Sharing (CORS) settings.
  final CorsSettingsResponse? cors;
  /// Default documents.
  final List<String>? defaultDocuments;
  /// <code>true</code> if detailed error logging is enabled; otherwise, <code>false</code>.
  final bool? detailedErrorLoggingEnabled;
  /// Document root.
  final String? documentRoot;
  /// Maximum number of workers that a site can scale out to.
  /// This setting only applies to apps in plans where ElasticScaleEnabled is <code>true</code>
  final int? elasticWebAppScaleLimit;
  /// This is work around for polymorphic types.
  final ExperimentsResponse? experiments;
  /// State of FTP / FTPS service
  final String? ftpsState;
  /// Maximum number of workers that a site can scale out to.
  /// This setting only applies to the Consumption and Elastic Premium Plans
  final int? functionAppScaleLimit;
  /// Gets or sets a value indicating whether functions runtime scale monitoring is enabled. When enabled,
  /// the ScaleController will not monitor event sources directly, but will instead call to the
  /// runtime to get scale status.
  final bool? functionsRuntimeScaleMonitoringEnabled;
  /// Handler mappings.
  final List<HandlerMappingResponse>? handlerMappings;
  /// Health check path
  final String? healthCheckPath;
  /// Http20Enabled: configures a web site to allow clients to connect over http2.0
  final bool? http20Enabled;
  /// <code>true</code> if HTTP logging is enabled; otherwise, <code>false</code>.
  final bool? httpLoggingEnabled;
  /// IP security restrictions for main.
  final List<IpSecurityRestrictionResponse>? ipSecurityRestrictions;
  /// Default action for main access restriction if no rules are matched.
  final String? ipSecurityRestrictionsDefaultAction;
  /// Java container.
  final String? javaContainer;
  /// Java container version.
  final String? javaContainerVersion;
  /// Java version.
  final String? javaVersion;
  /// Identity to use for Key Vault Reference authentication.
  final String? keyVaultReferenceIdentity;
  /// Site limits.
  final SiteLimitsResponse? limits;
  /// Linux App Framework and version
  final String? linuxFxVersion;
  /// Site load balancing.
  final String? loadBalancing;
  /// <code>true</code> to enable local MySQL; otherwise, <code>false</code>.
  final bool? localMySqlEnabled;
  /// HTTP logs directory size limit.
  final int? logsDirectorySizeLimit;
  /// Site MachineKey.
  final SiteMachineKeyResponse machineKey;
  /// Managed pipeline mode.
  final String? managedPipelineMode;
  /// Managed Service Identity Id
  final int? managedServiceIdentityId;
  /// The minimum strength TLS cipher suite allowed for an application
  final String? minTlsCipherSuite;
  /// MinTlsVersion: configures the minimum version of TLS required for SSL requests
  final String? minTlsVersion;
  /// Number of minimum instance count for a site
  /// This setting only applies to the Elastic Plans
  final int? minimumElasticInstanceCount;
  /// .NET Framework version.
  final String? netFrameworkVersion;
  /// Version of Node.js.
  final String? nodeVersion;
  /// Number of workers.
  final int? numberOfWorkers;
  /// Version of PHP.
  final String? phpVersion;
  /// Version of PowerShell.
  final String? powerShellVersion;
  /// Number of preWarmed instances.
  /// This setting only applies to the Consumption and Elastic Plans
  final int? preWarmedInstanceCount;
  /// Property to allow or block all public traffic.
  final String? publicNetworkAccess;
  /// Publishing user name.
  final String? publishingUsername;
  /// Push endpoint settings.
  final PushSettingsResponse? push;
  /// Version of Python.
  final String? pythonVersion;
  /// <code>true</code> if remote debugging is enabled; otherwise, <code>false</code>.
  final bool? remoteDebuggingEnabled;
  /// Remote debugging version.
  final String? remoteDebuggingVersion;
  /// <code>true</code> if request tracing is enabled; otherwise, <code>false</code>.
  final bool? requestTracingEnabled;
  /// Request tracing expiration time.
  final String? requestTracingExpirationTime;
  /// IP security restrictions for scm.
  final List<IpSecurityRestrictionResponse>? scmIpSecurityRestrictions;
  /// Default action for scm access restriction if no rules are matched.
  final String? scmIpSecurityRestrictionsDefaultAction;
  /// IP security restrictions for scm to use main.
  final bool? scmIpSecurityRestrictionsUseMain;
  /// ScmMinTlsVersion: configures the minimum version of TLS required for SSL requests for SCM site
  final String? scmMinTlsVersion;
  /// SCM type.
  final String? scmType;
  /// Tracing options.
  final String? tracingOptions;
  /// <code>true</code> to use 32-bit worker process; otherwise, <code>false</code>.
  final bool? use32BitWorkerProcess;
  /// Virtual applications.
  final List<VirtualApplicationResponse>? virtualApplications;
  /// Virtual Network name.
  final String? vnetName;
  /// The number of private ports assigned to this app. These will be assigned dynamically on runtime.
  final int? vnetPrivatePortsCount;
  /// Virtual Network Route All enabled. This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  final bool? vnetRouteAllEnabled;
  /// <code>true</code> if WebSocket is enabled; otherwise, <code>false</code>.
  final bool? webSocketsEnabled;
  /// Sets the time zone a site uses for generating timestamps. Compatible with Linux and Windows App Service. Setting the WEBSITE_TIME_ZONE app setting takes precedence over this config. For Linux, expects tz database values https://www.iana.org/time-zones (for a quick reference see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). For Windows, expects one of the time zones listed under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones
  final String? websiteTimeZone;
  /// Xenon App Framework and version
  final String? windowsFxVersion;
  /// Explicit Managed Service Identity Id
  final int? xManagedServiceIdentityId;

  /// Creates a new [SiteConfigResponse].
  /// [acrUseManagedIdentityCreds] Flag to use Managed Identity Creds for ACR pull
  /// [acrUserManagedIdentityID] If using user managed identity, the user managed identity ClientId
  /// [alwaysOn] <code>true</code> if Always On is enabled; otherwise, <code>false</code>.
  /// [apiDefinition] Information about the formal API definition for the app.
  /// [apiManagementConfig] Azure API management settings linked to the app.
  /// [appCommandLine] App command line to launch.
  /// [appSettings] Application settings.
  /// [autoHealEnabled] <code>true</code> if Auto Heal is enabled; otherwise, <code>false</code>.
  /// [autoHealRules] Auto Heal rules.
  /// [autoSwapSlotName] Auto-swap slot name.
  /// [azureStorageAccounts] List of Azure Storage Accounts.
  /// [connectionStrings] Connection strings.
  /// [cors] Cross-Origin Resource Sharing (CORS) settings.
  /// [defaultDocuments] Default documents.
  /// [detailedErrorLoggingEnabled] <code>true</code> if detailed error logging is enabled; otherwise, <code>false</code>.
  /// [documentRoot] Document root.
  /// [elasticWebAppScaleLimit] Maximum number of workers that a site can scale out to.
  /// [experiments] This is work around for polymorphic types.
  /// [ftpsState] State of FTP / FTPS service
  /// [functionAppScaleLimit] Maximum number of workers that a site can scale out to.
  /// [functionsRuntimeScaleMonitoringEnabled] Gets or sets a value indicating whether functions runtime scale monitoring is enabled. When enabled,
  /// [handlerMappings] Handler mappings.
  /// [healthCheckPath] Health check path
  /// [http20Enabled] Http20Enabled: configures a web site to allow clients to connect over http2.0
  /// [httpLoggingEnabled] <code>true</code> if HTTP logging is enabled; otherwise, <code>false</code>.
  /// [ipSecurityRestrictions] IP security restrictions for main.
  /// [ipSecurityRestrictionsDefaultAction] Default action for main access restriction if no rules are matched.
  /// [javaContainer] Java container.
  /// [javaContainerVersion] Java container version.
  /// [javaVersion] Java version.
  /// [keyVaultReferenceIdentity] Identity to use for Key Vault Reference authentication.
  /// [limits] Site limits.
  /// [linuxFxVersion] Linux App Framework and version
  /// [loadBalancing] Site load balancing.
  /// [localMySqlEnabled] <code>true</code> to enable local MySQL; otherwise, <code>false</code>.
  /// [logsDirectorySizeLimit] HTTP logs directory size limit.
  /// [machineKey] Site MachineKey.
  /// [managedPipelineMode] Managed pipeline mode.
  /// [managedServiceIdentityId] Managed Service Identity Id
  /// [minTlsCipherSuite] The minimum strength TLS cipher suite allowed for an application
  /// [minTlsVersion] MinTlsVersion: configures the minimum version of TLS required for SSL requests
  /// [minimumElasticInstanceCount] Number of minimum instance count for a site
  /// [netFrameworkVersion] .NET Framework version.
  /// [nodeVersion] Version of Node.js.
  /// [numberOfWorkers] Number of workers.
  /// [phpVersion] Version of PHP.
  /// [powerShellVersion] Version of PowerShell.
  /// [preWarmedInstanceCount] Number of preWarmed instances.
  /// [publicNetworkAccess] Property to allow or block all public traffic.
  /// [publishingUsername] Publishing user name.
  /// [push] Push endpoint settings.
  /// [pythonVersion] Version of Python.
  /// [remoteDebuggingEnabled] <code>true</code> if remote debugging is enabled; otherwise, <code>false</code>.
  /// [remoteDebuggingVersion] Remote debugging version.
  /// [requestTracingEnabled] <code>true</code> if request tracing is enabled; otherwise, <code>false</code>.
  /// [requestTracingExpirationTime] Request tracing expiration time.
  /// [scmIpSecurityRestrictions] IP security restrictions for scm.
  /// [scmIpSecurityRestrictionsDefaultAction] Default action for scm access restriction if no rules are matched.
  /// [scmIpSecurityRestrictionsUseMain] IP security restrictions for scm to use main.
  /// [scmMinTlsVersion] ScmMinTlsVersion: configures the minimum version of TLS required for SSL requests for SCM site
  /// [scmType] SCM type.
  /// [tracingOptions] Tracing options.
  /// [use32BitWorkerProcess] <code>true</code> to use 32-bit worker process; otherwise, <code>false</code>.
  /// [virtualApplications] Virtual applications.
  /// [vnetName] Virtual Network name.
  /// [vnetPrivatePortsCount] The number of private ports assigned to this app. These will be assigned dynamically on runtime.
  /// [vnetRouteAllEnabled] Virtual Network Route All enabled. This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  /// [webSocketsEnabled] <code>true</code> if WebSocket is enabled; otherwise, <code>false</code>.
  /// [websiteTimeZone] Sets the time zone a site uses for generating timestamps. Compatible with Linux and Windows App Service. Setting the WEBSITE_TIME_ZONE app setting takes precedence over this config. For Linux, expects tz database values https://www.iana.org/time-zones (for a quick reference see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). For Windows, expects one of the time zones listed under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones
  /// [windowsFxVersion] Xenon App Framework and version
  /// [xManagedServiceIdentityId] Explicit Managed Service Identity Id
  SiteConfigResponse({
    this.acrUseManagedIdentityCreds,
    this.acrUserManagedIdentityID,
    this.alwaysOn,
    this.apiDefinition,
    this.apiManagementConfig,
    this.appCommandLine,
    this.appSettings,
    this.autoHealEnabled,
    this.autoHealRules,
    this.autoSwapSlotName,
    this.azureStorageAccounts,
    this.connectionStrings,
    this.cors,
    this.defaultDocuments,
    this.detailedErrorLoggingEnabled,
    this.documentRoot,
    this.elasticWebAppScaleLimit,
    this.experiments,
    this.ftpsState,
    this.functionAppScaleLimit,
    this.functionsRuntimeScaleMonitoringEnabled,
    this.handlerMappings,
    this.healthCheckPath,
    this.http20Enabled,
    this.httpLoggingEnabled,
    this.ipSecurityRestrictions,
    this.ipSecurityRestrictionsDefaultAction,
    this.javaContainer,
    this.javaContainerVersion,
    this.javaVersion,
    this.keyVaultReferenceIdentity,
    this.limits,
    this.linuxFxVersion,
    this.loadBalancing,
    this.localMySqlEnabled,
    this.logsDirectorySizeLimit,
    required this.machineKey,
    this.managedPipelineMode,
    this.managedServiceIdentityId,
    this.minTlsCipherSuite,
    this.minTlsVersion,
    this.minimumElasticInstanceCount,
    this.netFrameworkVersion,
    this.nodeVersion,
    this.numberOfWorkers,
    this.phpVersion,
    this.powerShellVersion,
    this.preWarmedInstanceCount,
    this.publicNetworkAccess,
    this.publishingUsername,
    this.push,
    this.pythonVersion,
    this.remoteDebuggingEnabled,
    this.remoteDebuggingVersion,
    this.requestTracingEnabled,
    this.requestTracingExpirationTime,
    this.scmIpSecurityRestrictions,
    this.scmIpSecurityRestrictionsDefaultAction,
    this.scmIpSecurityRestrictionsUseMain,
    this.scmMinTlsVersion,
    this.scmType,
    this.tracingOptions,
    this.use32BitWorkerProcess,
    this.virtualApplications,
    this.vnetName,
    this.vnetPrivatePortsCount,
    this.vnetRouteAllEnabled,
    this.webSocketsEnabled,
    this.websiteTimeZone,
    this.windowsFxVersion,
    this.xManagedServiceIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrUseManagedIdentityCreds': ?acrUseManagedIdentityCreds,
      'acrUserManagedIdentityID': ?acrUserManagedIdentityID,
      'alwaysOn': ?alwaysOn,
      'apiDefinition': ?apiDefinition == null ? null : apiDefinition!.toMap(),
      'apiManagementConfig': ?apiManagementConfig == null ? null : apiManagementConfig!.toMap(),
      'appCommandLine': ?appCommandLine,
      'appSettings': ?appSettings == null ? null : pulumi.Input.encodeList<NameValuePairResponse, Map<String, dynamic>>(appSettings!, (value) => value.toMap()),
      'autoHealEnabled': ?autoHealEnabled,
      'autoHealRules': ?autoHealRules == null ? null : autoHealRules!.toMap(),
      'autoSwapSlotName': ?autoSwapSlotName,
      'azureStorageAccounts': ?azureStorageAccounts == null ? null : pulumi.Input.encodeMapValues<AzureStorageInfoValueResponse, Map<String, dynamic>>(azureStorageAccounts!, (value) => value.toMap()),
      'connectionStrings': ?connectionStrings == null ? null : pulumi.Input.encodeList<ConnStringInfoResponse, Map<String, dynamic>>(connectionStrings!, (value) => value.toMap()),
      'cors': ?cors == null ? null : cors!.toMap(),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'documentRoot': ?documentRoot,
      'elasticWebAppScaleLimit': ?elasticWebAppScaleLimit,
      'experiments': ?experiments == null ? null : experiments!.toMap(),
      'ftpsState': ?ftpsState,
      'functionAppScaleLimit': ?functionAppScaleLimit,
      'functionsRuntimeScaleMonitoringEnabled': ?functionsRuntimeScaleMonitoringEnabled,
      'handlerMappings': ?handlerMappings == null ? null : pulumi.Input.encodeList<HandlerMappingResponse, Map<String, dynamic>>(handlerMappings!, (value) => value.toMap()),
      'healthCheckPath': ?healthCheckPath,
      'http20Enabled': ?http20Enabled,
      'httpLoggingEnabled': ?httpLoggingEnabled,
      'ipSecurityRestrictions': ?ipSecurityRestrictions == null ? null : pulumi.Input.encodeList<IpSecurityRestrictionResponse, Map<String, dynamic>>(ipSecurityRestrictions!, (value) => value.toMap()),
      'ipSecurityRestrictionsDefaultAction': ?ipSecurityRestrictionsDefaultAction,
      'javaContainer': ?javaContainer,
      'javaContainerVersion': ?javaContainerVersion,
      'javaVersion': ?javaVersion,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'limits': ?limits == null ? null : limits!.toMap(),
      'linuxFxVersion': ?linuxFxVersion,
      'loadBalancing': ?loadBalancing,
      'localMySqlEnabled': ?localMySqlEnabled,
      'logsDirectorySizeLimit': ?logsDirectorySizeLimit,
      'machineKey': machineKey.toMap(),
      'managedPipelineMode': ?managedPipelineMode,
      'managedServiceIdentityId': ?managedServiceIdentityId,
      'minTlsCipherSuite': ?minTlsCipherSuite,
      'minTlsVersion': ?minTlsVersion,
      'minimumElasticInstanceCount': ?minimumElasticInstanceCount,
      'netFrameworkVersion': ?netFrameworkVersion,
      'nodeVersion': ?nodeVersion,
      'numberOfWorkers': ?numberOfWorkers,
      'phpVersion': ?phpVersion,
      'powerShellVersion': ?powerShellVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'publicNetworkAccess': ?publicNetworkAccess,
      'publishingUsername': ?publishingUsername,
      'push': ?push == null ? null : push!.toMap(),
      'pythonVersion': ?pythonVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'requestTracingEnabled': ?requestTracingEnabled,
      'requestTracingExpirationTime': ?requestTracingExpirationTime,
      'scmIpSecurityRestrictions': ?scmIpSecurityRestrictions == null ? null : pulumi.Input.encodeList<IpSecurityRestrictionResponse, Map<String, dynamic>>(scmIpSecurityRestrictions!, (value) => value.toMap()),
      'scmIpSecurityRestrictionsDefaultAction': ?scmIpSecurityRestrictionsDefaultAction,
      'scmIpSecurityRestrictionsUseMain': ?scmIpSecurityRestrictionsUseMain,
      'scmMinTlsVersion': ?scmMinTlsVersion,
      'scmType': ?scmType,
      'tracingOptions': ?tracingOptions,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'virtualApplications': ?virtualApplications == null ? null : pulumi.Input.encodeList<VirtualApplicationResponse, Map<String, dynamic>>(virtualApplications!, (value) => value.toMap()),
      'vnetName': ?vnetName,
      'vnetPrivatePortsCount': ?vnetPrivatePortsCount,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'webSocketsEnabled': ?webSocketsEnabled,
      'websiteTimeZone': ?websiteTimeZone,
      'windowsFxVersion': ?windowsFxVersion,
      'xManagedServiceIdentityId': ?xManagedServiceIdentityId,
    };
  }

  factory SiteConfigResponse.fromMap(Map<String, dynamic> map) {
    return SiteConfigResponse(
      acrUseManagedIdentityCreds: map['acrUseManagedIdentityCreds'] == null ? null : map['acrUseManagedIdentityCreds'] as bool,
      acrUserManagedIdentityID: map['acrUserManagedIdentityID'] == null ? null : map['acrUserManagedIdentityID'] as String,
      alwaysOn: map['alwaysOn'] == null ? null : map['alwaysOn'] as bool,
      apiDefinition: map['apiDefinition'] == null ? null : ApiDefinitionInfoResponse.fromMap((map['apiDefinition'] as Map).cast<String, dynamic>()),
      apiManagementConfig: map['apiManagementConfig'] == null ? null : ApiManagementConfigResponse.fromMap((map['apiManagementConfig'] as Map).cast<String, dynamic>()),
      appCommandLine: map['appCommandLine'] == null ? null : map['appCommandLine'] as String,
      appSettings: map['appSettings'] == null ? null : pulumi.Input.decodeList<NameValuePairResponse>(map['appSettings'], (value) => NameValuePairResponse.fromMap((value as Map).cast<String, dynamic>())),
      autoHealEnabled: map['autoHealEnabled'] == null ? null : map['autoHealEnabled'] as bool,
      autoHealRules: map['autoHealRules'] == null ? null : AutoHealRulesResponse.fromMap((map['autoHealRules'] as Map).cast<String, dynamic>()),
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : map['autoSwapSlotName'] as String,
      azureStorageAccounts: map['azureStorageAccounts'] == null ? null : pulumi.Input.decodeMapValues<AzureStorageInfoValueResponse>(map['azureStorageAccounts'], (value) => AzureStorageInfoValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Input.decodeList<ConnStringInfoResponse>(map['connectionStrings'], (value) => ConnStringInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      cors: map['cors'] == null ? null : CorsSettingsResponse.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      defaultDocuments: map['defaultDocuments'] == null ? null : (map['defaultDocuments'] as List).cast<String>(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : map['detailedErrorLoggingEnabled'] as bool,
      documentRoot: map['documentRoot'] == null ? null : map['documentRoot'] as String,
      elasticWebAppScaleLimit: map['elasticWebAppScaleLimit'] == null ? null : map['elasticWebAppScaleLimit'] as int,
      experiments: map['experiments'] == null ? null : ExperimentsResponse.fromMap((map['experiments'] as Map).cast<String, dynamic>()),
      ftpsState: map['ftpsState'] == null ? null : map['ftpsState'] as String,
      functionAppScaleLimit: map['functionAppScaleLimit'] == null ? null : map['functionAppScaleLimit'] as int,
      functionsRuntimeScaleMonitoringEnabled: map['functionsRuntimeScaleMonitoringEnabled'] == null ? null : map['functionsRuntimeScaleMonitoringEnabled'] as bool,
      handlerMappings: map['handlerMappings'] == null ? null : pulumi.Input.decodeList<HandlerMappingResponse>(map['handlerMappings'], (value) => HandlerMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      healthCheckPath: map['healthCheckPath'] == null ? null : map['healthCheckPath'] as String,
      http20Enabled: map['http20Enabled'] == null ? null : map['http20Enabled'] as bool,
      httpLoggingEnabled: map['httpLoggingEnabled'] == null ? null : map['httpLoggingEnabled'] as bool,
      ipSecurityRestrictions: map['ipSecurityRestrictions'] == null ? null : pulumi.Input.decodeList<IpSecurityRestrictionResponse>(map['ipSecurityRestrictions'], (value) => IpSecurityRestrictionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipSecurityRestrictionsDefaultAction: map['ipSecurityRestrictionsDefaultAction'] == null ? null : map['ipSecurityRestrictionsDefaultAction'] as String,
      javaContainer: map['javaContainer'] == null ? null : map['javaContainer'] as String,
      javaContainerVersion: map['javaContainerVersion'] == null ? null : map['javaContainerVersion'] as String,
      javaVersion: map['javaVersion'] == null ? null : map['javaVersion'] as String,
      keyVaultReferenceIdentity: map['keyVaultReferenceIdentity'] == null ? null : map['keyVaultReferenceIdentity'] as String,
      limits: map['limits'] == null ? null : SiteLimitsResponse.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      linuxFxVersion: map['linuxFxVersion'] == null ? null : map['linuxFxVersion'] as String,
      loadBalancing: map['loadBalancing'] == null ? null : map['loadBalancing'] as String,
      localMySqlEnabled: map['localMySqlEnabled'] == null ? null : map['localMySqlEnabled'] as bool,
      logsDirectorySizeLimit: map['logsDirectorySizeLimit'] == null ? null : map['logsDirectorySizeLimit'] as int,
      machineKey: SiteMachineKeyResponse.fromMap((map['machineKey'] as Map).cast<String, dynamic>()),
      managedPipelineMode: map['managedPipelineMode'] == null ? null : map['managedPipelineMode'] as String,
      managedServiceIdentityId: map['managedServiceIdentityId'] == null ? null : map['managedServiceIdentityId'] as int,
      minTlsCipherSuite: map['minTlsCipherSuite'] == null ? null : map['minTlsCipherSuite'] as String,
      minTlsVersion: map['minTlsVersion'] == null ? null : map['minTlsVersion'] as String,
      minimumElasticInstanceCount: map['minimumElasticInstanceCount'] == null ? null : map['minimumElasticInstanceCount'] as int,
      netFrameworkVersion: map['netFrameworkVersion'] == null ? null : map['netFrameworkVersion'] as String,
      nodeVersion: map['nodeVersion'] == null ? null : map['nodeVersion'] as String,
      numberOfWorkers: map['numberOfWorkers'] == null ? null : map['numberOfWorkers'] as int,
      phpVersion: map['phpVersion'] == null ? null : map['phpVersion'] as String,
      powerShellVersion: map['powerShellVersion'] == null ? null : map['powerShellVersion'] as String,
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : map['preWarmedInstanceCount'] as int,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      publishingUsername: map['publishingUsername'] == null ? null : map['publishingUsername'] as String,
      push: map['push'] == null ? null : PushSettingsResponse.fromMap((map['push'] as Map).cast<String, dynamic>()),
      pythonVersion: map['pythonVersion'] == null ? null : map['pythonVersion'] as String,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : map['remoteDebuggingVersion'] as String,
      requestTracingEnabled: map['requestTracingEnabled'] == null ? null : map['requestTracingEnabled'] as bool,
      requestTracingExpirationTime: map['requestTracingExpirationTime'] == null ? null : map['requestTracingExpirationTime'] as String,
      scmIpSecurityRestrictions: map['scmIpSecurityRestrictions'] == null ? null : pulumi.Input.decodeList<IpSecurityRestrictionResponse>(map['scmIpSecurityRestrictions'], (value) => IpSecurityRestrictionResponse.fromMap((value as Map).cast<String, dynamic>())),
      scmIpSecurityRestrictionsDefaultAction: map['scmIpSecurityRestrictionsDefaultAction'] == null ? null : map['scmIpSecurityRestrictionsDefaultAction'] as String,
      scmIpSecurityRestrictionsUseMain: map['scmIpSecurityRestrictionsUseMain'] == null ? null : map['scmIpSecurityRestrictionsUseMain'] as bool,
      scmMinTlsVersion: map['scmMinTlsVersion'] == null ? null : map['scmMinTlsVersion'] as String,
      scmType: map['scmType'] == null ? null : map['scmType'] as String,
      tracingOptions: map['tracingOptions'] == null ? null : map['tracingOptions'] as String,
      use32BitWorkerProcess: map['use32BitWorkerProcess'] == null ? null : map['use32BitWorkerProcess'] as bool,
      virtualApplications: map['virtualApplications'] == null ? null : pulumi.Input.decodeList<VirtualApplicationResponse>(map['virtualApplications'], (value) => VirtualApplicationResponse.fromMap((value as Map).cast<String, dynamic>())),
      vnetName: map['vnetName'] == null ? null : map['vnetName'] as String,
      vnetPrivatePortsCount: map['vnetPrivatePortsCount'] == null ? null : map['vnetPrivatePortsCount'] as int,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : map['vnetRouteAllEnabled'] as bool,
      webSocketsEnabled: map['webSocketsEnabled'] == null ? null : map['webSocketsEnabled'] as bool,
      websiteTimeZone: map['websiteTimeZone'] == null ? null : map['websiteTimeZone'] as String,
      windowsFxVersion: map['windowsFxVersion'] == null ? null : map['windowsFxVersion'] as String,
      xManagedServiceIdentityId: map['xManagedServiceIdentityId'] == null ? null : map['xManagedServiceIdentityId'] as int,
    );
  }
}

