// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_site_config_application_stack.dart';
import 'get_linux_web_app_site_config_auto_heal_setting.dart';
import 'get_linux_web_app_site_config_cor.dart';
import 'get_linux_web_app_site_config_ip_restriction.dart';
import 'get_linux_web_app_site_config_scm_ip_restriction.dart';

class GetLinuxWebAppSiteConfig {
  /// Is this Linux Web App is Always On enabled.
  final pulumi.Input<bool> alwaysOn;
  /// The ID of the APIM configuration for this Linux Web App.
  final pulumi.Input<String> apiDefinitionUrl;
  /// The ID of the API Management API for this Linux Web App.
  final pulumi.Input<String> apiManagementApiId;
  /// The command line used to launch this app.
  final pulumi.Input<String> appCommandLine;
  /// A `application_stack` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigApplicationStack>> applicationStacks;
  /// A `auto_heal_setting` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigAutoHealSetting>> autoHealSettings;
  /// The Client ID of the Managed Service Identity used for connections to the Azure Container Registry.
  final pulumi.Input<String> containerRegistryManagedIdentityClientId;
  /// Do connections for Azure Container Registry use Managed Identity.
  final pulumi.Input<bool> containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigCor>> cors;
  /// The list of Default Documents for the Linux Web App.
  final pulumi.Input<List<String>> defaultDocuments;
  /// Is Detailed Error Logging enabled.
  final pulumi.Input<bool> detailedErrorLoggingEnabled;
  /// The State of FTP / FTPS service.
  final pulumi.Input<String> ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  final pulumi.Input<int> healthCheckEvictionTimeInMin;
  /// The path to the Health Check endpoint.
  final pulumi.Input<String> healthCheckPath;
  /// Is HTTP2.0 enabled.
  final pulumi.Input<bool> http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule.
  final pulumi.Input<String> ipRestrictionDefaultAction;
  /// A `ip_restriction` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigIpRestriction>> ipRestrictions;
  /// The `LinuxFXVersion` string.
  final pulumi.Input<String> linuxFxVersion;
  /// The site Load Balancing Mode.
  final pulumi.Input<String> loadBalancingMode;
  /// Is the Local MySQL enabled.
  final pulumi.Input<bool> localMysqlEnabled;
  /// The Managed Pipeline Mode.
  final pulumi.Input<String> managedPipelineMode;
  /// The Minimum version of TLS for requests.
  final pulumi.Input<String> minimumTlsVersion;
  /// Is Remote Debugging enabled.
  final pulumi.Input<bool> remoteDebuggingEnabled;
  /// The Remote Debugging Version.
  final pulumi.Input<String> remoteDebuggingVersion;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule.
  final pulumi.Input<String> scmIpRestrictionDefaultAction;
  /// A `scm_ip_restriction` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigScmIpRestriction>> scmIpRestrictions;
  /// The Minimum version of TLS for requests to SCM.
  final pulumi.Input<String> scmMinimumTlsVersion;
  /// The Source Control Management Type in use.
  final pulumi.Input<String> scmType;
  /// Is the Linux Web App `ip_restriction` configuration used for the SCM also.
  final pulumi.Input<bool> scmUseMainIpRestriction;
  /// Does the Linux Web App use a 32-bit worker.
  final pulumi.Input<bool> use32BitWorker;
  /// Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  final pulumi.Input<bool> vnetRouteAllEnabled;
  /// Are Web Sockets enabled?
  final pulumi.Input<bool> websocketsEnabled;
  /// The number of Workers for this Linux App Service.
  final pulumi.Input<int> workerCount;

