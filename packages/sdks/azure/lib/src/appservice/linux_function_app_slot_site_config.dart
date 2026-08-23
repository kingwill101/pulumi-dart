// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_site_config_app_service_logs.dart';
import 'linux_function_app_slot_site_config_application_stack.dart';
import 'linux_function_app_slot_site_config_cors.dart';
import 'linux_function_app_slot_site_config_ip_restriction.dart';
import 'linux_function_app_slot_site_config_scm_ip_restriction.dart';

class LinuxFunctionAppSlotSiteConfig {
  /// If this Linux Web App is Always On enabled. Defaults to `false`.
  final pulumi.Input<bool>? alwaysOn;
  /// The URL of the API definition that describes this Linux Function App.
  final pulumi.Input<String>? apiDefinitionUrl;
  /// The ID of the API Management API for this Linux Function App.
  final pulumi.Input<String>? apiManagementApiId;
  /// The program and any arguments used to launch this app via the command line. (Example `node myapp.js`).
  final pulumi.Input<String>? appCommandLine;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final pulumi.Input<int>? appScaleLimit;
  /// an `appServiceLogs` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotSiteConfigAppServiceLogs>? appServiceLogs;
  /// The Connection String for linking the Linux Function App to Application Insights.
  final pulumi.Input<String>? applicationInsightsConnectionString;
  /// The Instrumentation Key for connecting the Linux Function App to Application Insights.
  final pulumi.Input<String>? applicationInsightsKey;
  /// an `applicationStack` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotSiteConfigApplicationStack>? applicationStack;
  /// The name of the slot to automatically swap with when this slot is successfully deployed.
  final pulumi.Input<String>? autoSwapSlotName;
  /// The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  final pulumi.Input<String>? containerRegistryManagedIdentityClientId;
  /// Should connections for Azure Container Registry use Managed Identity.
  final pulumi.Input<bool>? containerRegistryUseManagedIdentity;
  /// a `cors` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotSiteConfigCors>? cors;
  /// Specifies a list of Default Documents for the Linux Web App.
  final pulumi.Input<List<String>>? defaultDocuments;
  /// Is detailed error logging enabled
  final pulumi.Input<bool>? detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans.
  final pulumi.Input<int>? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  final pulumi.Input<String>? ftpsState;
  /// The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `0`. Only valid in conjunction with `healthCheckPath`.
  final pulumi.Input<int>? healthCheckEvictionTimeInMin;
  /// The path to be checked for this function app health.
  final pulumi.Input<String>? healthCheckPath;
  /// Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  final pulumi.Input<bool>? http2Enabled;
  /// The Default action for traffic that does not match any `ipRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? ipRestrictionDefaultAction;
  /// an `ipRestriction` block as detailed below.
  final pulumi.Input<List<LinuxFunctionAppSlotSiteConfigIpRestriction>>? ipRestrictions;
  /// The Linux FX Version
  final pulumi.Input<String>? linuxFxVersion;
  /// The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final pulumi.Input<String>? loadBalancingMode;
  /// The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  final pulumi.Input<String>? managedPipelineMode;
  /// The configures the minimum cipher suite of TLS required for SSL requests. Possible values include: `TLS_AES_128_GCM_SHA256`,`TLS_AES_256_GCM_SHA384"`,`TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"`, `TLS_RSA_WITH_AES_128_CBC_SHA"`,`TLS_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_RSA_WITH_AES_256_CBC_SHA"`,`TLS_RSA_WITH_AES_256_CBC_SHA256"`,`TLS_RSA_WITH_AES_256_GCM_SHA384"`.
  final pulumi.Input<String>? minimumTlsCipherSuite;
  /// The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan.
  final pulumi.Input<int>? preWarmedInstanceCount;
  /// Should Remote Debugging be enabled. Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final pulumi.Input<String>? remoteDebuggingVersion;
  /// Should Functions Runtime Scale Monitoring be enabled.
  ///
  /// &gt; **Note:** Functions runtime scale monitoring can only be enabled for Elastic Premium Function Apps or Workflow Standard Logic Apps and requires a minimum prewarmed instance count of 1.
  final pulumi.Input<bool>? runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scmIpRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? scmIpRestrictionDefaultAction;
  /// a `scmIpRestriction` block as detailed below.
  final pulumi.Input<List<LinuxFunctionAppSlotSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? scmMinimumTlsVersion;
  /// The SCM Type in use by the Linux Function App.
  final pulumi.Input<String>? scmType;
  /// Should the Linux Function App `ipRestriction` configuration be used for the SCM also.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the Linux Web App use a 32-bit worker.
  final pulumi.Input<bool>? use32BitWorker;
  /// Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled. Defaults to `false`.
  final pulumi.Input<bool>? websocketsEnabled;
  /// The number of Workers for this Linux Function App.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [LinuxFunctionAppSlotSiteConfig].
  /// [alwaysOn] If this Linux Web App is Always On enabled. Defaults to `false`.
  /// [apiDefinitionUrl] The URL of the API definition that describes this Linux Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Linux Function App.
  /// [appCommandLine] The program and any arguments used to launch this app via the command line. (Example `node myapp.js`).
  /// [appScaleLimit] The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [appServiceLogs] an `appServiceLogs` block as detailed below.
  /// [applicationInsightsConnectionString] The Connection String for linking the Linux Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key for connecting the Linux Function App to Application Insights.
  /// [applicationStack] an `applicationStack` block as detailed below.
  /// [autoSwapSlotName] The name of the slot to automatically swap with when this slot is successfully deployed.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Should connections for Azure Container Registry use Managed Identity.
  /// [cors] a `cors` block as detailed below.
  /// [defaultDocuments] Specifies a list of Default Documents for the Linux Web App.
  /// [detailedErrorLoggingEnabled] Is detailed error logging enabled
  /// [elasticInstanceMinimum] The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans.
  /// [ftpsState] State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `0`. Only valid in conjunction with `healthCheckPath`.
  /// [healthCheckPath] The path to be checked for this function app health.
  /// [http2Enabled] Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ipRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] an `ipRestriction` block as detailed below.
  /// [linuxFxVersion] The Linux FX Version
  /// [loadBalancingMode] The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [managedPipelineMode] The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  /// [minimumTlsCipherSuite] The configures the minimum cipher suite of TLS required for SSL requests. Possible values include: `TLS_AES_128_GCM_SHA256`,`TLS_AES_256_GCM_SHA384"`,`TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"`, `TLS_RSA_WITH_AES_128_CBC_SHA"`,`TLS_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_RSA_WITH_AES_256_CBC_SHA"`,`TLS_RSA_WITH_AES_256_CBC_SHA256"`,`TLS_RSA_WITH_AES_256_GCM_SHA384"`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled. Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [runtimeScaleMonitoringEnabled] Should Functions Runtime Scale Monitoring be enabled.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scmIpRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] a `scmIpRestriction` block as detailed below.
  /// [scmMinimumTlsVersion] Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] The SCM Type in use by the Linux Function App.
  /// [scmUseMainIpRestriction] Should the Linux Function App `ipRestriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Linux Web App use a 32-bit worker.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled. Defaults to `false`.
  /// [workerCount] The number of Workers for this Linux Function App.
  const LinuxFunctionAppSlotSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.appScaleLimit,
    this.appServiceLogs,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
    this.applicationStack,
    this.autoSwapSlotName,
    this.containerRegistryManagedIdentityClientId,
    this.containerRegistryUseManagedIdentity,
    this.cors,
    this.defaultDocuments,
    this.detailedErrorLoggingEnabled,
    this.elasticInstanceMinimum,
    this.ftpsState,
    this.healthCheckEvictionTimeInMin,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictionDefaultAction,
    this.ipRestrictions,
    this.linuxFxVersion,
    this.loadBalancingMode,
    this.managedPipelineMode,
    this.minimumTlsCipherSuite,
    this.minimumTlsVersion,
    this.preWarmedInstanceCount,
    this.remoteDebuggingEnabled,
    this.remoteDebuggingVersion,
    this.runtimeScaleMonitoringEnabled,
    this.scmIpRestrictionDefaultAction,
    this.scmIpRestrictions,
    this.scmMinimumTlsVersion,
    this.scmType,
    this.scmUseMainIpRestriction,
    this.use32BitWorker,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': ?alwaysOn,
      'apiDefinitionUrl': ?apiDefinitionUrl,
      'apiManagementApiId': ?apiManagementApiId,
      'appCommandLine': ?appCommandLine,
      'appScaleLimit': ?appScaleLimit,
      'appServiceLogs': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotSiteConfigAppServiceLogs, Map<String, dynamic>>(appServiceLogs, (value) => value.toMap()),
      'applicationInsightsConnectionString': ?applicationInsightsConnectionString,
      'applicationInsightsKey': ?applicationInsightsKey,
      'applicationStack': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotSiteConfigApplicationStack, Map<String, dynamic>>(applicationStack, (value) => value.toMap()),
      'autoSwapSlotName': ?autoSwapSlotName,
      'containerRegistryManagedIdentityClientId': ?containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': ?containerRegistryUseManagedIdentity,
      'cors': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'ftpsState': ?ftpsState,
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSlotSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<LinuxFunctionAppSlotSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linuxFxVersion': ?linuxFxVersion,
      'loadBalancingMode': ?loadBalancingMode,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsCipherSuite': ?minimumTlsCipherSuite,
      'minimumTlsVersion': ?minimumTlsVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSlotSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<LinuxFunctionAppSlotSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinimumTlsVersion': ?scmMinimumTlsVersion,
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorker': ?use32BitWorker,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'workerCount': ?workerCount,
    };
  }

  factory LinuxFunctionAppSlotSiteConfig.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotSiteConfig(
      alwaysOn: (() { final guardedValue = map['alwaysOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      apiDefinitionUrl: (() { final guardedValue = map['apiDefinitionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiManagementApiId: (() { final guardedValue = map['apiManagementApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appCommandLine: (() { final guardedValue = map['appCommandLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appScaleLimit: (() { final guardedValue = map['appScaleLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      appServiceLogs: (() { final guardedValue = map['appServiceLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotSiteConfigAppServiceLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applicationInsightsConnectionString: (() { final guardedValue = map['applicationInsightsConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationInsightsKey: (() { final guardedValue = map['applicationInsightsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationStack: (() { final guardedValue = map['applicationStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotSiteConfigApplicationStack.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoSwapSlotName: (() { final guardedValue = map['autoSwapSlotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryManagedIdentityClientId: (() { final guardedValue = map['containerRegistryManagedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryUseManagedIdentity: (() { final guardedValue = map['containerRegistryUseManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotSiteConfigCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultDocuments: (() { final guardedValue = map['defaultDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      detailedErrorLoggingEnabled: (() { final guardedValue = map['detailedErrorLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      elasticInstanceMinimum: (() { final guardedValue = map['elasticInstanceMinimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ftpsState: (() { final guardedValue = map['ftpsState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckEvictionTimeInMin: (() { final guardedValue = map['healthCheckEvictionTimeInMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipRestrictionDefaultAction: (() { final guardedValue = map['ipRestrictionDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRestrictions: (() { final guardedValue = map['ipRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxFunctionAppSlotSiteConfigIpRestriction>(guardedValue, (value) => LinuxFunctionAppSlotSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linuxFxVersion: (() { final guardedValue = map['linuxFxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingMode: (() { final guardedValue = map['loadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedPipelineMode: (() { final guardedValue = map['managedPipelineMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsCipherSuite: (() { final guardedValue = map['minimumTlsCipherSuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preWarmedInstanceCount: (() { final guardedValue = map['preWarmedInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      remoteDebuggingEnabled: (() { final guardedValue = map['remoteDebuggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteDebuggingVersion: (() { final guardedValue = map['remoteDebuggingVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeScaleMonitoringEnabled: (() { final guardedValue = map['runtimeScaleMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scmIpRestrictionDefaultAction: (() { final guardedValue = map['scmIpRestrictionDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmIpRestrictions: (() { final guardedValue = map['scmIpRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxFunctionAppSlotSiteConfigScmIpRestriction>(guardedValue, (value) => LinuxFunctionAppSlotSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scmMinimumTlsVersion: (() { final guardedValue = map['scmMinimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmType: (() { final guardedValue = map['scmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmUseMainIpRestriction: (() { final guardedValue = map['scmUseMainIpRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      use32BitWorker: (() { final guardedValue = map['use32BitWorker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vnetRouteAllEnabled: (() { final guardedValue = map['vnetRouteAllEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      websocketsEnabled: (() { final guardedValue = map['websocketsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
