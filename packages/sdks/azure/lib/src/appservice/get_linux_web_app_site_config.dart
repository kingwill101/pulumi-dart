// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_site_config_application_stack.dart';
import 'get_linux_web_app_site_config_auto_heal_setting.dart';
import 'get_linux_web_app_site_config_cor.dart';
import 'get_linux_web_app_site_config_ip_restriction.dart';
import 'get_linux_web_app_site_config_scm_ip_restriction.dart';

class GetLinuxWebAppSiteConfig {
  /// Is this Linux Web App is Always On enabled.
  final bool alwaysOn;
  /// The ID of the APIM configuration for this Linux Web App.
  final String apiDefinitionUrl;
  /// The ID of the API Management API for this Linux Web App.
  final String apiManagementApiId;
  /// The command line used to launch this app.
  final String appCommandLine;
  /// A `application_stack` block as defined above.
  final List<GetLinuxWebAppSiteConfigApplicationStack> applicationStacks;
  /// A `auto_heal_setting` block as defined above.
  final List<GetLinuxWebAppSiteConfigAutoHealSetting> autoHealSettings;
  /// The Client ID of the Managed Service Identity used for connections to the Azure Container Registry.
  final String containerRegistryManagedIdentityClientId;
  /// Do connections for Azure Container Registry use Managed Identity.
  final bool containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final List<GetLinuxWebAppSiteConfigCor> cors;
  /// The list of Default Documents for the Linux Web App.
  final List<String> defaultDocuments;
  /// Is Detailed Error Logging enabled.
  final bool detailedErrorLoggingEnabled;
  /// The State of FTP / FTPS service.
  final String ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  final int healthCheckEvictionTimeInMin;
  /// The path to the Health Check endpoint.
  final String healthCheckPath;
  /// Is HTTP2.0 enabled.
  final bool http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule.
  final String ipRestrictionDefaultAction;
  /// A `ip_restriction` block as defined above.
  final List<GetLinuxWebAppSiteConfigIpRestriction> ipRestrictions;
  /// The `LinuxFXVersion` string.
  final String linuxFxVersion;
  /// The site Load Balancing Mode.
  final String loadBalancingMode;
  /// Is the Local MySQL enabled.
  final bool localMysqlEnabled;
  /// The Managed Pipeline Mode.
  final String managedPipelineMode;
  /// The Minimum version of TLS for requests.
  final String minimumTlsVersion;
  /// Is Remote Debugging enabled.
  final bool remoteDebuggingEnabled;
  /// The Remote Debugging Version.
  final String remoteDebuggingVersion;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule.
  final String scmIpRestrictionDefaultAction;
  /// A `scm_ip_restriction` block as defined above.
  final List<GetLinuxWebAppSiteConfigScmIpRestriction> scmIpRestrictions;
  /// The Minimum version of TLS for requests to SCM.
  final String scmMinimumTlsVersion;
  /// The Source Control Management Type in use.
  final String scmType;
  /// Is the Linux Web App `ip_restriction` configuration used for the SCM also.
  final bool scmUseMainIpRestriction;
  /// Does the Linux Web App use a 32-bit worker.
  final bool use32BitWorker;
  /// Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  final bool vnetRouteAllEnabled;
  /// Are Web Sockets enabled?
  final bool websocketsEnabled;
  /// The number of Workers for this Linux App Service.
  final int workerCount;

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
      'applicationStacks': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigApplicationStack, Map<String, dynamic>>(applicationStacks, (value) => value.toMap()),
      'autoHealSettings': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSetting, Map<String, dynamic>>(autoHealSettings, (value) => value.toMap()),
      'containerRegistryManagedIdentityClientId': containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': containerRegistryUseManagedIdentity,
      'cors': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigCor, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': defaultDocuments,
      'detailedErrorLoggingEnabled': detailedErrorLoggingEnabled,
      'ftpsState': ftpsState,
      'healthCheckEvictionTimeInMin': healthCheckEvictionTimeInMin,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictionDefaultAction': ipRestrictionDefaultAction,
      'ipRestrictions': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions, (value) => value.toMap()),
      'linuxFxVersion': linuxFxVersion,
      'loadBalancingMode': loadBalancingMode,
      'localMysqlEnabled': localMysqlEnabled,
      'managedPipelineMode': managedPipelineMode,
      'minimumTlsVersion': minimumTlsVersion,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'scmIpRestrictionDefaultAction': scmIpRestrictionDefaultAction,
      'scmIpRestrictions': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions, (value) => value.toMap()),
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
      alwaysOn: map['alwaysOn'] as bool,
      apiDefinitionUrl: map['apiDefinitionUrl'] as String,
      apiManagementApiId: map['apiManagementApiId'] as String,
      appCommandLine: map['appCommandLine'] as String,
      applicationStacks: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigApplicationStack>(map['applicationStacks'], (value) => GetLinuxWebAppSiteConfigApplicationStack.fromMap((value as Map).cast<String, dynamic>())),
      autoHealSettings: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSetting>(map['autoHealSettings'], (value) => GetLinuxWebAppSiteConfigAutoHealSetting.fromMap((value as Map).cast<String, dynamic>())),
      containerRegistryManagedIdentityClientId: map['containerRegistryManagedIdentityClientId'] as String,
      containerRegistryUseManagedIdentity: map['containerRegistryUseManagedIdentity'] as bool,
      cors: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigCor>(map['cors'], (value) => GetLinuxWebAppSiteConfigCor.fromMap((value as Map).cast<String, dynamic>())),
      defaultDocuments: (map['defaultDocuments'] as List).cast<String>(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] as bool,
      ftpsState: map['ftpsState'] as String,
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] as int,
      healthCheckPath: map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] as bool,
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] as String,
      ipRestrictions: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => GetLinuxWebAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      linuxFxVersion: map['linuxFxVersion'] as String,
      loadBalancingMode: map['loadBalancingMode'] as String,
      localMysqlEnabled: map['localMysqlEnabled'] as bool,
      managedPipelineMode: map['managedPipelineMode'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] as String,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] as String,
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] as String,
      scmIpRestrictions: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => GetLinuxWebAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
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

