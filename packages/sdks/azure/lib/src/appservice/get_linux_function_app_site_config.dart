// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_site_config_app_service_log.dart';
import 'get_linux_function_app_site_config_application_stack.dart';
import 'get_linux_function_app_site_config_cor.dart';
import 'get_linux_function_app_site_config_ip_restriction.dart';
import 'get_linux_function_app_site_config_scm_ip_restriction.dart';

class GetLinuxFunctionAppSiteConfig {
  /// If this Linux Web App is Always On enabled.
  final bool alwaysOn;
  /// The URL of the API definition that describes this Linux Function App.
  final String apiDefinitionUrl;
  /// The ID of the API Management API for this Linux Function App.
  final String apiManagementApiId;
  /// The App command line that is launched.
  final String appCommandLine;
  /// The number of workers this function app can scale out to.
  final int appScaleLimit;
  /// An `app_service_logs` block as defined above.
  final List<GetLinuxFunctionAppSiteConfigAppServiceLog> appServiceLogs;
  /// The Connection String that links the Linux Function App to Application Insights.
  final String applicationInsightsConnectionString;
  /// The Instrumentation Key that connects the Linux Function App to Application Insights.
  final String applicationInsightsKey;
  /// An `application_stack` block as defined above.
  final List<GetLinuxFunctionAppSiteConfigApplicationStack> applicationStacks;
  /// The Client ID of the Managed Service Identity that is used for connections to the Azure Container Registry.
  final String containerRegistryManagedIdentityClientId;
  /// Do connections for Azure Container Registry use Managed Identity?
  final bool containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final List<GetLinuxFunctionAppSiteConfigCor> cors;
  /// A list of Default Documents for the Linux Web App.
  final List<String> defaultDocuments;
  final bool detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Linux Function App.
  final int elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app.
  final String ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  final int healthCheckEvictionTimeInMin;
  /// The path that is checked for this function app health.
  final String healthCheckPath;
  /// Is the HTTP2 protocol enabled?
  final bool http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule.
  final String ipRestrictionDefaultAction;
  /// One or more `ip_restriction` blocks as defined above.
  final List<GetLinuxFunctionAppSiteConfigIpRestriction> ipRestrictions;
  final String linuxFxVersion;
  /// The Site load balancing mode.
  final String loadBalancingMode;
  /// Managed pipeline mode.
  final String managedPipelineMode;
  /// The minimum version of TLS required for SSL requests.
  final String minimumTlsVersion;
  /// The number of pre-warmed instances for this function app.
  final int preWarmedInstanceCount;
  /// Is Remote Debugging enabled?
  final bool remoteDebuggingEnabled;
  /// The Remote Debugging Version.
  final String remoteDebuggingVersion;
  /// Is Scale Monitoring of the Functions Runtime enabled?
  final bool runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule.
  final String? scmIpRestrictionDefaultAction;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final List<GetLinuxFunctionAppSiteConfigScmIpRestriction> scmIpRestrictions;
  /// The minimum version of TLS for SSL requests to the SCM site.
  final String scmMinimumTlsVersion;
  final String scmType;
  /// Is the Linux Function App `ip_restriction` configuration used for the SCM also?
  final bool scmUseMainIpRestriction;
  /// Does the Linux Web App use a 32-bit worker process?
  final bool use32BitWorker;
  /// Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  final bool vnetRouteAllEnabled;
  /// Are Web Sockets enabled?
  final bool websocketsEnabled;
  /// The number of Workers for this Linux Function App.
  final int workerCount;

