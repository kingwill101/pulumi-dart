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
  final pulumi.Input<bool>? acrUseManagedIdentityCreds;

  /// If using user managed identity, the user managed identity ClientId
  final pulumi.Input<String>? acrUserManagedIdentityID;

  /// &lt;code&gt;true&lt;/code&gt; if Always On is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? alwaysOn;

  /// Information about the formal API definition for the app.
  final pulumi.Input<ApiDefinitionInfoResponse>? apiDefinition;

  /// Azure API management settings linked to the app.
  final pulumi.Input<ApiManagementConfigResponse>? apiManagementConfig;

  /// App command line to launch.
  final pulumi.Input<String>? appCommandLine;

  /// Application settings.
  final pulumi.Input<List<NameValuePairResponse>>? appSettings;

  /// &lt;code&gt;true&lt;/code&gt; if Auto Heal is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? autoHealEnabled;

  /// Auto Heal rules.
  final pulumi.Input<AutoHealRulesResponse>? autoHealRules;

  /// Auto-swap slot name.
  final pulumi.Input<String>? autoSwapSlotName;

  /// List of Azure Storage Accounts.
  final pulumi.Input<Map<String, AzureStorageInfoValueResponse>>?
  azureStorageAccounts;

  /// Connection strings.
  final pulumi.Input<List<ConnStringInfoResponse>>? connectionStrings;

  /// Cross-Origin Resource Sharing (CORS) settings.
  final pulumi.Input<CorsSettingsResponse>? cors;

  /// Default documents.
  final pulumi.Input<List<String>>? defaultDocuments;

  /// &lt;code&gt;true&lt;/code&gt; if detailed error logging is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? detailedErrorLoggingEnabled;

  /// Document root.
  final pulumi.Input<String>? documentRoot;

  /// Maximum number of workers that a site can scale out to.
  /// This setting only applies to apps in plans where ElasticScaleEnabled is &lt;code&gt;true&lt;/code&gt;
  final pulumi.Input<int>? elasticWebAppScaleLimit;

  /// This is work around for polymorphic types.
  final pulumi.Input<ExperimentsResponse>? experiments;

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
  final pulumi.Input<List<HandlerMappingResponse>>? handlerMappings;

  /// Health check path
  final pulumi.Input<String>? healthCheckPath;

  /// Http20Enabled: configures a web site to allow clients to connect over http2.0
  final pulumi.Input<bool>? http20Enabled;

  /// &lt;code&gt;true&lt;/code&gt; if HTTP logging is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? httpLoggingEnabled;

  /// IP security restrictions for main.
  final pulumi.Input<List<IpSecurityRestrictionResponse>>?
  ipSecurityRestrictions;

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
  final pulumi.Input<SiteLimitsResponse>? limits;

  /// Linux App Framework and version
  final pulumi.Input<String>? linuxFxVersion;

  /// Site load balancing.
  final pulumi.Input<String>? loadBalancing;

  /// &lt;code&gt;true&lt;/code&gt; to enable local MySQL; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? localMySqlEnabled;

  /// HTTP logs directory size limit.
  final pulumi.Input<int>? logsDirectorySizeLimit;

  /// Site MachineKey.
  final pulumi.Input<SiteMachineKeyResponse> machineKey;

  /// Managed pipeline mode.
  final pulumi.Input<String>? managedPipelineMode;

  /// Managed Service Identity Id
  final pulumi.Input<int>? managedServiceIdentityId;

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
  final pulumi.Input<PushSettingsResponse>? push;

  /// Version of Python.
  final pulumi.Input<String>? pythonVersion;

  /// &lt;code&gt;true&lt;/code&gt; if remote debugging is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? remoteDebuggingEnabled;

  /// Remote debugging version.
  final pulumi.Input<String>? remoteDebuggingVersion;

  /// &lt;code&gt;true&lt;/code&gt; if request tracing is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? requestTracingEnabled;

  /// Request tracing expiration time.
  final pulumi.Input<String>? requestTracingExpirationTime;

  /// IP security restrictions for scm.
  final pulumi.Input<List<IpSecurityRestrictionResponse>>?
  scmIpSecurityRestrictions;

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

  /// &lt;code&gt;true&lt;/code&gt; to use 32-bit worker process; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? use32BitWorkerProcess;

  /// Virtual applications.
  final pulumi.Input<List<VirtualApplicationResponse>>? virtualApplications;

  /// Virtual Network name.
  final pulumi.Input<String>? vnetName;

  /// The number of private ports assigned to this app. These will be assigned dynamically on runtime.
  final pulumi.Input<int>? vnetPrivatePortsCount;

  /// Virtual Network Route All enabled. This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  final pulumi.Input<bool>? vnetRouteAllEnabled;

  /// &lt;code&gt;true&lt;/code&gt; if WebSocket is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? webSocketsEnabled;

  /// Sets the time zone a site uses for generating timestamps. Compatible with Linux and Windows App Service. Setting the WEBSITE_TIME_ZONE app setting takes precedence over this config. For Linux, expects tz database values https://www.iana.org/time-zones (for a quick reference see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). For Windows, expects one of the time zones listed under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones
  final pulumi.Input<String>? websiteTimeZone;

  /// Xenon App Framework and version
  final pulumi.Input<String>? windowsFxVersion;

  /// Explicit Managed Service Identity Id
  final pulumi.Input<int>? xManagedServiceIdentityId;

  /// Creates a new [SiteConfigResponse].
  /// [acrUseManagedIdentityCreds] Flag to use Managed Identity Creds for ACR pull
  /// [acrUserManagedIdentityID] If using user managed identity, the user managed identity ClientId
  /// [alwaysOn] &lt;code&gt;true&lt;/code&gt; if Always On is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [apiDefinition] Information about the formal API definition for the app.
  /// [apiManagementConfig] Azure API management settings linked to the app.
  /// [appCommandLine] App command line to launch.
  /// [appSettings] Application settings.
  /// [autoHealEnabled] &lt;code&gt;true&lt;/code&gt; if Auto Heal is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [autoHealRules] Auto Heal rules.
  /// [autoSwapSlotName] Auto-swap slot name.
  /// [azureStorageAccounts] List of Azure Storage Accounts.
  /// [connectionStrings] Connection strings.
  /// [cors] Cross-Origin Resource Sharing (CORS) settings.
  /// [defaultDocuments] Default documents.
  /// [detailedErrorLoggingEnabled] &lt;code&gt;true&lt;/code&gt; if detailed error logging is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [documentRoot] Document root.
  /// [elasticWebAppScaleLimit] Maximum number of workers that a site can scale out to.
  /// [experiments] This is work around for polymorphic types.
  /// [ftpsState] State of FTP / FTPS service
  /// [functionAppScaleLimit] Maximum number of workers that a site can scale out to.
  /// [functionsRuntimeScaleMonitoringEnabled] Gets or sets a value indicating whether functions runtime scale monitoring is enabled. When enabled,
  /// [handlerMappings] Handler mappings.
  /// [healthCheckPath] Health check path
  /// [http20Enabled] Http20Enabled: configures a web site to allow clients to connect over http2.0
  /// [httpLoggingEnabled] &lt;code&gt;true&lt;/code&gt; if HTTP logging is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [ipSecurityRestrictions] IP security restrictions for main.
  /// [ipSecurityRestrictionsDefaultAction] Default action for main access restriction if no rules are matched.
  /// [javaContainer] Java container.
  /// [javaContainerVersion] Java container version.
  /// [javaVersion] Java version.
  /// [keyVaultReferenceIdentity] Identity to use for Key Vault Reference authentication.
  /// [limits] Site limits.
  /// [linuxFxVersion] Linux App Framework and version
  /// [loadBalancing] Site load balancing.
  /// [localMySqlEnabled] &lt;code&gt;true&lt;/code&gt; to enable local MySQL; otherwise, &lt;code&gt;false&lt;/code&gt;.
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
  /// [remoteDebuggingEnabled] &lt;code&gt;true&lt;/code&gt; if remote debugging is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [remoteDebuggingVersion] Remote debugging version.
  /// [requestTracingEnabled] &lt;code&gt;true&lt;/code&gt; if request tracing is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [requestTracingExpirationTime] Request tracing expiration time.
  /// [scmIpSecurityRestrictions] IP security restrictions for scm.
  /// [scmIpSecurityRestrictionsDefaultAction] Default action for scm access restriction if no rules are matched.
  /// [scmIpSecurityRestrictionsUseMain] IP security restrictions for scm to use main.
  /// [scmMinTlsVersion] ScmMinTlsVersion: configures the minimum version of TLS required for SSL requests for SCM site
  /// [scmType] SCM type.
  /// [tracingOptions] Tracing options.
  /// [use32BitWorkerProcess] &lt;code&gt;true&lt;/code&gt; to use 32-bit worker process; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [virtualApplications] Virtual applications.
  /// [vnetName] Virtual Network name.
  /// [vnetPrivatePortsCount] The number of private ports assigned to this app. These will be assigned dynamically on runtime.
  /// [vnetRouteAllEnabled] Virtual Network Route All enabled. This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  /// [webSocketsEnabled] &lt;code&gt;true&lt;/code&gt; if WebSocket is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
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
      'apiDefinition':
          ?pulumi.Input.mapOptionalInputValue<
            ApiDefinitionInfoResponse,
            Map<String, dynamic>
          >(apiDefinition, (value) => value.toMap()),
      'apiManagementConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ApiManagementConfigResponse,
            Map<String, dynamic>
          >(apiManagementConfig, (value) => value.toMap()),
      'appCommandLine': ?appCommandLine,
      'appSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<NameValuePairResponse>,
            List<Map<String, dynamic>>
          >(
            appSettings,
            (value) =>
                pulumi.Input.encodeList<
                  NameValuePairResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'autoHealEnabled': ?autoHealEnabled,
      'autoHealRules':
          ?pulumi.Input.mapOptionalInputValue<
            AutoHealRulesResponse,
            Map<String, dynamic>
          >(autoHealRules, (value) => value.toMap()),
      'autoSwapSlotName': ?autoSwapSlotName,
      'azureStorageAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, AzureStorageInfoValueResponse>,
            Map<String, Map<String, dynamic>>
          >(
            azureStorageAccounts,
            (value) =>
                pulumi.Input.encodeMapValues<
                  AzureStorageInfoValueResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'connectionStrings':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnStringInfoResponse>,
            List<Map<String, dynamic>>
          >(
            connectionStrings,
            (value) =>
                pulumi.Input.encodeList<
                  ConnStringInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cors':
          ?pulumi.Input.mapOptionalInputValue<
            CorsSettingsResponse,
            Map<String, dynamic>
          >(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'documentRoot': ?documentRoot,
      'elasticWebAppScaleLimit': ?elasticWebAppScaleLimit,
      'experiments':
          ?pulumi.Input.mapOptionalInputValue<
            ExperimentsResponse,
            Map<String, dynamic>
          >(experiments, (value) => value.toMap()),
      'ftpsState': ?ftpsState,
      'functionAppScaleLimit': ?functionAppScaleLimit,
      'functionsRuntimeScaleMonitoringEnabled':
          ?functionsRuntimeScaleMonitoringEnabled,
      'handlerMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<HandlerMappingResponse>,
            List<Map<String, dynamic>>
          >(
            handlerMappings,
            (value) =>
                pulumi.Input.encodeList<
                  HandlerMappingResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'healthCheckPath': ?healthCheckPath,
      'http20Enabled': ?http20Enabled,
      'httpLoggingEnabled': ?httpLoggingEnabled,
      'ipSecurityRestrictions':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpSecurityRestrictionResponse>,
            List<Map<String, dynamic>>
          >(
            ipSecurityRestrictions,
            (value) =>
                pulumi.Input.encodeList<
                  IpSecurityRestrictionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipSecurityRestrictionsDefaultAction':
          ?ipSecurityRestrictionsDefaultAction,
      'javaContainer': ?javaContainer,
      'javaContainerVersion': ?javaContainerVersion,
      'javaVersion': ?javaVersion,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'limits':
          ?pulumi.Input.mapOptionalInputValue<
            SiteLimitsResponse,
            Map<String, dynamic>
          >(limits, (value) => value.toMap()),
      'linuxFxVersion': ?linuxFxVersion,
      'loadBalancing': ?loadBalancing,
      'localMySqlEnabled': ?localMySqlEnabled,
      'logsDirectorySizeLimit': ?logsDirectorySizeLimit,
      'machineKey':
          pulumi.Input.mapInputValue<
            SiteMachineKeyResponse,
            Map<String, dynamic>
          >(machineKey, (value) => value.toMap()),
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
      'push':
          ?pulumi.Input.mapOptionalInputValue<
            PushSettingsResponse,
            Map<String, dynamic>
          >(push, (value) => value.toMap()),
      'pythonVersion': ?pythonVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'requestTracingEnabled': ?requestTracingEnabled,
      'requestTracingExpirationTime': ?requestTracingExpirationTime,
      'scmIpSecurityRestrictions':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpSecurityRestrictionResponse>,
            List<Map<String, dynamic>>
          >(
            scmIpSecurityRestrictions,
            (value) =>
                pulumi.Input.encodeList<
                  IpSecurityRestrictionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scmIpSecurityRestrictionsDefaultAction':
          ?scmIpSecurityRestrictionsDefaultAction,
      'scmIpSecurityRestrictionsUseMain': ?scmIpSecurityRestrictionsUseMain,
      'scmMinTlsVersion': ?scmMinTlsVersion,
      'scmType': ?scmType,
      'tracingOptions': ?tracingOptions,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'virtualApplications':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualApplicationResponse>,
            List<Map<String, dynamic>>
          >(
            virtualApplications,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualApplicationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      acrUseManagedIdentityCreds: (() {
        final guardedValue = map['acrUseManagedIdentityCreds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      acrUserManagedIdentityID: (() {
        final guardedValue = map['acrUserManagedIdentityID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alwaysOn: (() {
        final guardedValue = map['alwaysOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      apiDefinition: (() {
        final guardedValue = map['apiDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiDefinitionInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      apiManagementConfig: (() {
        final guardedValue = map['apiManagementConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiManagementConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      appCommandLine: (() {
        final guardedValue = map['appCommandLine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appSettings: (() {
        final guardedValue = map['appSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NameValuePairResponse>(
            guardedValue,
            (value) => NameValuePairResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      autoHealEnabled: (() {
        final guardedValue = map['autoHealEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoHealRules: (() {
        final guardedValue = map['autoHealRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoHealRulesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoSwapSlotName: (() {
        final guardedValue = map['autoSwapSlotName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureStorageAccounts: (() {
        final guardedValue = map['azureStorageAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<AzureStorageInfoValueResponse>(
            guardedValue,
            (value) => AzureStorageInfoValueResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      connectionStrings: (() {
        final guardedValue = map['connectionStrings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnStringInfoResponse>(
            guardedValue,
            (value) => ConnStringInfoResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      cors: (() {
        final guardedValue = map['cors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CorsSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultDocuments: (() {
        final guardedValue = map['defaultDocuments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      detailedErrorLoggingEnabled: (() {
        final guardedValue = map['detailedErrorLoggingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      documentRoot: (() {
        final guardedValue = map['documentRoot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elasticWebAppScaleLimit: (() {
        final guardedValue = map['elasticWebAppScaleLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      experiments: (() {
        final guardedValue = map['experiments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExperimentsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ftpsState: (() {
        final guardedValue = map['ftpsState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionAppScaleLimit: (() {
        final guardedValue = map['functionAppScaleLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      functionsRuntimeScaleMonitoringEnabled: (() {
        final guardedValue = map['functionsRuntimeScaleMonitoringEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      handlerMappings: (() {
        final guardedValue = map['handlerMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HandlerMappingResponse>(
            guardedValue,
            (value) => HandlerMappingResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      healthCheckPath: (() {
        final guardedValue = map['healthCheckPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      http20Enabled: (() {
        final guardedValue = map['http20Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpLoggingEnabled: (() {
        final guardedValue = map['httpLoggingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipSecurityRestrictions: (() {
        final guardedValue = map['ipSecurityRestrictions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpSecurityRestrictionResponse>(
            guardedValue,
            (value) => IpSecurityRestrictionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ipSecurityRestrictionsDefaultAction: (() {
        final guardedValue = map['ipSecurityRestrictionsDefaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      javaContainer: (() {
        final guardedValue = map['javaContainer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      javaContainerVersion: (() {
        final guardedValue = map['javaContainerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      javaVersion: (() {
        final guardedValue = map['javaVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultReferenceIdentity: (() {
        final guardedValue = map['keyVaultReferenceIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      limits: (() {
        final guardedValue = map['limits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SiteLimitsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      linuxFxVersion: (() {
        final guardedValue = map['linuxFxVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancing: (() {
        final guardedValue = map['loadBalancing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localMySqlEnabled: (() {
        final guardedValue = map['localMySqlEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logsDirectorySizeLimit: (() {
        final guardedValue = map['logsDirectorySizeLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      machineKey: pulumi.Input.fromValue(
        SiteMachineKeyResponse.fromMap(
          (map['machineKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      managedPipelineMode: (() {
        final guardedValue = map['managedPipelineMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedServiceIdentityId: (() {
        final guardedValue = map['managedServiceIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minTlsCipherSuite: (() {
        final guardedValue = map['minTlsCipherSuite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minTlsVersion: (() {
        final guardedValue = map['minTlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minimumElasticInstanceCount: (() {
        final guardedValue = map['minimumElasticInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      netFrameworkVersion: (() {
        final guardedValue = map['netFrameworkVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeVersion: (() {
        final guardedValue = map['nodeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numberOfWorkers: (() {
        final guardedValue = map['numberOfWorkers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      phpVersion: (() {
        final guardedValue = map['phpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      powerShellVersion: (() {
        final guardedValue = map['powerShellVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preWarmedInstanceCount: (() {
        final guardedValue = map['preWarmedInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publishingUsername: (() {
        final guardedValue = map['publishingUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      push: (() {
        final guardedValue = map['push'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PushSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pythonVersion: (() {
        final guardedValue = map['pythonVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteDebuggingEnabled: (() {
        final guardedValue = map['remoteDebuggingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      remoteDebuggingVersion: (() {
        final guardedValue = map['remoteDebuggingVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestTracingEnabled: (() {
        final guardedValue = map['requestTracingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requestTracingExpirationTime: (() {
        final guardedValue = map['requestTracingExpirationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scmIpSecurityRestrictions: (() {
        final guardedValue = map['scmIpSecurityRestrictions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpSecurityRestrictionResponse>(
            guardedValue,
            (value) => IpSecurityRestrictionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scmIpSecurityRestrictionsDefaultAction: (() {
        final guardedValue = map['scmIpSecurityRestrictionsDefaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scmIpSecurityRestrictionsUseMain: (() {
        final guardedValue = map['scmIpSecurityRestrictionsUseMain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      scmMinTlsVersion: (() {
        final guardedValue = map['scmMinTlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scmType: (() {
        final guardedValue = map['scmType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tracingOptions: (() {
        final guardedValue = map['tracingOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      use32BitWorkerProcess: (() {
        final guardedValue = map['use32BitWorkerProcess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      virtualApplications: (() {
        final guardedValue = map['virtualApplications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualApplicationResponse>(
            guardedValue,
            (value) => VirtualApplicationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vnetName: (() {
        final guardedValue = map['vnetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vnetPrivatePortsCount: (() {
        final guardedValue = map['vnetPrivatePortsCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vnetRouteAllEnabled: (() {
        final guardedValue = map['vnetRouteAllEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      webSocketsEnabled: (() {
        final guardedValue = map['webSocketsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      websiteTimeZone: (() {
        final guardedValue = map['websiteTimeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      windowsFxVersion: (() {
        final guardedValue = map['windowsFxVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      xManagedServiceIdentityId: (() {
        final guardedValue = map['xManagedServiceIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