  /// Creates a new [GetLinuxWebAppSiteConfig].
  /// [alwaysOn] Is this Linux Web App is Always On enabled.
  /// [apiDefinitionUrl] The ID of the APIM configuration for this Linux Web App.
  /// [apiManagementApiId] The ID of the API Management API for this Linux Web App.
  /// [appCommandLine] The command line used to launch this app.
  /// [applicationStacks] A `application_stack` block as defined above.
  /// [autoHealSettings] A `auto_heal_setting` block as defined above.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity used for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Do connections for Azure Container Registry use Managed Identity.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] The list of Default Documents for the Linux Web App.
  /// [detailedErrorLoggingEnabled] Is Detailed Error Logging enabled.
  /// [ftpsState] The State of FTP / FTPS service.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  /// [healthCheckPath] The path to the Health Check endpoint.
  /// [http2Enabled] Is HTTP2.0 enabled.
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule.
  /// [ipRestrictions] A `ip_restriction` block as defined above.
  /// [linuxFxVersion] The `LinuxFXVersion` string.
  /// [loadBalancingMode] The site Load Balancing Mode.
  /// [localMysqlEnabled] Is the Local MySQL enabled.
  /// [managedPipelineMode] The Managed Pipeline Mode.
  /// [minimumTlsVersion] The Minimum version of TLS for requests.
  /// [remoteDebuggingEnabled] Is Remote Debugging enabled.
  /// [remoteDebuggingVersion] The Remote Debugging Version.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule.
  /// [scmIpRestrictions] A `scm_ip_restriction` block as defined above.
  /// [scmMinimumTlsVersion] The Minimum version of TLS for requests to SCM.
  /// [scmType] The Source Control Management Type in use.
  /// [scmUseMainIpRestriction] Is the Linux Web App `ip_restriction` configuration used for the SCM also.
  /// [use32BitWorker] Does the Linux Web App use a 32-bit worker.
  /// [vnetRouteAllEnabled] Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are Web Sockets enabled?
  /// [workerCount] The number of Workers for this Linux App Service.
  GetLinuxWebAppSiteConfig({
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
    required this.healthCheckEvictionTimeInMin,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictionDefaultAction,
    required this.ipRestrictions,
    required this.linuxFxVersion,
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
      'applicationStacks': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigApplicationStack>, List<Map<String, dynamic>>>(applicationStacks, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigApplicationStack, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoHealSettings': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigAutoHealSetting>, List<Map<String, dynamic>>>(autoHealSettings, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerRegistryManagedIdentityClientId': containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': containerRegistryUseManagedIdentity,
      'cors': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDocuments': defaultDocuments,
      'detailedErrorLoggingEnabled': detailedErrorLoggingEnabled,
      'ftpsState': ftpsState,
      'healthCheckEvictionTimeInMin': healthCheckEvictionTimeInMin,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictionDefaultAction': ipRestrictionDefaultAction,
      'ipRestrictions': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linuxFxVersion': linuxFxVersion,
      'loadBalancingMode': loadBalancingMode,
      'localMysqlEnabled': localMysqlEnabled,
      'managedPipelineMode': managedPipelineMode,
      'minimumTlsVersion': minimumTlsVersion,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'scmIpRestrictionDefaultAction': scmIpRestrictionDefaultAction,
      'scmIpRestrictions': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinimumTlsVersion': scmMinimumTlsVersion,
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorker': use32BitWorker,
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
      'workerCount': workerCount,
    };
  }

  factory GetLinuxWebAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfig(
      alwaysOn: (map['alwaysOn'] as bool).input(),
      apiDefinitionUrl: (map['apiDefinitionUrl'] as String).input(),
      apiManagementApiId: (map['apiManagementApiId'] as String).input(),
      appCommandLine: (map['appCommandLine'] as String).input(),
      applicationStacks: (pulumi.Input.decodeList<GetLinuxWebAppSiteConfigApplicationStack>(map['applicationStacks'], (value) => GetLinuxWebAppSiteConfigApplicationStack.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoHealSettings: (pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSetting>(map['autoHealSettings'], (value) => GetLinuxWebAppSiteConfigAutoHealSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerRegistryManagedIdentityClientId: (map['containerRegistryManagedIdentityClientId'] as String).input(),
      containerRegistryUseManagedIdentity: (map['containerRegistryUseManagedIdentity'] as bool).input(),
      cors: (pulumi.Input.decodeList<GetLinuxWebAppSiteConfigCor>(map['cors'], (value) => GetLinuxWebAppSiteConfigCor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultDocuments: ((map['defaultDocuments'] as List).cast<String>()).input(),
      detailedErrorLoggingEnabled: (map['detailedErrorLoggingEnabled'] as bool).input(),
      ftpsState: (map['ftpsState'] as String).input(),
      healthCheckEvictionTimeInMin: (map['healthCheckEvictionTimeInMin'] as int).input(),
      healthCheckPath: (map['healthCheckPath'] as String).input(),
      http2Enabled: (map['http2Enabled'] as bool).input(),
      ipRestrictionDefaultAction: (map['ipRestrictionDefaultAction'] as String).input(),
      ipRestrictions: (pulumi.Input.decodeList<GetLinuxWebAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => GetLinuxWebAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linuxFxVersion: (map['linuxFxVersion'] as String).input(),
      loadBalancingMode: (map['loadBalancingMode'] as String).input(),
      localMysqlEnabled: (map['localMysqlEnabled'] as bool).input(),
      managedPipelineMode: (map['managedPipelineMode'] as String).input(),
      minimumTlsVersion: (map['minimumTlsVersion'] as String).input(),
      remoteDebuggingEnabled: (map['remoteDebuggingEnabled'] as bool).input(),
      remoteDebuggingVersion: (map['remoteDebuggingVersion'] as String).input(),
      scmIpRestrictionDefaultAction: (map['scmIpRestrictionDefaultAction'] as String).input(),
      scmIpRestrictions: (pulumi.Input.decodeList<GetLinuxWebAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => GetLinuxWebAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmMinimumTlsVersion: (map['scmMinimumTlsVersion'] as String).input(),
      scmType: (map['scmType'] as String).input(),
      scmUseMainIpRestriction: (map['scmUseMainIpRestriction'] as bool).input(),
      use32BitWorker: (map['use32BitWorker'] as bool).input(),
      vnetRouteAllEnabled: (map['vnetRouteAllEnabled'] as bool).input(),
      websocketsEnabled: (map['websocketsEnabled'] as bool).input(),
      workerCount: (map['workerCount'] as int).input(),
    );
  }
}

