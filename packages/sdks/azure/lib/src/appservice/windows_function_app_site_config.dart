// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_site_config_app_service_logs.dart';
import 'windows_function_app_site_config_application_stack.dart';
import 'windows_function_app_site_config_cors.dart';
import 'windows_function_app_site_config_ip_restriction.dart';
import 'windows_function_app_site_config_scm_ip_restriction.dart';

class WindowsFunctionAppSiteConfig {
  /// If this Windows Function App is Always On enabled. Defaults to `false`.
  ///
  /// > **Note:** when running in a Consumption or Premium Plan, `always_on` feature should be turned off. Please turn it off before upgrading the service plan from standard to premium.
  final bool? alwaysOn;
  /// The URL of the API definition that describes this Windows Function App.
  final String? apiDefinitionUrl;
  /// The ID of the API Management API for this Windows Function App.
  final String? apiManagementApiId;
  /// The App command line to launch.
  final String? appCommandLine;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final int? appScaleLimit;
  /// An `app_service_logs` block as defined above.
  final WindowsFunctionAppSiteConfigAppServiceLogs? appServiceLogs;
  /// The Connection String for linking the Windows Function App to Application Insights.
  final String? applicationInsightsConnectionString;
  /// The Instrumentation Key for connecting the Windows Function App to Application Insights.
  final String? applicationInsightsKey;
  /// An `application_stack` block as defined above.
  ///
  /// > **Note:** If this is set, there must not be an application setting `FUNCTIONS_WORKER_RUNTIME`.
  final WindowsFunctionAppSiteConfigApplicationStack? applicationStack;
  /// A `cors` block as defined above.
  final WindowsFunctionAppSiteConfigCors? cors;
  /// Specifies a list of Default Documents for the Windows Function App.
  final List<String>? defaultDocuments;
  /// Is detailed error logging enabled
  final bool? detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Windows Function App. Only affects apps on Elastic Premium plans.
  final int? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this Windows Function App. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  final String? ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  final int? healthCheckEvictionTimeInMin;
  /// The path to be checked for this Windows Function App health.
  final String? healthCheckPath;
  /// Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  final bool? http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final String? ipRestrictionDefaultAction;
  /// One or more `ip_restriction` blocks as defined above.
  final List<WindowsFunctionAppSiteConfigIpRestriction>? ipRestrictions;
  /// The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final String? loadBalancingMode;
  /// Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  final String? managedPipelineMode;
  /// Configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final String? minimumTlsVersion;
  /// The number of pre-warmed instances for this Windows Function App. Only affects apps on an Elastic Premium plan.
  final int? preWarmedInstanceCount;
  /// Should Remote Debugging be enabled. Defaults to `false`.
  final bool? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final String? remoteDebuggingVersion;
  /// Should Scale Monitoring of the Functions Runtime be enabled?
  ///
  /// > **Note:** Functions runtime scale monitoring can only be enabled for Elastic Premium Function Apps or Workflow Standard Logic Apps and requires a minimum prewarmed instance count of 1.
  final bool? runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final String? scmIpRestrictionDefaultAction;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final List<WindowsFunctionAppSiteConfigScmIpRestriction>? scmIpRestrictions;
  /// Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final String? scmMinimumTlsVersion;
  /// The SCM Type in use by the Windows Function App.
  final String? scmType;
  /// Should the Windows Function App `ip_restriction` configuration be used for the SCM also.
  final bool? scmUseMainIpRestriction;
  /// Should the Windows Function App use a 32-bit worker process. Defaults to `true`.
  final bool? use32BitWorker;
  /// Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final bool? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled. Defaults to `false`.
  final bool? websocketsEnabled;
  /// The Windows FX Version string.
  final String? windowsFxVersion;
  /// The number of Workers for this Windows Function App.
  final int? workerCount;

