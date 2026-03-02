// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_slot_site_config_app_service_logs.dart';
import 'windows_function_app_slot_site_config_application_stack.dart';
import 'windows_function_app_slot_site_config_cors.dart';
import 'windows_function_app_slot_site_config_ip_restriction.dart';
import 'windows_function_app_slot_site_config_scm_ip_restriction.dart';

class WindowsFunctionAppSlotSiteConfig {
  /// If this Windows Web App is Always On enabled. Defaults to `false`.
  final pulumi.Input<bool>? alwaysOn;
  /// The URL of the API definition that describes this Windows Function App.
  final pulumi.Input<String>? apiDefinitionUrl;
  /// The ID of the API Management API for this Windows Function App.
  final pulumi.Input<String>? apiManagementApiId;
  /// The program and any arguments used to launch this app via the command line. (Example `node myapp.js`).
  final pulumi.Input<String>? appCommandLine;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final pulumi.Input<int>? appScaleLimit;
  /// an `app_service_logs` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotSiteConfigAppServiceLogs>? appServiceLogs;
  /// The Connection String for linking the Windows Function App to Application Insights.
  final pulumi.Input<String>? applicationInsightsConnectionString;
  /// The Instrumentation Key for connecting the Windows Function App to Application Insights.
  final pulumi.Input<String>? applicationInsightsKey;
  /// an `application_stack` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotSiteConfigApplicationStack>? applicationStack;
  /// The name of the slot to automatically swap with when this slot is successfully deployed.
  final pulumi.Input<String>? autoSwapSlotName;
  /// a `cors` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotSiteConfigCors>? cors;
  /// Specifies a list of Default Documents for the Windows Web App.
  final pulumi.Input<List<String>>? defaultDocuments;
  /// Is detailed error logging enabled
  final pulumi.Input<bool>? detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Windows Function App. Only affects apps on Elastic Premium plans.
  final pulumi.Input<int>? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  final pulumi.Input<String>? ftpsState;
  /// The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `0`. Only valid in conjunction with `health_check_path`.
  final pulumi.Input<int>? healthCheckEvictionTimeInMin;
  /// The path to be checked for this function app health.
  final pulumi.Input<String>? healthCheckPath;
  /// Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  final pulumi.Input<bool>? http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? ipRestrictionDefaultAction;
  /// an `ip_restriction` block as detailed below.
  final pulumi.Input<List<WindowsFunctionAppSlotSiteConfigIpRestriction>>? ipRestrictions;
  /// The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final pulumi.Input<String>? loadBalancingMode;
  /// The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  final pulumi.Input<String>? managedPipelineMode;
  /// The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan.
  final pulumi.Input<int>? preWarmedInstanceCount;
  /// Should Remote Debugging be enabled. Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final pulumi.Input<String>? remoteDebuggingVersion;
  /// Should Scale Monitoring of the Functions Runtime be enabled?
  ///
  /// > **Note:** Functions runtime scale monitoring can only be enabled for Elastic Premium Function Apps or Workflow Standard Logic Apps and requires a minimum prewarmed instance count of 1.
  final pulumi.Input<bool>? runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? scmIpRestrictionDefaultAction;
  /// a `scm_ip_restriction` block as detailed below.
  final pulumi.Input<List<WindowsFunctionAppSlotSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? scmMinimumTlsVersion;
  /// The SCM Type in use by the Windows Function App.
  final pulumi.Input<String>? scmType;
  /// Should the Windows Function App `ip_restriction` configuration be used for the SCM also.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the Windows Web App use a 32-bit worker. Defaults to `true`.
  final pulumi.Input<bool>? use32BitWorker;
  /// Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled. Defaults to `false`.
  final pulumi.Input<bool>? websocketsEnabled;
  /// The Windows FX Version string.
  final pulumi.Input<String>? windowsFxVersion;
  /// The number of Workers for this Windows Function App.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [WindowsFunctionAppSlotSiteConfig].
  /// [alwaysOn] If this Windows Web App is Always On enabled. Defaults to `false`.
  /// [apiDefinitionUrl] The URL of the API definition that describes this Windows Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Windows Function App.
  /// [appCommandLine] The program and any arguments used to launch this app via the command line. (Example `node myapp.js`).
  /// [appScaleLimit] The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [appServiceLogs] an `app_service_logs` block as detailed below.
  /// [applicationInsightsConnectionString] The Connection String for linking the Windows Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key for connecting the Windows Function App to Application Insights.
  /// [applicationStack] an `application_stack` block as detailed below.
  /// [autoSwapSlotName] The name of the slot to automatically swap with when this slot is successfully deployed.
  /// [cors] a `cors` block as detailed below.
  /// [defaultDocuments] Specifies a list of Default Documents for the Windows Web App.
  /// [detailedErrorLoggingEnabled] Is detailed error logging enabled
  /// [elasticInstanceMinimum] The number of minimum instances for this Windows Function App. Only affects apps on Elastic Premium plans.
  /// [ftpsState] State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `0`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to be checked for this function app health.
  /// [http2Enabled] Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] an `ip_restriction` block as detailed below.
  /// [loadBalancingMode] The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [managedPipelineMode] The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled. Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [runtimeScaleMonitoringEnabled] Should Scale Monitoring of the Functions Runtime be enabled?
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] a `scm_ip_restriction` block as detailed below.
  /// [scmMinimumTlsVersion] Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] The SCM Type in use by the Windows Function App.
  /// [scmUseMainIpRestriction] Should the Windows Function App `ip_restriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Windows Web App use a 32-bit worker. Defaults to `true`.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled. Defaults to `false`.
  /// [windowsFxVersion] The Windows FX Version string.
  /// [workerCount] The number of Workers for this Windows Function App.
  WindowsFunctionAppSlotSiteConfig({
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
    this.loadBalancingMode,
    this.managedPipelineMode,
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
    this.windowsFxVersion,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': ?alwaysOn,
      'apiDefinitionUrl': ?apiDefinitionUrl,
      'apiManagementApiId': ?apiManagementApiId,
      'appCommandLine': ?appCommandLine,
      'appScaleLimit': ?appScaleLimit,
      'appServiceLogs': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotSiteConfigAppServiceLogs, Map<String, dynamic>>(appServiceLogs, (value) => value.toMap()),
      'applicationInsightsConnectionString': ?applicationInsightsConnectionString,
      'applicationInsightsKey': ?applicationInsightsKey,
      'applicationStack': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotSiteConfigApplicationStack, Map<String, dynamic>>(applicationStack, (value) => value.toMap()),
      'autoSwapSlotName': ?autoSwapSlotName,
      'cors': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'ftpsState': ?ftpsState,
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppSlotSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<WindowsFunctionAppSlotSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingMode': ?loadBalancingMode,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsVersion': ?minimumTlsVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppSlotSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<WindowsFunctionAppSlotSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinimumTlsVersion': ?scmMinimumTlsVersion,
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorker': ?use32BitWorker,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'windowsFxVersion': ?windowsFxVersion,
      'workerCount': ?workerCount,
    };
  }

  factory WindowsFunctionAppSlotSiteConfig.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotSiteConfig(
      alwaysOn: map['alwaysOn'] == null ? null : (map['alwaysOn']! as bool).input(),
      apiDefinitionUrl: map['apiDefinitionUrl'] == null ? null : (map['apiDefinitionUrl']! as String).input(),
      apiManagementApiId: map['apiManagementApiId'] == null ? null : (map['apiManagementApiId']! as String).input(),
      appCommandLine: map['appCommandLine'] == null ? null : (map['appCommandLine']! as String).input(),
      appScaleLimit: map['appScaleLimit'] == null ? null : (map['appScaleLimit']! as int).input(),
      appServiceLogs: map['appServiceLogs'] == null ? null : (WindowsFunctionAppSlotSiteConfigAppServiceLogs.fromMap((map['appServiceLogs']! as Map).cast<String, dynamic>())).input(),
      applicationInsightsConnectionString: map['applicationInsightsConnectionString'] == null ? null : (map['applicationInsightsConnectionString']! as String).input(),
      applicationInsightsKey: map['applicationInsightsKey'] == null ? null : (map['applicationInsightsKey']! as String).input(),
      applicationStack: map['applicationStack'] == null ? null : (WindowsFunctionAppSlotSiteConfigApplicationStack.fromMap((map['applicationStack']! as Map).cast<String, dynamic>())).input(),
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : (map['autoSwapSlotName']! as String).input(),
      cors: map['cors'] == null ? null : (WindowsFunctionAppSlotSiteConfigCors.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      defaultDocuments: map['defaultDocuments'] == null ? null : ((map['defaultDocuments']! as List).cast<String>()).input(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : (map['detailedErrorLoggingEnabled']! as bool).input(),
      elasticInstanceMinimum: map['elasticInstanceMinimum'] == null ? null : (map['elasticInstanceMinimum']! as int).input(),
      ftpsState: map['ftpsState'] == null ? null : (map['ftpsState']! as String).input(),
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] == null ? null : (map['healthCheckEvictionTimeInMin']! as int).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath']! as String).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled']! as bool).input(),
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] == null ? null : (map['ipRestrictionDefaultAction']! as String).input(),
      ipRestrictions: map['ipRestrictions'] == null ? null : (pulumi.Input.decodeList<WindowsFunctionAppSlotSiteConfigIpRestriction>(map['ipRestrictions']!, (value) => WindowsFunctionAppSlotSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : (map['loadBalancingMode']! as String).input(),
      managedPipelineMode: map['managedPipelineMode'] == null ? null : (map['managedPipelineMode']! as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion']! as String).input(),
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : (map['preWarmedInstanceCount']! as int).input(),
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : (map['remoteDebuggingEnabled']! as bool).input(),
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : (map['remoteDebuggingVersion']! as String).input(),
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] == null ? null : (map['runtimeScaleMonitoringEnabled']! as bool).input(),
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] == null ? null : (map['scmIpRestrictionDefaultAction']! as String).input(),
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : (pulumi.Input.decodeList<WindowsFunctionAppSlotSiteConfigScmIpRestriction>(map['scmIpRestrictions']!, (value) => WindowsFunctionAppSlotSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmMinimumTlsVersion: map['scmMinimumTlsVersion'] == null ? null : (map['scmMinimumTlsVersion']! as String).input(),
      scmType: map['scmType'] == null ? null : (map['scmType']! as String).input(),
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : (map['scmUseMainIpRestriction']! as bool).input(),
      use32BitWorker: map['use32BitWorker'] == null ? null : (map['use32BitWorker']! as bool).input(),
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : (map['vnetRouteAllEnabled']! as bool).input(),
      websocketsEnabled: map['websocketsEnabled'] == null ? null : (map['websocketsEnabled']! as bool).input(),
      windowsFxVersion: map['windowsFxVersion'] == null ? null : (map['windowsFxVersion']! as String).input(),
      workerCount: map['workerCount'] == null ? null : (map['workerCount']! as int).input(),
    );
  }
}

