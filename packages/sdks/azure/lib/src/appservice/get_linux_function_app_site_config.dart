// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_site_config_app_service_log.dart';
import 'get_linux_function_app_site_config_application_stack.dart';
import 'get_linux_function_app_site_config_cor.dart';
import 'get_linux_function_app_site_config_ip_restriction.dart';
import 'get_linux_function_app_site_config_scm_ip_restriction.dart';

class GetLinuxFunctionAppSiteConfig {
  /// If this Linux Web App is Always On enabled.
  final pulumi.Input<bool> alwaysOn;
  /// The URL of the API definition that describes this Linux Function App.
  final pulumi.Input<String> apiDefinitionUrl;
  /// The ID of the API Management API for this Linux Function App.
  final pulumi.Input<String> apiManagementApiId;
  /// The App command line that is launched.
  final pulumi.Input<String> appCommandLine;
  /// The number of workers this function app can scale out to.
  final pulumi.Input<int> appScaleLimit;
  /// An `appServiceLogs` block as defined above.
  final pulumi.Input<List<GetLinuxFunctionAppSiteConfigAppServiceLog>> appServiceLogs;
  /// The Connection String that links the Linux Function App to Application Insights.
  final pulumi.Input<String> applicationInsightsConnectionString;
  /// The Instrumentation Key that connects the Linux Function App to Application Insights.
  final pulumi.Input<String> applicationInsightsKey;
  /// An `applicationStack` block as defined above.
  final pulumi.Input<List<GetLinuxFunctionAppSiteConfigApplicationStack>> applicationStacks;
  /// The Client ID of the Managed Service Identity that is used for connections to the Azure Container Registry.
  final pulumi.Input<String> containerRegistryManagedIdentityClientId;
  /// Do connections for Azure Container Registry use Managed Identity?
  final pulumi.Input<bool> containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final pulumi.Input<List<GetLinuxFunctionAppSiteConfigCor>> cors;
  /// A list of Default Documents for the Linux Web App.
  final pulumi.Input<List<String>> defaultDocuments;
  final pulumi.Input<bool> detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Linux Function App.
  final pulumi.Input<int> elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app.
  final pulumi.Input<String> ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  final pulumi.Input<int> healthCheckEvictionTimeInMin;
  /// The path that is checked for this function app health.
  final pulumi.Input<String> healthCheckPath;
  /// Is the HTTP2 protocol enabled?
  final pulumi.Input<bool> http2Enabled;
  /// The Default action for traffic that does not match any `ipRestriction` rule.
  final pulumi.Input<String> ipRestrictionDefaultAction;
  /// One or more `ipRestriction` blocks as defined above.
  final pulumi.Input<List<GetLinuxFunctionAppSiteConfigIpRestriction>> ipRestrictions;
  final pulumi.Input<String> linuxFxVersion;
  /// The Site load balancing mode.
  final pulumi.Input<String> loadBalancingMode;
  /// Managed pipeline mode.
  final pulumi.Input<String> managedPipelineMode;
  final pulumi.Input<String> minimumTlsCipherSuite;
  /// The minimum version of TLS required for SSL requests.
  final pulumi.Input<String> minimumTlsVersion;
  /// The number of pre-warmed instances for this function app.
  final pulumi.Input<int> preWarmedInstanceCount;
  /// Is Remote Debugging enabled?
  final pulumi.Input<bool> remoteDebuggingEnabled;
  /// The Remote Debugging Version.
  final pulumi.Input<String> remoteDebuggingVersion;
  /// Is Scale Monitoring of the Functions Runtime enabled?
  final pulumi.Input<bool> runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scmIpRestriction` rule.
  final pulumi.Input<String?>? scmIpRestrictionDefaultAction;
  /// One or more `scmIpRestriction` blocks as defined above.
  final pulumi.Input<List<GetLinuxFunctionAppSiteConfigScmIpRestriction>> scmIpRestrictions;
  /// The minimum version of TLS for SSL requests to the SCM site.
  final pulumi.Input<String> scmMinimumTlsVersion;
  final pulumi.Input<String> scmType;
  /// Is the Linux Function App `ipRestriction` configuration used for the SCM also?
  final pulumi.Input<bool> scmUseMainIpRestriction;
  /// Does the Linux Web App use a 32-bit worker process?
  final pulumi.Input<bool> use32BitWorker;
  /// Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  final pulumi.Input<bool> vnetRouteAllEnabled;
  /// Are Web Sockets enabled?
  final pulumi.Input<bool> websocketsEnabled;
  /// The number of Workers for this Linux Function App.
  final pulumi.Input<int> workerCount;

  /// Creates a new [GetLinuxFunctionAppSiteConfig].
  /// [alwaysOn] If this Linux Web App is Always On enabled.
  /// [apiDefinitionUrl] The URL of the API definition that describes this Linux Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Linux Function App.
  /// [appCommandLine] The App command line that is launched.
  /// [appScaleLimit] The number of workers this function app can scale out to.
  /// [appServiceLogs] An `appServiceLogs` block as defined above.
  /// [applicationInsightsConnectionString] The Connection String that links the Linux Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key that connects the Linux Function App to Application Insights.
  /// [applicationStacks] An `applicationStack` block as defined above.
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
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ipRestriction` rule.
  /// [ipRestrictions] One or more `ipRestriction` blocks as defined above.
  /// [linuxFxVersion] Required.
  /// [loadBalancingMode] The Site load balancing mode.
  /// [managedPipelineMode] Managed pipeline mode.
  /// [minimumTlsCipherSuite] Required.
  /// [minimumTlsVersion] The minimum version of TLS required for SSL requests.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app.
  /// [remoteDebuggingEnabled] Is Remote Debugging enabled?
  /// [remoteDebuggingVersion] The Remote Debugging Version.
  /// [runtimeScaleMonitoringEnabled] Is Scale Monitoring of the Functions Runtime enabled?
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scmIpRestriction` rule.
  /// [scmIpRestrictions] One or more `scmIpRestriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The minimum version of TLS for SSL requests to the SCM site.
  /// [scmType] Required.
  /// [scmUseMainIpRestriction] Is the Linux Function App `ipRestriction` configuration used for the SCM also?
  /// [use32BitWorker] Does the Linux Web App use a 32-bit worker process?
  /// [vnetRouteAllEnabled] Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are Web Sockets enabled?
  /// [workerCount] The number of Workers for this Linux Function App.
  const GetLinuxFunctionAppSiteConfig({
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
    required this.minimumTlsCipherSuite,
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
      'appServiceLogs': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppSiteConfigAppServiceLog>, List<Map<String, dynamic>>>(appServiceLogs, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigAppServiceLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationInsightsConnectionString': applicationInsightsConnectionString,
      'applicationInsightsKey': applicationInsightsKey,
      'applicationStacks': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppSiteConfigApplicationStack>, List<Map<String, dynamic>>>(applicationStacks, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigApplicationStack, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerRegistryManagedIdentityClientId': containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': containerRegistryUseManagedIdentity,
      'cors': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppSiteConfigCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDocuments': defaultDocuments,
      'detailedErrorLoggingEnabled': detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': elasticInstanceMinimum,
      'ftpsState': ftpsState,
      'healthCheckEvictionTimeInMin': healthCheckEvictionTimeInMin,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictionDefaultAction': ipRestrictionDefaultAction,
      'ipRestrictions': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linuxFxVersion': linuxFxVersion,
      'loadBalancingMode': loadBalancingMode,
      'managedPipelineMode': managedPipelineMode,
      'minimumTlsCipherSuite': minimumTlsCipherSuite,
      'minimumTlsVersion': minimumTlsVersion,
      'preWarmedInstanceCount': preWarmedInstanceCount,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      alwaysOn: pulumi.Input.fromValue(map['alwaysOn'] as bool),
      apiDefinitionUrl: pulumi.Input.fromValue(map['apiDefinitionUrl'] as String),
      apiManagementApiId: pulumi.Input.fromValue(map['apiManagementApiId'] as String),
      appCommandLine: pulumi.Input.fromValue(map['appCommandLine'] as String),
      appScaleLimit: pulumi.Input.fromValue((map['appScaleLimit'] as num).toInt()),
      appServiceLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigAppServiceLog>(map['appServiceLogs']!, (value) => GetLinuxFunctionAppSiteConfigAppServiceLog.fromMap((value as Map).cast<String, dynamic>()))),
      applicationInsightsConnectionString: pulumi.Input.fromValue(map['applicationInsightsConnectionString'] as String),
      applicationInsightsKey: pulumi.Input.fromValue(map['applicationInsightsKey'] as String),
      applicationStacks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigApplicationStack>(map['applicationStacks']!, (value) => GetLinuxFunctionAppSiteConfigApplicationStack.fromMap((value as Map).cast<String, dynamic>()))),
      containerRegistryManagedIdentityClientId: pulumi.Input.fromValue(map['containerRegistryManagedIdentityClientId'] as String),
      containerRegistryUseManagedIdentity: pulumi.Input.fromValue(map['containerRegistryUseManagedIdentity'] as bool),
      cors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigCor>(map['cors']!, (value) => GetLinuxFunctionAppSiteConfigCor.fromMap((value as Map).cast<String, dynamic>()))),
      defaultDocuments: pulumi.Input.fromValue((map['defaultDocuments'] as List).cast<String>()),
      detailedErrorLoggingEnabled: pulumi.Input.fromValue(map['detailedErrorLoggingEnabled'] as bool),
      elasticInstanceMinimum: pulumi.Input.fromValue((map['elasticInstanceMinimum'] as num).toInt()),
      ftpsState: pulumi.Input.fromValue(map['ftpsState'] as String),
      healthCheckEvictionTimeInMin: pulumi.Input.fromValue((map['healthCheckEvictionTimeInMin'] as num).toInt()),
      healthCheckPath: pulumi.Input.fromValue(map['healthCheckPath'] as String),
      http2Enabled: pulumi.Input.fromValue(map['http2Enabled'] as bool),
      ipRestrictionDefaultAction: pulumi.Input.fromValue(map['ipRestrictionDefaultAction'] as String),
      ipRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigIpRestriction>(map['ipRestrictions']!, (value) => GetLinuxFunctionAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      linuxFxVersion: pulumi.Input.fromValue(map['linuxFxVersion'] as String),
      loadBalancingMode: pulumi.Input.fromValue(map['loadBalancingMode'] as String),
      managedPipelineMode: pulumi.Input.fromValue(map['managedPipelineMode'] as String),
      minimumTlsCipherSuite: pulumi.Input.fromValue(map['minimumTlsCipherSuite'] as String),
      minimumTlsVersion: pulumi.Input.fromValue(map['minimumTlsVersion'] as String),
      preWarmedInstanceCount: pulumi.Input.fromValue((map['preWarmedInstanceCount'] as num).toInt()),
      remoteDebuggingEnabled: pulumi.Input.fromValue(map['remoteDebuggingEnabled'] as bool),
      remoteDebuggingVersion: pulumi.Input.fromValue(map['remoteDebuggingVersion'] as String),
      runtimeScaleMonitoringEnabled: pulumi.Input.fromValue(map['runtimeScaleMonitoringEnabled'] as bool),
      scmIpRestrictionDefaultAction: (() { final guardedValue = map['scmIpRestrictionDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmIpRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigScmIpRestriction>(map['scmIpRestrictions']!, (value) => GetLinuxFunctionAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      scmMinimumTlsVersion: pulumi.Input.fromValue(map['scmMinimumTlsVersion'] as String),
      scmType: pulumi.Input.fromValue(map['scmType'] as String),
      scmUseMainIpRestriction: pulumi.Input.fromValue(map['scmUseMainIpRestriction'] as bool),
      use32BitWorker: pulumi.Input.fromValue(map['use32BitWorker'] as bool),
      vnetRouteAllEnabled: pulumi.Input.fromValue(map['vnetRouteAllEnabled'] as bool),
      websocketsEnabled: pulumi.Input.fromValue(map['websocketsEnabled'] as bool),
      workerCount: pulumi.Input.fromValue((map['workerCount'] as num).toInt()),
    );
  }
}
