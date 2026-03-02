// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_definition_info.dart';
import 'api_management_config.dart';
import 'auto_heal_rules.dart';
import 'azure_storage_info_value.dart';
import 'conn_string_info.dart';
import 'cors_settings.dart';
import 'experiments.dart';
import 'handler_mapping.dart';
import 'ip_security_restriction.dart';
import 'managed_pipeline_mode.dart';
import 'name_value_pair.dart';
import 'push_settings.dart';
import 'site_limits.dart';
import 'site_load_balancing.dart';
import 'virtual_application.dart';

/// Configuration of an App Service app.
class SiteConfig {
  /// Flag to use Managed Identity Creds for ACR pull
  final pulumi.Input<bool>? acrUseManagedIdentityCreds;
  /// If using user managed identity, the user managed identity ClientId
  final pulumi.Input<String>? acrUserManagedIdentityID;
  /// <code>true</code> if Always On is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? alwaysOn;
  /// Information about the formal API definition for the app.
  final pulumi.Input<ApiDefinitionInfo>? apiDefinition;
  /// Azure API management settings linked to the app.
  final pulumi.Input<ApiManagementConfig>? apiManagementConfig;
  /// App command line to launch.
  final pulumi.Input<String>? appCommandLine;
  /// Application settings.
  final pulumi.Input<List<NameValuePair>>? appSettings;
  /// <code>true</code> if Auto Heal is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? autoHealEnabled;
  /// Auto Heal rules.
  final pulumi.Input<AutoHealRules>? autoHealRules;
  /// Auto-swap slot name.
  final pulumi.Input<String>? autoSwapSlotName;
  /// List of Azure Storage Accounts.
  final pulumi.Input<Map<String, AzureStorageInfoValue>>? azureStorageAccounts;
  /// Connection strings.
  final pulumi.Input<List<ConnStringInfo>>? connectionStrings;
  /// Cross-Origin Resource Sharing (CORS) settings.
  final pulumi.Input<CorsSettings>? cors;
  /// Default documents.
  final pulumi.Input<List<String>>? defaultDocuments;
  /// <code>true</code> if detailed error logging is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? detailedErrorLoggingEnabled;
  /// Document root.
  final pulumi.Input<String>? documentRoot;
  /// Maximum number of workers that a site can scale out to.
  /// This setting only applies to apps in plans where ElasticScaleEnabled is <code>true</code>
  final pulumi.Input<int>? elasticWebAppScaleLimit;
  /// This is work around for polymorphic types.
  final pulumi.Input<Experiments>? experiments;
  /// State of FTP / FTPS service
  final pulumi.Input<String>? ftpsState;
  /// Maximum number of workers that a site can scale out to.
  /// This setting only applies to the Consumption and Elastic Premium Plans
  final pulumi.Input<int>? functionAppScaleLimit;
  /// Gets or sets a value indicating whether functions runtime scale monitoring is enabled. When enabled,
  /// the ScaleController will not monitor event sources directly, but will instead call to the
  /// runtime to get scale status.
  final pulumi.Input<bool>? functionsRuntimeScaleMonitoringEnabled;
  /// Handler mappings.
  final pulumi.Input<List<HandlerMapping>>? handlerMappings;
  /// Health check path
  final pulumi.Input<String>? healthCheckPath;
  /// Http20Enabled: configures a web site to allow clients to connect over http2.0
  final pulumi.Input<bool>? http20Enabled;
  /// <code>true</code> if HTTP logging is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? httpLoggingEnabled;
  /// IP security restrictions for main.
  final pulumi.Input<List<IpSecurityRestriction>>? ipSecurityRestrictions;
  /// Default action for main access restriction if no rules are matched.
  final pulumi.Input<String>? ipSecurityRestrictionsDefaultAction;
  /// Java container.
  final pulumi.Input<String>? javaContainer;
  /// Java container version.
  final pulumi.Input<String>? javaContainerVersion;
  /// Java version.
  final pulumi.Input<String>? javaVersion;
  /// Identity to use for Key Vault Reference authentication.
  final pulumi.Input<String>? keyVaultReferenceIdentity;
  /// Site limits.
  final pulumi.Input<SiteLimits>? limits;
  /// Linux App Framework and version
  final pulumi.Input<String>? linuxFxVersion;
  /// Site load balancing.
  final pulumi.Input<SiteLoadBalancing>? loadBalancing;
  /// <code>true</code> to enable local MySQL; otherwise, <code>false</code>.
  final pulumi.Input<bool>? localMySqlEnabled;
  /// HTTP logs directory size limit.
  final pulumi.Input<int>? logsDirectorySizeLimit;
  /// Managed pipeline mode.
  final pulumi.Input<ManagedPipelineMode>? managedPipelineMode;
  /// Managed Service Identity Id
  final pulumi.Input<int>? managedServiceIdentityId;
  /// Application metadata. This property cannot be retrieved, since it may contain secrets.
  final pulumi.Input<List<NameValuePair>>? metadata;
  /// The minimum strength TLS cipher suite allowed for an application
  final pulumi.Input<String>? minTlsCipherSuite;
  /// MinTlsVersion: configures the minimum version of TLS required for SSL requests
  final pulumi.Input<String>? minTlsVersion;
  /// Number of minimum instance count for a site
  /// This setting only applies to the Elastic Plans
  final pulumi.Input<int>? minimumElasticInstanceCount;
  /// .NET Framework version.
  final pulumi.Input<String>? netFrameworkVersion;
  /// Version of Node.js.
  final pulumi.Input<String>? nodeVersion;
  /// Number of workers.
  final pulumi.Input<int>? numberOfWorkers;
  /// Version of PHP.
  final pulumi.Input<String>? phpVersion;
  /// Version of PowerShell.
  final pulumi.Input<String>? powerShellVersion;
  /// Number of preWarmed instances.
  /// This setting only applies to the Consumption and Elastic Plans
  final pulumi.Input<int>? preWarmedInstanceCount;
  /// Property to allow or block all public traffic.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Publishing user name.
  final pulumi.Input<String>? publishingUsername;
  /// Push endpoint settings.
  final pulumi.Input<PushSettings>? push;
  /// Version of Python.
  final pulumi.Input<String>? pythonVersion;
  /// <code>true</code> if remote debugging is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// Remote debugging version.
  final pulumi.Input<String>? remoteDebuggingVersion;
  /// <code>true</code> if request tracing is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? requestTracingEnabled;
  /// Request tracing expiration time.
  final pulumi.Input<String>? requestTracingExpirationTime;
  /// IP security restrictions for scm.
  final pulumi.Input<List<IpSecurityRestriction>>? scmIpSecurityRestrictions;
  /// Default action for scm access restriction if no rules are matched.
  final pulumi.Input<String>? scmIpSecurityRestrictionsDefaultAction;
  /// IP security restrictions for scm to use main.
  final pulumi.Input<bool>? scmIpSecurityRestrictionsUseMain;
  /// ScmMinTlsVersion: configures the minimum version of TLS required for SSL requests for SCM site
  final pulumi.Input<String>? scmMinTlsVersion;
  /// SCM type.
  final pulumi.Input<String>? scmType;
  /// Tracing options.
  final pulumi.Input<String>? tracingOptions;
  /// <code>true</code> to use 32-bit worker process; otherwise, <code>false</code>.
  final pulumi.Input<bool>? use32BitWorkerProcess;
  /// Virtual applications.
  final pulumi.Input<List<VirtualApplication>>? virtualApplications;
  /// Virtual Network name.
  final pulumi.Input<String>? vnetName;
  /// The number of private ports assigned to this app. These will be assigned dynamically on runtime.
  final pulumi.Input<int>? vnetPrivatePortsCount;
  /// Virtual Network Route All enabled. This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// <code>true</code> if WebSocket is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? webSocketsEnabled;
  /// Sets the time zone a site uses for generating timestamps. Compatible with Linux and Windows App Service. Setting the WEBSITE_TIME_ZONE app setting takes precedence over this config. For Linux, expects tz database values https://www.iana.org/time-zones (for a quick reference see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). For Windows, expects one of the time zones listed under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones
  final pulumi.Input<String>? websiteTimeZone;
  /// Xenon App Framework and version
  final pulumi.Input<String>? windowsFxVersion;
  /// Explicit Managed Service Identity Id
  final pulumi.Input<int>? xManagedServiceIdentityId;

