// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_site_config_app_service_logs.dart';
import 'linux_function_app_slot_site_config_application_stack.dart';
import 'linux_function_app_slot_site_config_cors.dart';
import 'linux_function_app_slot_site_config_ip_restriction.dart';
import 'linux_function_app_slot_site_config_scm_ip_restriction.dart';

class LinuxFunctionAppSlotSiteConfig {
  /// If this Linux Web App is Always On enabled. Defaults to `false`.
  final bool? alwaysOn;
  /// The URL of the API definition that describes this Linux Function App.
  final String? apiDefinitionUrl;
  /// The ID of the API Management API for this Linux Function App.
  final String? apiManagementApiId;
  /// The program and any arguments used to launch this app via the command line. (Example `node myapp.js`).
  final String? appCommandLine;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final int? appScaleLimit;
  /// an `app_service_logs` block as detailed below.
  final LinuxFunctionAppSlotSiteConfigAppServiceLogs? appServiceLogs;
  /// The Connection String for linking the Linux Function App to Application Insights.
  final String? applicationInsightsConnectionString;
  /// The Instrumentation Key for connecting the Linux Function App to Application Insights.
  final String? applicationInsightsKey;
  /// an `application_stack` block as detailed below.
  final LinuxFunctionAppSlotSiteConfigApplicationStack? applicationStack;
  /// The name of the slot to automatically swap with when this slot is successfully deployed.
  final String? autoSwapSlotName;
  /// The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  final String? containerRegistryManagedIdentityClientId;
  /// Should connections for Azure Container Registry use Managed Identity.
  final bool? containerRegistryUseManagedIdentity;
  /// a `cors` block as detailed below.
  final LinuxFunctionAppSlotSiteConfigCors? cors;
  /// Specifies a list of Default Documents for the Linux Web App.
  final List<String>? defaultDocuments;
  /// Is detailed error logging enabled
  final bool? detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans.
  final int? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  final String? ftpsState;
  /// The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `0`. Only valid in conjunction with `health_check_path`.
  final int? healthCheckEvictionTimeInMin;
  /// The path to be checked for this function app health.
  final String? healthCheckPath;
  /// Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  final bool? http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final String? ipRestrictionDefaultAction;
  /// an `ip_restriction` block as detailed below.
  final List<LinuxFunctionAppSlotSiteConfigIpRestriction>? ipRestrictions;
  /// The Linux FX Version
  final String? linuxFxVersion;
  /// The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final String? loadBalancingMode;
  /// The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  final String? managedPipelineMode;
  /// The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final String? minimumTlsVersion;
  /// The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan.
  final int? preWarmedInstanceCount;
  /// Should Remote Debugging be enabled. Defaults to `false`.
  final bool? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final String? remoteDebuggingVersion;
  /// Should Functions Runtime Scale Monitoring be enabled.
  ///
  /// > **Note:** Functions runtime scale monitoring can only be enabled for Elastic Premium Function Apps or Workflow Standard Logic Apps and requires a minimum prewarmed instance count of 1.
  final bool? runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final String? scmIpRestrictionDefaultAction;
  /// a `scm_ip_restriction` block as detailed below.
  final List<LinuxFunctionAppSlotSiteConfigScmIpRestriction>? scmIpRestrictions;
  /// Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final String? scmMinimumTlsVersion;
  /// The SCM Type in use by the Linux Function App.
  final String? scmType;
  /// Should the Linux Function App `ip_restriction` configuration be used for the SCM also.
  final bool? scmUseMainIpRestriction;
  /// Should the Linux Web App use a 32-bit worker.
  final bool? use32BitWorker;
  /// Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final bool? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled. Defaults to `false`.
  final bool? websocketsEnabled;
  /// The number of Workers for this Linux Function App.
  final int? workerCount;