  /// Creates a new [WindowsFunctionAppSiteConfig].
  /// [alwaysOn] If this Windows Function App is Always On enabled. Defaults to `false`.
  /// [apiDefinitionUrl] The URL of the API definition that describes this Windows Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Windows Function App.
  /// [appCommandLine] The App command line to launch.
  /// [appScaleLimit] The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [appServiceLogs] An `app_service_logs` block as defined above.
  /// [applicationInsightsConnectionString] The Connection String for linking the Windows Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key for connecting the Windows Function App to Application Insights.
  /// [applicationStack] An `application_stack` block as defined above.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] Specifies a list of Default Documents for the Windows Function App.
  /// [detailedErrorLoggingEnabled] Is detailed error logging enabled
  /// [elasticInstanceMinimum] The number of minimum instances for this Windows Function App. Only affects apps on Elastic Premium plans.
  /// [ftpsState] State of FTP / FTPS service for this Windows Function App. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to be checked for this Windows Function App health.
  /// [http2Enabled] Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [loadBalancingMode] The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [managedPipelineMode] Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  /// [minimumTlsVersion] Configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this Windows Function App. Only affects apps on an Elastic Premium plan.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled. Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [runtimeScaleMonitoringEnabled] Should Scale Monitoring of the Functions Runtime be enabled?
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmMinimumTlsVersion] Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] The SCM Type in use by the Windows Function App.
  /// [scmUseMainIpRestriction] Should the Windows Function App `ip_restriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Windows Function App use a 32-bit worker process. Defaults to `true`.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled. Defaults to `false`.
  /// [windowsFxVersion] The Windows FX Version string.
  /// [workerCount] The number of Workers for this Windows Function App.
  WindowsFunctionAppSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.appScaleLimit,
    this.appServiceLogs,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
    this.applicationStack,
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
      'appServiceLogs': ?appServiceLogs == null ? null : appServiceLogs!.toMap(),
      'applicationInsightsConnectionString': ?applicationInsightsConnectionString,
      'applicationInsightsKey': ?applicationInsightsKey,
      'applicationStack': ?applicationStack == null ? null : applicationStack!.toMap(),
      'cors': ?cors == null ? null : cors!.toMap(),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'ftpsState': ?ftpsState,
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?ipRestrictions == null ? null : pulumi.Input.encodeList<WindowsFunctionAppSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions!, (value) => value.toMap()),
      'loadBalancingMode': ?loadBalancingMode,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsVersion': ?minimumTlsVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?scmIpRestrictions == null ? null : pulumi.Input.encodeList<WindowsFunctionAppSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions!, (value) => value.toMap()),
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

  factory WindowsFunctionAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSiteConfig(
      alwaysOn: map['alwaysOn'] == null ? null : map['alwaysOn'] as bool,
      apiDefinitionUrl: map['apiDefinitionUrl'] == null ? null : map['apiDefinitionUrl'] as String,
      apiManagementApiId: map['apiManagementApiId'] == null ? null : map['apiManagementApiId'] as String,
      appCommandLine: map['appCommandLine'] == null ? null : map['appCommandLine'] as String,
      appScaleLimit: map['appScaleLimit'] == null ? null : map['appScaleLimit'] as int,
      appServiceLogs: map['appServiceLogs'] == null ? null : WindowsFunctionAppSiteConfigAppServiceLogs.fromMap((map['appServiceLogs'] as Map).cast<String, dynamic>()),
      applicationInsightsConnectionString: map['applicationInsightsConnectionString'] == null ? null : map['applicationInsightsConnectionString'] as String,
      applicationInsightsKey: map['applicationInsightsKey'] == null ? null : map['applicationInsightsKey'] as String,
      applicationStack: map['applicationStack'] == null ? null : WindowsFunctionAppSiteConfigApplicationStack.fromMap((map['applicationStack'] as Map).cast<String, dynamic>()),
      cors: map['cors'] == null ? null : WindowsFunctionAppSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      defaultDocuments: map['defaultDocuments'] == null ? null : (map['defaultDocuments'] as List).cast<String>(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : map['detailedErrorLoggingEnabled'] as bool,
      elasticInstanceMinimum: map['elasticInstanceMinimum'] == null ? null : map['elasticInstanceMinimum'] as int,
      ftpsState: map['ftpsState'] == null ? null : map['ftpsState'] as String,
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] == null ? null : map['healthCheckEvictionTimeInMin'] as int,
      healthCheckPath: map['healthCheckPath'] == null ? null : map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] == null ? null : map['http2Enabled'] as bool,
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] == null ? null : map['ipRestrictionDefaultAction'] as String,
      ipRestrictions: map['ipRestrictions'] == null ? null : pulumi.Input.decodeList<WindowsFunctionAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => WindowsFunctionAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : map['loadBalancingMode'] as String,
      managedPipelineMode: map['managedPipelineMode'] == null ? null : map['managedPipelineMode'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion'] as String,
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : map['preWarmedInstanceCount'] as int,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : map['remoteDebuggingVersion'] as String,
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] == null ? null : map['runtimeScaleMonitoringEnabled'] as bool,
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] == null ? null : map['scmIpRestrictionDefaultAction'] as String,
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : pulumi.Input.decodeList<WindowsFunctionAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => WindowsFunctionAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmMinimumTlsVersion: map['scmMinimumTlsVersion'] == null ? null : map['scmMinimumTlsVersion'] as String,
      scmType: map['scmType'] == null ? null : map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : map['scmUseMainIpRestriction'] as bool,
      use32BitWorker: map['use32BitWorker'] == null ? null : map['use32BitWorker'] as bool,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] == null ? null : map['websocketsEnabled'] as bool,
      windowsFxVersion: map['windowsFxVersion'] == null ? null : map['windowsFxVersion'] as String,
      workerCount: map['workerCount'] == null ? null : map['workerCount'] as int,
    );
  }
}