  /// Creates a new [GetLinuxFunctionAppSiteConfig].
  /// [alwaysOn] If this Linux Web App is Always On enabled.
  /// [apiDefinitionUrl] The URL of the API definition that describes this Linux Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Linux Function App.
  /// [appCommandLine] The App command line that is launched.
  /// [appScaleLimit] The number of workers this function app can scale out to.
  /// [appServiceLogs] An `app_service_logs` block as defined above.
  /// [applicationInsightsConnectionString] The Connection String that links the Linux Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key that connects the Linux Function App to Application Insights.
  /// [applicationStacks] An `application_stack` block as defined above.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity that is used for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Do connections for Azure Container Registry use Managed Identity?
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] A list of Default Documents for the Linux Web App.
  /// [detailedErrorLoggingEnabled] Required.
  /// [elasticInstanceMinimum] The number of minimum instances for this Linux Function App.
  /// [ftpsState] State of FTP / FTPS service for this function app.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  /// [healthCheckPath] The path that is checked for this function app health.
  /// [http2Enabled] Is the HTTP2 protocol enabled?
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule.
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [linuxFxVersion] Required.
  /// [loadBalancingMode] The Site load balancing mode.
  /// [managedPipelineMode] Managed pipeline mode.
  /// [minimumTlsVersion] The minimum version of TLS required for SSL requests.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app.
  /// [remoteDebuggingEnabled] Is Remote Debugging enabled?
  /// [remoteDebuggingVersion] The Remote Debugging Version.
  /// [runtimeScaleMonitoringEnabled] Is Scale Monitoring of the Functions Runtime enabled?
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule.
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The minimum version of TLS for SSL requests to the SCM site.
  /// [scmType] Required.
  /// [scmUseMainIpRestriction] Is the Linux Function App `ip_restriction` configuration used for the SCM also?
  /// [use32BitWorker] Does the Linux Web App use a 32-bit worker process?
  /// [vnetRouteAllEnabled] Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are Web Sockets enabled?
  /// [workerCount] The number of Workers for this Linux Function App.
  GetLinuxFunctionAppSiteConfig({
    required this.alwaysOn,
    required this.apiDefinitionUrl,
    required this.apiManagementApiId,
    required this.appCommandLine,
    required this.appScaleLimit,
    required this.appServiceLogs,
    required this.applicationInsightsConnectionString,
    required this.applicationInsightsKey,
    required this.applicationStacks,
    required this.containerRegistryManagedIdentityClientId,
    required this.containerRegistryUseManagedIdentity,
    required this.cors,
    required this.defaultDocuments,
    required this.detailedErrorLoggingEnabled,
    required this.elasticInstanceMinimum,
    required this.ftpsState,
    required this.healthCheckEvictionTimeInMin,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictionDefaultAction,
    required this.ipRestrictions,
    required this.linuxFxVersion,
    required this.loadBalancingMode,
    required this.managedPipelineMode,
    required this.minimumTlsVersion,
    required this.preWarmedInstanceCount,
    required this.remoteDebuggingEnabled,
    required this.remoteDebuggingVersion,
    required this.runtimeScaleMonitoringEnabled,
    this.scmIpRestrictionDefaultAction,
    required this.scmIpRestrictions,
    required this.scmMinimumTlsVersion,
    required this.scmType,
    required this.scmUseMainIpRestriction,
    required this.use32BitWorker,
    required this.vnetRouteAllEnabled,
    required this.websocketsEnabled,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': alwaysOn,
      'apiDefinitionUrl': apiDefinitionUrl,
      'apiManagementApiId': apiManagementApiId,
      'appCommandLine': appCommandLine,
      'appScaleLimit': appScaleLimit,
      'appServiceLogs': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigAppServiceLog, Map<String, dynamic>>(appServiceLogs, (value) => value.toMap()),
      'applicationInsightsConnectionString': applicationInsightsConnectionString,
      'applicationInsightsKey': applicationInsightsKey,
      'applicationStacks': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigApplicationStack, Map<String, dynamic>>(applicationStacks, (value) => value.toMap()),
      'containerRegistryManagedIdentityClientId': containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': containerRegistryUseManagedIdentity,
      'cors': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigCor, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': defaultDocuments,
      'detailedErrorLoggingEnabled': detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': elasticInstanceMinimum,
      'ftpsState': ftpsState,
      'healthCheckEvictionTimeInMin': healthCheckEvictionTimeInMin,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictionDefaultAction': ipRestrictionDefaultAction,
      'ipRestrictions': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions, (value) => value.toMap()),
      'linuxFxVersion': linuxFxVersion,
      'loadBalancingMode': loadBalancingMode,
      'managedPipelineMode': managedPipelineMode,
      'minimumTlsVersion': minimumTlsVersion,
      'preWarmedInstanceCount': preWarmedInstanceCount,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions, (value) => value.toMap()),
      'scmMinimumTlsVersion': scmMinimumTlsVersion,
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorker': use32BitWorker,
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
      'workerCount': workerCount,
    };
  }

  factory GetLinuxFunctionAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfig(
      alwaysOn: map['alwaysOn'] as bool,
      apiDefinitionUrl: map['apiDefinitionUrl'] as String,
      apiManagementApiId: map['apiManagementApiId'] as String,
      appCommandLine: map['appCommandLine'] as String,
      appScaleLimit: map['appScaleLimit'] as int,
      appServiceLogs: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigAppServiceLog>(map['appServiceLogs'], (value) => GetLinuxFunctionAppSiteConfigAppServiceLog.fromMap((value as Map).cast<String, dynamic>())),
      applicationInsightsConnectionString: map['applicationInsightsConnectionString'] as String,
      applicationInsightsKey: map['applicationInsightsKey'] as String,
      applicationStacks: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigApplicationStack>(map['applicationStacks'], (value) => GetLinuxFunctionAppSiteConfigApplicationStack.fromMap((value as Map).cast<String, dynamic>())),
      containerRegistryManagedIdentityClientId: map['containerRegistryManagedIdentityClientId'] as String,
      containerRegistryUseManagedIdentity: map['containerRegistryUseManagedIdentity'] as bool,
      cors: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigCor>(map['cors'], (value) => GetLinuxFunctionAppSiteConfigCor.fromMap((value as Map).cast<String, dynamic>())),
      defaultDocuments: (map['defaultDocuments'] as List).cast<String>(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] as bool,
      elasticInstanceMinimum: map['elasticInstanceMinimum'] as int,
      ftpsState: map['ftpsState'] as String,
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] as int,
      healthCheckPath: map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] as bool,
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] as String,
      ipRestrictions: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => GetLinuxFunctionAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      linuxFxVersion: map['linuxFxVersion'] as String,
      loadBalancingMode: map['loadBalancingMode'] as String,
      managedPipelineMode: map['managedPipelineMode'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] as String,
      preWarmedInstanceCount: map['preWarmedInstanceCount'] as int,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] as String,
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] as bool,
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] == null ? null : map['scmIpRestrictionDefaultAction'] as String,
      scmIpRestrictions: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => GetLinuxFunctionAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmMinimumTlsVersion: map['scmMinimumTlsVersion'] as String,
      scmType: map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] as bool,
      use32BitWorker: map['use32BitWorker'] as bool,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] as bool,
      workerCount: map['workerCount'] as int,
    );
  }
}