  /// Creates a new [LinuxFunctionAppSlotSiteConfig].
  /// [alwaysOn] If this Linux Web App is Always On enabled. Defaults to `false`.
  /// [apiDefinitionUrl] The URL of the API definition that describes this Linux Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Linux Function App.
  /// [appCommandLine] The program and any arguments used to launch this app via the command line. (Example `node myapp.js`).
  /// [appScaleLimit] The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [appServiceLogs] an `app_service_logs` block as detailed below.
  /// [applicationInsightsConnectionString] The Connection String for linking the Linux Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key for connecting the Linux Function App to Application Insights.
  /// [applicationStack] an `application_stack` block as detailed below.
  /// [autoSwapSlotName] The name of the slot to automatically swap with when this slot is successfully deployed.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Should connections for Azure Container Registry use Managed Identity.
  /// [cors] a `cors` block as detailed below.
  /// [defaultDocuments] Specifies a list of Default Documents for the Linux Web App.
  /// [detailedErrorLoggingEnabled] Is detailed error logging enabled
  /// [elasticInstanceMinimum] The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans.
  /// [ftpsState] State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `0`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to be checked for this function app health.
  /// [http2Enabled] Specifies if the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] an `ip_restriction` block as detailed below.
  /// [linuxFxVersion] The Linux FX Version
  /// [loadBalancingMode] The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [managedPipelineMode] The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled. Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [runtimeScaleMonitoringEnabled] Should Functions Runtime Scale Monitoring be enabled.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] a `scm_ip_restriction` block as detailed below.
  /// [scmMinimumTlsVersion] Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] The SCM Type in use by the Linux Function App.
  /// [scmUseMainIpRestriction] Should the Linux Function App `ip_restriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Linux Web App use a 32-bit worker.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled. Defaults to `false`.
  /// [workerCount] The number of Workers for this Linux Function App.
  LinuxFunctionAppSlotSiteConfig({
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
      'appServiceLogs': ?appServiceLogs == null ? null : appServiceLogs!.toMap(),
      'applicationInsightsConnectionString': ?applicationInsightsConnectionString,
      'applicationInsightsKey': ?applicationInsightsKey,
      'applicationStack': ?applicationStack == null ? null : applicationStack!.toMap(),
      'autoSwapSlotName': ?autoSwapSlotName,
      'containerRegistryManagedIdentityClientId': ?containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': ?containerRegistryUseManagedIdentity,
      'cors': ?cors == null ? null : cors!.toMap(),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'ftpsState': ?ftpsState,
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?ipRestrictions == null ? null : pulumi.Input.encodeList<LinuxFunctionAppSlotSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions!, (value) => value.toMap()),
      'linuxFxVersion': ?linuxFxVersion,
      'loadBalancingMode': ?loadBalancingMode,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsVersion': ?minimumTlsVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?scmIpRestrictions == null ? null : pulumi.Input.encodeList<LinuxFunctionAppSlotSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions!, (value) => value.toMap()),
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
      alwaysOn: map['alwaysOn'] == null ? null : map['alwaysOn'] as bool,
      apiDefinitionUrl: map['apiDefinitionUrl'] == null ? null : map['apiDefinitionUrl'] as String,
      apiManagementApiId: map['apiManagementApiId'] == null ? null : map['apiManagementApiId'] as String,
      appCommandLine: map['appCommandLine'] == null ? null : map['appCommandLine'] as String,
      appScaleLimit: map['appScaleLimit'] == null ? null : map['appScaleLimit'] as int,
      appServiceLogs: map['appServiceLogs'] == null ? null : LinuxFunctionAppSlotSiteConfigAppServiceLogs.fromMap((map['appServiceLogs'] as Map).cast<String, dynamic>()),
      applicationInsightsConnectionString: map['applicationInsightsConnectionString'] == null ? null : map['applicationInsightsConnectionString'] as String,
      applicationInsightsKey: map['applicationInsightsKey'] == null ? null : map['applicationInsightsKey'] as String,
      applicationStack: map['applicationStack'] == null ? null : LinuxFunctionAppSlotSiteConfigApplicationStack.fromMap((map['applicationStack'] as Map).cast<String, dynamic>()),
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : map['autoSwapSlotName'] as String,
      containerRegistryManagedIdentityClientId: map['containerRegistryManagedIdentityClientId'] == null ? null : map['containerRegistryManagedIdentityClientId'] as String,
      containerRegistryUseManagedIdentity: map['containerRegistryUseManagedIdentity'] == null ? null : map['containerRegistryUseManagedIdentity'] as bool,
      cors: map['cors'] == null ? null : LinuxFunctionAppSlotSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      defaultDocuments: map['defaultDocuments'] == null ? null : (map['defaultDocuments'] as List).cast<String>(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : map['detailedErrorLoggingEnabled'] as bool,
      elasticInstanceMinimum: map['elasticInstanceMinimum'] == null ? null : map['elasticInstanceMinimum'] as int,
      ftpsState: map['ftpsState'] == null ? null : map['ftpsState'] as String,
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] == null ? null : map['healthCheckEvictionTimeInMin'] as int,
      healthCheckPath: map['healthCheckPath'] == null ? null : map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] == null ? null : map['http2Enabled'] as bool,
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] == null ? null : map['ipRestrictionDefaultAction'] as String,
      ipRestrictions: map['ipRestrictions'] == null ? null : pulumi.Input.decodeList<LinuxFunctionAppSlotSiteConfigIpRestriction>(map['ipRestrictions'], (value) => LinuxFunctionAppSlotSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      linuxFxVersion: map['linuxFxVersion'] == null ? null : map['linuxFxVersion'] as String,
      loadBalancingMode: map['loadBalancingMode'] == null ? null : map['loadBalancingMode'] as String,
      managedPipelineMode: map['managedPipelineMode'] == null ? null : map['managedPipelineMode'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion'] as String,
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : map['preWarmedInstanceCount'] as int,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : map['remoteDebuggingVersion'] as String,
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] == null ? null : map['runtimeScaleMonitoringEnabled'] as bool,
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] == null ? null : map['scmIpRestrictionDefaultAction'] as String,
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : pulumi.Input.decodeList<LinuxFunctionAppSlotSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => LinuxFunctionAppSlotSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmMinimumTlsVersion: map['scmMinimumTlsVersion'] == null ? null : map['scmMinimumTlsVersion'] as String,
      scmType: map['scmType'] == null ? null : map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : map['scmUseMainIpRestriction'] as bool,
      use32BitWorker: map['use32BitWorker'] == null ? null : map['use32BitWorker'] as bool,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] == null ? null : map['websocketsEnabled'] as bool,
      workerCount: map['workerCount'] == null ? null : map['workerCount'] as int,
    );
  }
}

