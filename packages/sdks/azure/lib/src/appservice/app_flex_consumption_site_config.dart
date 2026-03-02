// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_flex_consumption_site_config_app_service_logs.dart';
import 'app_flex_consumption_site_config_cors.dart';
import 'app_flex_consumption_site_config_ip_restriction.dart';
import 'app_flex_consumption_site_config_scm_ip_restriction.dart';

class AppFlexConsumptionSiteConfig {
  /// The URL of the API definition that describes this Linux Function App.
  final pulumi.Input<String>? apiDefinitionUrl;
  /// The ID of the API Management API for this Linux Function App.
  final pulumi.Input<String>? apiManagementApiId;
  /// The App command line to launch.
  final pulumi.Input<String>? appCommandLine;
  /// An `app_service_logs` block as defined above.
  final pulumi.Input<AppFlexConsumptionSiteConfigAppServiceLogs>? appServiceLogs;
  /// The Connection String for linking the Linux Function App to Application Insights.
  final pulumi.Input<String>? applicationInsightsConnectionString;
  /// The Instrumentation Key for connecting the Linux Function App to Application Insights.
  final pulumi.Input<String>? applicationInsightsKey;
  /// The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  final pulumi.Input<String>? containerRegistryManagedIdentityClientId;
  /// Should connections for Azure Container Registry use Managed Identity.
  final pulumi.Input<bool>? containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final pulumi.Input<AppFlexConsumptionSiteConfigCors>? cors;
  /// Specifies a list of Default Documents for the Linux Web App.
  final pulumi.Input<List<String>>? defaultDocuments;
  /// Is detailed error logging enabled
  final pulumi.Input<bool>? detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans.
  final pulumi.Input<int>? elasticInstanceMinimum;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  final pulumi.Input<int>? healthCheckEvictionTimeInMin;
  /// The path to be checked for this function app health.
  final pulumi.Input<String>? healthCheckPath;
  /// Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  final pulumi.Input<bool>? http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? ipRestrictionDefaultAction;
  /// One or more `ip_restriction` blocks as defined above.
  final pulumi.Input<List<AppFlexConsumptionSiteConfigIpRestriction>>? ipRestrictions;
  /// The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final pulumi.Input<String>? loadBalancingMode;
  /// Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  final pulumi.Input<String>? managedPipelineMode;
  /// The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? minimumTlsVersion;
  /// Should Remote Debugging be enabled. Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Possible values include `VS2017`, `VS2019`, and `VS2022`.
  final pulumi.Input<String>? remoteDebuggingVersion;
  /// Should Scale Monitoring of the Functions Runtime be enabled?
  ///
  /// > **Note:** Functions runtime scale monitoring can only be enabled for Elastic Premium Function Apps or Workflow Standard Logic Apps and requires a minimum prewarmed instance count of 1.
  final pulumi.Input<bool>? runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? scmIpRestrictionDefaultAction;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final pulumi.Input<List<AppFlexConsumptionSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// The minimum version of TLS required for SSL requests to the SCM site. Possible values include `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? scmMinimumTlsVersion;
  /// The SCM Type in use by the Linux Function App.
  final pulumi.Input<String>? scmType;
  /// Should the Linux Function App `ip_restriction` configuration be used for the SCM also.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the Linux Web App Linux Function App use a 32-bit worker. Defaults to `false`.
  final pulumi.Input<bool>? use32BitWorker;
  /// Should the Linux Function App route all traffic through the virtual network. Defaults to `false`.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled. Defaults to `false`.
  final pulumi.Input<bool>? websocketsEnabled;
  /// The number of Workers for this Linux Function App.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [AppFlexConsumptionSiteConfig].
  /// [apiDefinitionUrl] The URL of the API definition that describes this Linux Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Linux Function App.
  /// [appCommandLine] The App command line to launch.
  /// [appServiceLogs] An `app_service_logs` block as defined above.
  /// [applicationInsightsConnectionString] The Connection String for linking the Linux Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key for connecting the Linux Function App to Application Insights.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Should connections for Azure Container Registry use Managed Identity.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] Specifies a list of Default Documents for the Linux Web App.
  /// [detailedErrorLoggingEnabled] Is detailed error logging enabled
  /// [elasticInstanceMinimum] The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to be checked for this function app health.
  /// [http2Enabled] Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [loadBalancingMode] The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [managedPipelineMode] Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled. Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Possible values include `VS2017`, `VS2019`, and `VS2022`.
  /// [runtimeScaleMonitoringEnabled] Should Scale Monitoring of the Functions Runtime be enabled?
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The minimum version of TLS required for SSL requests to the SCM site. Possible values include `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] The SCM Type in use by the Linux Function App.
  /// [scmUseMainIpRestriction] Should the Linux Function App `ip_restriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Linux Web App Linux Function App use a 32-bit worker. Defaults to `false`.
  /// [vnetRouteAllEnabled] Should the Linux Function App route all traffic through the virtual network. Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled. Defaults to `false`.
  /// [workerCount] The number of Workers for this Linux Function App.
  AppFlexConsumptionSiteConfig({
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.appServiceLogs,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
    this.containerRegistryManagedIdentityClientId,
    this.containerRegistryUseManagedIdentity,
    this.cors,
    this.defaultDocuments,
    this.detailedErrorLoggingEnabled,
    this.elasticInstanceMinimum,
    this.healthCheckEvictionTimeInMin,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictionDefaultAction,
    this.ipRestrictions,
    this.loadBalancingMode,
    this.managedPipelineMode,
    this.minimumTlsVersion,
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
      'apiDefinitionUrl': ?apiDefinitionUrl,
      'apiManagementApiId': ?apiManagementApiId,
      'appCommandLine': ?appCommandLine,
      'appServiceLogs': ?pulumi.Input.mapOptionalInputValue<AppFlexConsumptionSiteConfigAppServiceLogs, Map<String, dynamic>>(appServiceLogs, (value) => value.toMap()),
      'applicationInsightsConnectionString': ?applicationInsightsConnectionString,
      'applicationInsightsKey': ?applicationInsightsKey,
      'containerRegistryManagedIdentityClientId': ?containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': ?containerRegistryUseManagedIdentity,
      'cors': ?pulumi.Input.mapOptionalInputValue<AppFlexConsumptionSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<AppFlexConsumptionSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<AppFlexConsumptionSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingMode': ?loadBalancingMode,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsVersion': ?minimumTlsVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<AppFlexConsumptionSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<AppFlexConsumptionSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinimumTlsVersion': ?scmMinimumTlsVersion,
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorker': ?use32BitWorker,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'workerCount': ?workerCount,
    };
  }

