// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_application_stack.dart';
import 'get_windows_web_app_site_config_auto_heal_setting.dart';
import 'get_windows_web_app_site_config_cor.dart';
import 'get_windows_web_app_site_config_handler_mapping.dart';
import 'get_windows_web_app_site_config_ip_restriction.dart';
import 'get_windows_web_app_site_config_scm_ip_restriction.dart';
import 'get_windows_web_app_site_config_virtual_application.dart';

class GetWindowsWebAppSiteConfig {
  /// Is this Windows Web App is Always On enabled.
  final pulumi.Input<bool> alwaysOn;
  /// The ID of the APIM configuration for this Windows Web App.
  final pulumi.Input<String> apiDefinitionUrl;
  /// The ID of the API Management setting linked to the Windows Web App.
  final pulumi.Input<String> apiManagementApiId;
  /// The command line used to launch this app.
  final pulumi.Input<String> appCommandLine;
  /// A `application_stack` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigApplicationStack>> applicationStacks;
  /// A `auto_heal_setting` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSetting>> autoHealSettings;
  /// The Client ID of the Managed Service Identity used for connections to the Azure Container Registry.
  final pulumi.Input<String> containerRegistryManagedIdentityClientId;
  /// Do connections for Azure Container Registry use Managed Identity.
  final pulumi.Input<bool> containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigCor>> cors;
  /// The list of Default Documents for the Windows Web App.
  final pulumi.Input<List<String>> defaultDocuments;
  /// Is Detailed Error Logging enabled.
  final pulumi.Input<bool> detailedErrorLoggingEnabled;
  /// The State of FTP / FTPS service.
  final pulumi.Input<String> ftpsState;
  /// A `handler_mapping` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigHandlerMapping>> handlerMappings;
  /// (Optional) The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  final pulumi.Input<int> healthCheckEvictionTimeInMin;
  /// The path to the Health Check endpoint.
  final pulumi.Input<String> healthCheckPath;
  /// Is HTTP2.0 enabled.
  final pulumi.Input<bool> http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule.
  final pulumi.Input<String> ipRestrictionDefaultAction;
  /// A `ip_restriction` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigIpRestriction>> ipRestrictions;
  /// The site Load Balancing Mode.
  final pulumi.Input<String> loadBalancingMode;
  /// Is the Local MySQL enabled.
  final pulumi.Input<bool> localMysqlEnabled;
  /// The Managed Pipeline Mode.
  final pulumi.Input<String> managedPipelineMode;
  /// The Minimum version of TLS for requests.
  final pulumi.Input<String> minimumTlsVersion;
  final pulumi.Input<bool> remoteDebuggingEnabled;
  /// The Remote Debugging Version.
  final pulumi.Input<String> remoteDebuggingVersion;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule.
  final pulumi.Input<String> scmIpRestrictionDefaultAction;
  /// A `scm_ip_restriction` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigScmIpRestriction>> scmIpRestrictions;
  /// The Minimum version of TLS for requests to SCM.
  final pulumi.Input<String> scmMinimumTlsVersion;
  /// The Source Control Management Type in use.
  final pulumi.Input<String> scmType;
  /// Is the Windows Web App `ip_restriction` configuration used for the SCM also.
  final pulumi.Input<bool> scmUseMainIpRestriction;
  /// Does the Windows Web App use a 32-bit worker.
  final pulumi.Input<bool> use32BitWorker;
  /// A `virtual_application` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigVirtualApplication>> virtualApplications;
  /// Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  final pulumi.Input<bool> vnetRouteAllEnabled;
  /// Are Web Sockets enabled?
  final pulumi.Input<bool> websocketsEnabled;
  /// The string representation of the Windows FX Version.
  final pulumi.Input<String> windowsFxVersion;
  /// The number of Workers for this Windows App Service.
  final pulumi.Input<int> workerCount;