  /// Creates a new [SiteConfig].
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
  /// [managedPipelineMode] Managed pipeline mode.
  /// [managedServiceIdentityId] Managed Service Identity Id
  /// [metadata] Application metadata. This property cannot be retrieved, since it may contain secrets.
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
  SiteConfig({
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
    this.managedPipelineMode,
    this.managedServiceIdentityId,
    this.metadata,
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
      'apiDefinition': ?pulumi.Input.mapOptionalInputValue<ApiDefinitionInfo, Map<String, dynamic>>(apiDefinition, (value) => value.toMap()),
      'apiManagementConfig': ?pulumi.Input.mapOptionalInputValue<ApiManagementConfig, Map<String, dynamic>>(apiManagementConfig, (value) => value.toMap()),
      'appCommandLine': ?appCommandLine,
      'appSettings': ?pulumi.Input.mapOptionalInputValue<List<NameValuePair>, List<Map<String, dynamic>>>(appSettings, (value) => pulumi.Input.encodeList<NameValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoHealEnabled': ?autoHealEnabled,
      'autoHealRules': ?pulumi.Input.mapOptionalInputValue<AutoHealRules, Map<String, dynamic>>(autoHealRules, (value) => value.toMap()),
      'autoSwapSlotName': ?autoSwapSlotName,
      'azureStorageAccounts': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureStorageInfoValue>, Map<String, Map<String, dynamic>>>(azureStorageAccounts, (value) => pulumi.Input.encodeMapValues<AzureStorageInfoValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<ConnStringInfo>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<ConnStringInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cors': ?pulumi.Input.mapOptionalInputValue<CorsSettings, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'documentRoot': ?documentRoot,
      'elasticWebAppScaleLimit': ?elasticWebAppScaleLimit,
      'experiments': ?pulumi.Input.mapOptionalInputValue<Experiments, Map<String, dynamic>>(experiments, (value) => value.toMap()),
      'ftpsState': ?ftpsState,
      'functionAppScaleLimit': ?functionAppScaleLimit,
      'functionsRuntimeScaleMonitoringEnabled': ?functionsRuntimeScaleMonitoringEnabled,
      'handlerMappings': ?pulumi.Input.mapOptionalInputValue<List<HandlerMapping>, List<Map<String, dynamic>>>(handlerMappings, (value) => pulumi.Input.encodeList<HandlerMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthCheckPath': ?healthCheckPath,
      'http20Enabled': ?http20Enabled,
      'httpLoggingEnabled': ?httpLoggingEnabled,
      'ipSecurityRestrictions': ?pulumi.Input.mapOptionalInputValue<List<IpSecurityRestriction>, List<Map<String, dynamic>>>(ipSecurityRestrictions, (value) => pulumi.Input.encodeList<IpSecurityRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipSecurityRestrictionsDefaultAction': ?ipSecurityRestrictionsDefaultAction,
      'javaContainer': ?javaContainer,
      'javaContainerVersion': ?javaContainerVersion,
      'javaVersion': ?javaVersion,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'limits': ?pulumi.Input.mapOptionalInputValue<SiteLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'linuxFxVersion': ?linuxFxVersion,
      'loadBalancing': ?pulumi.Input.mapOptionalInputValue<SiteLoadBalancing, String>(loadBalancing, (value) => value.value),
      'localMySqlEnabled': ?localMySqlEnabled,
      'logsDirectorySizeLimit': ?logsDirectorySizeLimit,
      'managedPipelineMode': ?pulumi.Input.mapOptionalInputValue<ManagedPipelineMode, String>(managedPipelineMode, (value) => value.value),
      'managedServiceIdentityId': ?managedServiceIdentityId,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<NameValuePair>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<NameValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'push': ?pulumi.Input.mapOptionalInputValue<PushSettings, Map<String, dynamic>>(push, (value) => value.toMap()),
      'pythonVersion': ?pythonVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'requestTracingEnabled': ?requestTracingEnabled,
      'requestTracingExpirationTime': ?requestTracingExpirationTime,
      'scmIpSecurityRestrictions': ?pulumi.Input.mapOptionalInputValue<List<IpSecurityRestriction>, List<Map<String, dynamic>>>(scmIpSecurityRestrictions, (value) => pulumi.Input.encodeList<IpSecurityRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmIpSecurityRestrictionsDefaultAction': ?scmIpSecurityRestrictionsDefaultAction,
      'scmIpSecurityRestrictionsUseMain': ?scmIpSecurityRestrictionsUseMain,
      'scmMinTlsVersion': ?scmMinTlsVersion,
      'scmType': ?scmType,
      'tracingOptions': ?tracingOptions,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'virtualApplications': ?pulumi.Input.mapOptionalInputValue<List<VirtualApplication>, List<Map<String, dynamic>>>(virtualApplications, (value) => pulumi.Input.encodeList<VirtualApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vnetName': ?vnetName,
      'vnetPrivatePortsCount': ?vnetPrivatePortsCount,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'webSocketsEnabled': ?webSocketsEnabled,
      'websiteTimeZone': ?websiteTimeZone,
      'windowsFxVersion': ?windowsFxVersion,
      'xManagedServiceIdentityId': ?xManagedServiceIdentityId,
    };
  }

  factory SiteConfig.fromMap(Map<String, dynamic> map) {
    return SiteConfig(
      acrUseManagedIdentityCreds: map['acrUseManagedIdentityCreds'] == null ? null : (map['acrUseManagedIdentityCreds']! as bool).input(),
      acrUserManagedIdentityID: map['acrUserManagedIdentityID'] == null ? null : (map['acrUserManagedIdentityID']! as String).input(),
      alwaysOn: map['alwaysOn'] == null ? null : (map['alwaysOn']! as bool).input(),
      apiDefinition: map['apiDefinition'] == null ? null : (ApiDefinitionInfo.fromMap((map['apiDefinition']! as Map).cast<String, dynamic>())).input(),
      apiManagementConfig: map['apiManagementConfig'] == null ? null : (ApiManagementConfig.fromMap((map['apiManagementConfig']! as Map).cast<String, dynamic>())).input(),
      appCommandLine: map['appCommandLine'] == null ? null : (map['appCommandLine']! as String).input(),
      appSettings: map['appSettings'] == null ? null : (pulumi.Input.decodeList<NameValuePair>(map['appSettings']!, (value) => NameValuePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoHealEnabled: map['autoHealEnabled'] == null ? null : (map['autoHealEnabled']! as bool).input(),
      autoHealRules: map['autoHealRules'] == null ? null : (AutoHealRules.fromMap((map['autoHealRules']! as Map).cast<String, dynamic>())).input(),
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : (map['autoSwapSlotName']! as String).input(),
      azureStorageAccounts: map['azureStorageAccounts'] == null ? null : (pulumi.Input.decodeMapValues<AzureStorageInfoValue>(map['azureStorageAccounts']!, (value) => AzureStorageInfoValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<ConnStringInfo>(map['connectionStrings']!, (value) => ConnStringInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cors: map['cors'] == null ? null : (CorsSettings.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      defaultDocuments: map['defaultDocuments'] == null ? null : ((map['defaultDocuments']! as List).cast<String>()).input(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : (map['detailedErrorLoggingEnabled']! as bool).input(),
      documentRoot: map['documentRoot'] == null ? null : (map['documentRoot']! as String).input(),
      elasticWebAppScaleLimit: map['elasticWebAppScaleLimit'] == null ? null : (map['elasticWebAppScaleLimit']! as int).input(),
      experiments: map['experiments'] == null ? null : (Experiments.fromMap((map['experiments']! as Map).cast<String, dynamic>())).input(),
      ftpsState: map['ftpsState'] == null ? null : (map['ftpsState']! as String).input(),
      functionAppScaleLimit: map['functionAppScaleLimit'] == null ? null : (map['functionAppScaleLimit']! as int).input(),
      functionsRuntimeScaleMonitoringEnabled: map['functionsRuntimeScaleMonitoringEnabled'] == null ? null : (map['functionsRuntimeScaleMonitoringEnabled']! as bool).input(),
      handlerMappings: map['handlerMappings'] == null ? null : (pulumi.Input.decodeList<HandlerMapping>(map['handlerMappings']!, (value) => HandlerMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath']! as String).input(),
      http20Enabled: map['http20Enabled'] == null ? null : (map['http20Enabled']! as bool).input(),
      httpLoggingEnabled: map['httpLoggingEnabled'] == null ? null : (map['httpLoggingEnabled']! as bool).input(),
      ipSecurityRestrictions: map['ipSecurityRestrictions'] == null ? null : (pulumi.Input.decodeList<IpSecurityRestriction>(map['ipSecurityRestrictions']!, (value) => IpSecurityRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipSecurityRestrictionsDefaultAction: map['ipSecurityRestrictionsDefaultAction'] == null ? null : (map['ipSecurityRestrictionsDefaultAction']! as String).input(),
      javaContainer: map['javaContainer'] == null ? null : (map['javaContainer']! as String).input(),
      javaContainerVersion: map['javaContainerVersion'] == null ? null : (map['javaContainerVersion']! as String).input(),
      javaVersion: map['javaVersion'] == null ? null : (map['javaVersion']! as String).input(),
      keyVaultReferenceIdentity: map['keyVaultReferenceIdentity'] == null ? null : (map['keyVaultReferenceIdentity']! as String).input(),
      limits: map['limits'] == null ? null : (SiteLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())).input(),
      linuxFxVersion: map['linuxFxVersion'] == null ? null : (map['linuxFxVersion']! as String).input(),
      loadBalancing: map['loadBalancing'] == null ? null : (SiteLoadBalancing.fromValue(map['loadBalancing']! as String)).input(),
      localMySqlEnabled: map['localMySqlEnabled'] == null ? null : (map['localMySqlEnabled']! as bool).input(),
      logsDirectorySizeLimit: map['logsDirectorySizeLimit'] == null ? null : (map['logsDirectorySizeLimit']! as int).input(),
      managedPipelineMode: map['managedPipelineMode'] == null ? null : (ManagedPipelineMode.fromValue(map['managedPipelineMode']! as String)).input(),
      managedServiceIdentityId: map['managedServiceIdentityId'] == null ? null : (map['managedServiceIdentityId']! as int).input(),
      metadata: map['metadata'] == null ? null : (pulumi.Input.decodeList<NameValuePair>(map['metadata']!, (value) => NameValuePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      minTlsCipherSuite: map['minTlsCipherSuite'] == null ? null : (map['minTlsCipherSuite']! as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion']! as String).input(),
      minimumElasticInstanceCount: map['minimumElasticInstanceCount'] == null ? null : (map['minimumElasticInstanceCount']! as int).input(),
      netFrameworkVersion: map['netFrameworkVersion'] == null ? null : (map['netFrameworkVersion']! as String).input(),
      nodeVersion: map['nodeVersion'] == null ? null : (map['nodeVersion']! as String).input(),
      numberOfWorkers: map['numberOfWorkers'] == null ? null : (map['numberOfWorkers']! as int).input(),
      phpVersion: map['phpVersion'] == null ? null : (map['phpVersion']! as String).input(),
      powerShellVersion: map['powerShellVersion'] == null ? null : (map['powerShellVersion']! as String).input(),
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : (map['preWarmedInstanceCount']! as int).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      publishingUsername: map['publishingUsername'] == null ? null : (map['publishingUsername']! as String).input(),
      push: map['push'] == null ? null : (PushSettings.fromMap((map['push']! as Map).cast<String, dynamic>())).input(),
      pythonVersion: map['pythonVersion'] == null ? null : (map['pythonVersion']! as String).input(),
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : (map['remoteDebuggingEnabled']! as bool).input(),
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : (map['remoteDebuggingVersion']! as String).input(),
      requestTracingEnabled: map['requestTracingEnabled'] == null ? null : (map['requestTracingEnabled']! as bool).input(),
      requestTracingExpirationTime: map['requestTracingExpirationTime'] == null ? null : (map['requestTracingExpirationTime']! as String).input(),
      scmIpSecurityRestrictions: map['scmIpSecurityRestrictions'] == null ? null : (pulumi.Input.decodeList<IpSecurityRestriction>(map['scmIpSecurityRestrictions']!, (value) => IpSecurityRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmIpSecurityRestrictionsDefaultAction: map['scmIpSecurityRestrictionsDefaultAction'] == null ? null : (map['scmIpSecurityRestrictionsDefaultAction']! as String).input(),
      scmIpSecurityRestrictionsUseMain: map['scmIpSecurityRestrictionsUseMain'] == null ? null : (map['scmIpSecurityRestrictionsUseMain']! as bool).input(),
      scmMinTlsVersion: map['scmMinTlsVersion'] == null ? null : (map['scmMinTlsVersion']! as String).input(),
      scmType: map['scmType'] == null ? null : (map['scmType']! as String).input(),
      tracingOptions: map['tracingOptions'] == null ? null : (map['tracingOptions']! as String).input(),
      use32BitWorkerProcess: map['use32BitWorkerProcess'] == null ? null : (map['use32BitWorkerProcess']! as bool).input(),
      virtualApplications: map['virtualApplications'] == null ? null : (pulumi.Input.decodeList<VirtualApplication>(map['virtualApplications']!, (value) => VirtualApplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vnetName: map['vnetName'] == null ? null : (map['vnetName']! as String).input(),
      vnetPrivatePortsCount: map['vnetPrivatePortsCount'] == null ? null : (map['vnetPrivatePortsCount']! as int).input(),
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : (map['vnetRouteAllEnabled']! as bool).input(),
      webSocketsEnabled: map['webSocketsEnabled'] == null ? null : (map['webSocketsEnabled']! as bool).input(),
      websiteTimeZone: map['websiteTimeZone'] == null ? null : (map['websiteTimeZone']! as String).input(),
      windowsFxVersion: map['windowsFxVersion'] == null ? null : (map['windowsFxVersion']! as String).input(),
      xManagedServiceIdentityId: map['xManagedServiceIdentityId'] == null ? null : (map['xManagedServiceIdentityId']! as int).input(),
    );
  }
}