  factory AppFlexConsumptionSiteConfig.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionSiteConfig(
      apiDefinitionUrl: map['apiDefinitionUrl'] == null ? null : (map['apiDefinitionUrl'] as String).input(),
      apiManagementApiId: map['apiManagementApiId'] == null ? null : (map['apiManagementApiId'] as String).input(),
      appCommandLine: map['appCommandLine'] == null ? null : (map['appCommandLine'] as String).input(),
      appServiceLogs: map['appServiceLogs'] == null ? null : (AppFlexConsumptionSiteConfigAppServiceLogs.fromMap((map['appServiceLogs'] as Map).cast<String, dynamic>())).input(),
      applicationInsightsConnectionString: map['applicationInsightsConnectionString'] == null ? null : (map['applicationInsightsConnectionString'] as String).input(),
      applicationInsightsKey: map['applicationInsightsKey'] == null ? null : (map['applicationInsightsKey'] as String).input(),
      containerRegistryManagedIdentityClientId: map['containerRegistryManagedIdentityClientId'] == null ? null : (map['containerRegistryManagedIdentityClientId'] as String).input(),
      containerRegistryUseManagedIdentity: map['containerRegistryUseManagedIdentity'] == null ? null : (map['containerRegistryUseManagedIdentity'] as bool).input(),
      cors: map['cors'] == null ? null : (AppFlexConsumptionSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>())).input(),
      defaultDocuments: map['defaultDocuments'] == null ? null : ((map['defaultDocuments'] as List).cast<String>()).input(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : (map['detailedErrorLoggingEnabled'] as bool).input(),
      elasticInstanceMinimum: map['elasticInstanceMinimum'] == null ? null : (map['elasticInstanceMinimum'] as int).input(),
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] == null ? null : (map['healthCheckEvictionTimeInMin'] as int).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath'] as String).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled'] as bool).input(),
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] == null ? null : (map['ipRestrictionDefaultAction'] as String).input(),
      ipRestrictions: map['ipRestrictions'] == null ? null : (pulumi.Input.decodeList<AppFlexConsumptionSiteConfigIpRestriction>(map['ipRestrictions'], (value) => AppFlexConsumptionSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : (map['loadBalancingMode'] as String).input(),
      managedPipelineMode: map['managedPipelineMode'] == null ? null : (map['managedPipelineMode'] as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion'] as String).input(),
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : (map['remoteDebuggingEnabled'] as bool).input(),
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : (map['remoteDebuggingVersion'] as String).input(),
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] == null ? null : (map['runtimeScaleMonitoringEnabled'] as bool).input(),
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] == null ? null : (map['scmIpRestrictionDefaultAction'] as String).input(),
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : (pulumi.Input.decodeList<AppFlexConsumptionSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => AppFlexConsumptionSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmMinimumTlsVersion: map['scmMinimumTlsVersion'] == null ? null : (map['scmMinimumTlsVersion'] as String).input(),
      scmType: map['scmType'] == null ? null : (map['scmType'] as String).input(),
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : (map['scmUseMainIpRestriction'] as bool).input(),
      use32BitWorker: map['use32BitWorker'] == null ? null : (map['use32BitWorker'] as bool).input(),
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : (map['vnetRouteAllEnabled'] as bool).input(),
      websocketsEnabled: map['websocketsEnabled'] == null ? null : (map['websocketsEnabled'] as bool).input(),
      workerCount: map['workerCount'] == null ? null : (map['workerCount'] as int).input(),
    );
  }
}