  /// Creates a new [GetWindowsWebAppSiteConfig].
  /// [alwaysOn] Is this Windows Web App is Always On enabled.
  /// [apiDefinitionUrl] The ID of the APIM configuration for this Windows Web App.
  /// [apiManagementApiId] The ID of the API Management setting linked to the Windows Web App.
  /// [appCommandLine] The command line used to launch this app.
  /// [applicationStacks] A `application_stack` block as defined above.
  /// [autoHealSettings] A `auto_heal_setting` block as defined above.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity used for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Do connections for Azure Container Registry use Managed Identity.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] The list of Default Documents for the Windows Web App.
  /// [detailedErrorLoggingEnabled] Is Detailed Error Logging enabled.
  /// [ftpsState] The State of FTP / FTPS service.
  /// [handlerMappings] A `handler_mapping` block as defined below.
  /// [healthCheckEvictionTimeInMin] (Optional) The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to the Health Check endpoint.
  /// [http2Enabled] Is HTTP2.0 enabled.
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule.
  /// [ipRestrictions] A `ip_restriction` block as defined above.
  /// [loadBalancingMode] The site Load Balancing Mode.
  /// [localMysqlEnabled] Is the Local MySQL enabled.
  /// [managedPipelineMode] The Managed Pipeline Mode.
  /// [minimumTlsVersion] The Minimum version of TLS for requests.
  /// [remoteDebuggingEnabled] Required.
  /// [remoteDebuggingVersion] The Remote Debugging Version.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule.
  /// [scmIpRestrictions] A `scm_ip_restriction` block as defined above.
  /// [scmMinimumTlsVersion] The Minimum version of TLS for requests to SCM.
  /// [scmType] The Source Control Management Type in use.
  /// [scmUseMainIpRestriction] Is the Windows Web App `ip_restriction` configuration used for the SCM also.
  /// [use32BitWorker] Does the Windows Web App use a 32-bit worker.
  /// [virtualApplications] A `virtual_application` block as defined below.
  /// [vnetRouteAllEnabled] Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are Web Sockets enabled?
  /// [windowsFxVersion] The string representation of the Windows FX Version.
  /// [workerCount] The number of Workers for this Windows App Service.
  GetWindowsWebAppSiteConfig({
    required this.alwaysOn,
    required this.apiDefinitionUrl,
    required this.apiManagementApiId,
    required this.appCommandLine,
    required this.applicationStacks,
    required this.autoHealSettings,
    required this.containerRegistryManagedIdentityClientId,
    required this.containerRegistryUseManagedIdentity,
    required this.cors,
    required this.defaultDocuments,
    required this.detailedErrorLoggingEnabled,
    required this.ftpsState,
    required this.handlerMappings,
    required this.healthCheckEvictionTimeInMin,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictionDefaultAction,
    required this.ipRestrictions,
    required this.loadBalancingMode,
    required this.localMysqlEnabled,
    required this.managedPipelineMode,
    required this.minimumTlsVersion,
    required this.remoteDebuggingEnabled,
    required this.remoteDebuggingVersion,
    required this.scmIpRestrictionDefaultAction,
    required this.scmIpRestrictions,
    required this.scmMinimumTlsVersion,
    required this.scmType,
    required this.scmUseMainIpRestriction,
    required this.use32BitWorker,
    required this.virtualApplications,
    required this.vnetRouteAllEnabled,
    required this.websocketsEnabled,
    required this.windowsFxVersion,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': alwaysOn,
      'apiDefinitionUrl': apiDefinitionUrl,
      'apiManagementApiId': apiManagementApiId,
      'appCommandLine': appCommandLine,
      'applicationStacks': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigApplicationStack>, List<Map<String, dynamic>>>(applicationStacks, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigApplicationStack, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoHealSettings': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigAutoHealSetting>, List<Map<String, dynamic>>>(autoHealSettings, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerRegistryManagedIdentityClientId': containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': containerRegistryUseManagedIdentity,
      'cors': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDocuments': defaultDocuments,
      'detailedErrorLoggingEnabled': detailedErrorLoggingEnabled,
      'ftpsState': ftpsState,
      'handlerMappings': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigHandlerMapping>, List<Map<String, dynamic>>>(handlerMappings, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigHandlerMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthCheckEvictionTimeInMin': healthCheckEvictionTimeInMin,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictionDefaultAction': ipRestrictionDefaultAction,
      'ipRestrictions': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingMode': loadBalancingMode,
      'localMysqlEnabled': localMysqlEnabled,
      'managedPipelineMode': managedPipelineMode,
      'minimumTlsVersion': minimumTlsVersion,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'scmIpRestrictionDefaultAction': scmIpRestrictionDefaultAction,
      'scmIpRestrictions': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinimumTlsVersion': scmMinimumTlsVersion,
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorker': use32BitWorker,
      'virtualApplications': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigVirtualApplication>, List<Map<String, dynamic>>>(virtualApplications, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigVirtualApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
      'windowsFxVersion': windowsFxVersion,
      'workerCount': workerCount,
    };
  }

  factory GetWindowsWebAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfig(
      alwaysOn: (map['alwaysOn'] as bool).input(),
      apiDefinitionUrl: (map['apiDefinitionUrl'] as String).input(),
      apiManagementApiId: (map['apiManagementApiId'] as String).input(),
      appCommandLine: (map['appCommandLine'] as String).input(),
      applicationStacks: (pulumi.Input.decodeList<GetWindowsWebAppSiteConfigApplicationStack>(map['applicationStacks'], (value) => GetWindowsWebAppSiteConfigApplicationStack.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoHealSettings: (pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSetting>(map['autoHealSettings'], (value) => GetWindowsWebAppSiteConfigAutoHealSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerRegistryManagedIdentityClientId: (map['containerRegistryManagedIdentityClientId'] as String).input(),
      containerRegistryUseManagedIdentity: (map['containerRegistryUseManagedIdentity'] as bool).input(),
      cors: (pulumi.Input.decodeList<GetWindowsWebAppSiteConfigCor>(map['cors'], (value) => GetWindowsWebAppSiteConfigCor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultDocuments: ((map['defaultDocuments'] as List).cast<String>()).input(),
      detailedErrorLoggingEnabled: (map['detailedErrorLoggingEnabled'] as bool).input(),
      ftpsState: (map['ftpsState'] as String).input(),
      handlerMappings: (pulumi.Input.decodeList<GetWindowsWebAppSiteConfigHandlerMapping>(map['handlerMappings'], (value) => GetWindowsWebAppSiteConfigHandlerMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      healthCheckEvictionTimeInMin: (map['healthCheckEvictionTimeInMin'] as int).input(),
      healthCheckPath: (map['healthCheckPath'] as String).input(),
      http2Enabled: (map['http2Enabled'] as bool).input(),
      ipRestrictionDefaultAction: (map['ipRestrictionDefaultAction'] as String).input(),
      ipRestrictions: (pulumi.Input.decodeList<GetWindowsWebAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => GetWindowsWebAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancingMode: (map['loadBalancingMode'] as String).input(),
      localMysqlEnabled: (map['localMysqlEnabled'] as bool).input(),
      managedPipelineMode: (map['managedPipelineMode'] as String).input(),
      minimumTlsVersion: (map['minimumTlsVersion'] as String).input(),
      remoteDebuggingEnabled: (map['remoteDebuggingEnabled'] as bool).input(),
      remoteDebuggingVersion: (map['remoteDebuggingVersion'] as String).input(),
      scmIpRestrictionDefaultAction: (map['scmIpRestrictionDefaultAction'] as String).input(),
      scmIpRestrictions: (pulumi.Input.decodeList<GetWindowsWebAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => GetWindowsWebAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmMinimumTlsVersion: (map['scmMinimumTlsVersion'] as String).input(),
      scmType: (map['scmType'] as String).input(),
      scmUseMainIpRestriction: (map['scmUseMainIpRestriction'] as bool).input(),
      use32BitWorker: (map['use32BitWorker'] as bool).input(),
      virtualApplications: (pulumi.Input.decodeList<GetWindowsWebAppSiteConfigVirtualApplication>(map['virtualApplications'], (value) => GetWindowsWebAppSiteConfigVirtualApplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vnetRouteAllEnabled: (map['vnetRouteAllEnabled'] as bool).input(),
      websocketsEnabled: (map['websocketsEnabled'] as bool).input(),
      windowsFxVersion: (map['windowsFxVersion'] as String).input(),
      workerCount: (map['workerCount'] as int).input(),
    );
  }
}

