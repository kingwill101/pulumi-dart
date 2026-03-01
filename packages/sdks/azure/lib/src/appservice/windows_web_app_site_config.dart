// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_site_config_application_stack.dart';
import 'windows_web_app_site_config_auto_heal_setting.dart';
import 'windows_web_app_site_config_cors.dart';
import 'windows_web_app_site_config_handler_mapping.dart';
import 'windows_web_app_site_config_ip_restriction.dart';
import 'windows_web_app_site_config_scm_ip_restriction.dart';
import 'windows_web_app_site_config_virtual_application.dart';

class WindowsWebAppSiteConfig {
  /// If this Windows Web App is Always On enabled. Defaults to `true`.
  ///
  /// > **Note:** `always_on` must be explicitly set to `false` when using `Free`, `F1`, `D1`, or `Shared` Service Plans.
  final bool? alwaysOn;
  /// The URL to the API Definition for this Windows Web App.
  final String? apiDefinitionUrl;
  /// The API Management API ID this Windows Web App Slot is associated with.
  final String? apiManagementApiId;
  /// The App command line to launch.
  final String? appCommandLine;
  /// A `application_stack` block as defined above.
  final WindowsWebAppSiteConfigApplicationStack? applicationStack;
  /// A `auto_heal_setting` block as defined above. Required with `auto_heal`.
  final WindowsWebAppSiteConfigAutoHealSetting? autoHealSetting;
  /// The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  final String? containerRegistryManagedIdentityClientId;
  /// Should connections for Azure Container Registry use Managed Identity.
  final bool? containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final WindowsWebAppSiteConfigCors? cors;
  /// Specifies a list of Default Documents for the Windows Web App.
  final List<String>? defaultDocuments;
  final bool? detailedErrorLoggingEnabled;
  /// The State of FTP / FTPS service. Possible values include: `AllAllowed`, `FtpsOnly`, `Disabled`. Defaults to `Disabled`.
  ///
  /// > **Note:** Azure defaults this value to `AllAllowed`, however, in the interests of security Terraform will default this to `Disabled` to ensure the user makes a conscious choice to enable it.
  final String? ftpsState;
  /// One or more `handler_mapping` blocks as defined below.
  final List<WindowsWebAppSiteConfigHandlerMapping>? handlerMappings;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  final int? healthCheckEvictionTimeInMin;
  /// The path to the Health Check.
  final String? healthCheckPath;
  /// Should the HTTP2 be enabled?
  final bool? http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final String? ipRestrictionDefaultAction;
  /// One or more `ip_restriction` blocks as defined above.
  final List<WindowsWebAppSiteConfigIpRestriction>? ipRestrictions;
  final String? linuxFxVersion;
  /// The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final String? loadBalancingMode;
  /// Use Local MySQL. Defaults to `false`.
  final bool? localMysqlEnabled;
  /// Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  final String? managedPipelineMode;
  /// The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final String? minimumTlsVersion;
  /// Should Remote Debugging be enabled. Defaults to `false`.
  final bool? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final String? remoteDebuggingVersion;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final String? scmIpRestrictionDefaultAction;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final List<WindowsWebAppSiteConfigScmIpRestriction>? scmIpRestrictions;
  /// The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final String? scmMinimumTlsVersion;
  final String? scmType;
  /// Should the Windows Web App `ip_restriction` configuration be used for the SCM also.
  final bool? scmUseMainIpRestriction;
  /// Should the Windows Web App use a 32-bit worker. Defaults to `true`.
  final bool? use32BitWorker;
  /// One or more `virtual_application` blocks as defined below.
  final List<WindowsWebAppSiteConfigVirtualApplication>? virtualApplications;
  /// Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final bool? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled. Defaults to `false`.
  final bool? websocketsEnabled;
  final String? windowsFxVersion;
  /// The number of Workers for this Windows App Service.
  final int? workerCount;

  /// Creates a new [WindowsWebAppSiteConfig].
  /// [alwaysOn] If this Windows Web App is Always On enabled. Defaults to `true`.
  /// [apiDefinitionUrl] The URL to the API Definition for this Windows Web App.
  /// [apiManagementApiId] The API Management API ID this Windows Web App Slot is associated with.
  /// [appCommandLine] The App command line to launch.
  /// [applicationStack] A `application_stack` block as defined above.
  /// [autoHealSetting] A `auto_heal_setting` block as defined above. Required with `auto_heal`.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Should connections for Azure Container Registry use Managed Identity.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] Specifies a list of Default Documents for the Windows Web App.
  /// [detailedErrorLoggingEnabled] Optional.
  /// [ftpsState] The State of FTP / FTPS service. Possible values include: `AllAllowed`, `FtpsOnly`, `Disabled`. Defaults to `Disabled`.
  /// [handlerMappings] One or more `handler_mapping` blocks as defined below.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to the Health Check.
  /// [http2Enabled] Should the HTTP2 be enabled?
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [linuxFxVersion] Optional.
  /// [loadBalancingMode] The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [localMysqlEnabled] Use Local MySQL. Defaults to `false`.
  /// [managedPipelineMode] Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled. Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] Optional.
  /// [scmUseMainIpRestriction] Should the Windows Web App `ip_restriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Windows Web App use a 32-bit worker. Defaults to `true`.
  /// [virtualApplications] One or more `virtual_application` blocks as defined below.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled. Defaults to `false`.
  /// [windowsFxVersion] Optional.
  /// [workerCount] The number of Workers for this Windows App Service.
  WindowsWebAppSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.applicationStack,
    this.autoHealSetting,
    this.containerRegistryManagedIdentityClientId,
    this.containerRegistryUseManagedIdentity,
    this.cors,
    this.defaultDocuments,
    this.detailedErrorLoggingEnabled,
    this.ftpsState,
    this.handlerMappings,
    this.healthCheckEvictionTimeInMin,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictionDefaultAction,
    this.ipRestrictions,
    this.linuxFxVersion,
    this.loadBalancingMode,
    this.localMysqlEnabled,
    this.managedPipelineMode,
    this.minimumTlsVersion,
    this.remoteDebuggingEnabled,
    this.remoteDebuggingVersion,
    this.scmIpRestrictionDefaultAction,
    this.scmIpRestrictions,
    this.scmMinimumTlsVersion,
    this.scmType,
    this.scmUseMainIpRestriction,
    this.use32BitWorker,
    this.virtualApplications,
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
      'applicationStack': ?applicationStack == null ? null : applicationStack!.toMap(),
      'autoHealSetting': ?autoHealSetting == null ? null : autoHealSetting!.toMap(),
      'containerRegistryManagedIdentityClientId': ?containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': ?containerRegistryUseManagedIdentity,
      'cors': ?cors == null ? null : cors!.toMap(),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'ftpsState': ?ftpsState,
      'handlerMappings': ?handlerMappings == null ? null : pulumi.Input.encodeList<WindowsWebAppSiteConfigHandlerMapping, Map<String, dynamic>>(handlerMappings!, (value) => value.toMap()),
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?ipRestrictions == null ? null : pulumi.Input.encodeList<WindowsWebAppSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions!, (value) => value.toMap()),
      'linuxFxVersion': ?linuxFxVersion,
      'loadBalancingMode': ?loadBalancingMode,
      'localMysqlEnabled': ?localMysqlEnabled,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsVersion': ?minimumTlsVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?scmIpRestrictions == null ? null : pulumi.Input.encodeList<WindowsWebAppSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions!, (value) => value.toMap()),
      'scmMinimumTlsVersion': ?scmMinimumTlsVersion,
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorker': ?use32BitWorker,
      'virtualApplications': ?virtualApplications == null ? null : pulumi.Input.encodeList<WindowsWebAppSiteConfigVirtualApplication, Map<String, dynamic>>(virtualApplications!, (value) => value.toMap()),
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'windowsFxVersion': ?windowsFxVersion,
      'workerCount': ?workerCount,
    };
  }

  factory WindowsWebAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfig(
      alwaysOn: map['alwaysOn'] == null ? null : map['alwaysOn'] as bool,
      apiDefinitionUrl: map['apiDefinitionUrl'] == null ? null : map['apiDefinitionUrl'] as String,
      apiManagementApiId: map['apiManagementApiId'] == null ? null : map['apiManagementApiId'] as String,
      appCommandLine: map['appCommandLine'] == null ? null : map['appCommandLine'] as String,
      applicationStack: map['applicationStack'] == null ? null : WindowsWebAppSiteConfigApplicationStack.fromMap((map['applicationStack'] as Map).cast<String, dynamic>()),
      autoHealSetting: map['autoHealSetting'] == null ? null : WindowsWebAppSiteConfigAutoHealSetting.fromMap((map['autoHealSetting'] as Map).cast<String, dynamic>()),
      containerRegistryManagedIdentityClientId: map['containerRegistryManagedIdentityClientId'] == null ? null : map['containerRegistryManagedIdentityClientId'] as String,
      containerRegistryUseManagedIdentity: map['containerRegistryUseManagedIdentity'] == null ? null : map['containerRegistryUseManagedIdentity'] as bool,
      cors: map['cors'] == null ? null : WindowsWebAppSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      defaultDocuments: map['defaultDocuments'] == null ? null : (map['defaultDocuments'] as List).cast<String>(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : map['detailedErrorLoggingEnabled'] as bool,
      ftpsState: map['ftpsState'] == null ? null : map['ftpsState'] as String,
      handlerMappings: map['handlerMappings'] == null ? null : pulumi.Input.decodeList<WindowsWebAppSiteConfigHandlerMapping>(map['handlerMappings'], (value) => WindowsWebAppSiteConfigHandlerMapping.fromMap((value as Map).cast<String, dynamic>())),
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] == null ? null : map['healthCheckEvictionTimeInMin'] as int,
      healthCheckPath: map['healthCheckPath'] == null ? null : map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] == null ? null : map['http2Enabled'] as bool,
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] == null ? null : map['ipRestrictionDefaultAction'] as String,
      ipRestrictions: map['ipRestrictions'] == null ? null : pulumi.Input.decodeList<WindowsWebAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => WindowsWebAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      linuxFxVersion: map['linuxFxVersion'] == null ? null : map['linuxFxVersion'] as String,
      loadBalancingMode: map['loadBalancingMode'] == null ? null : map['loadBalancingMode'] as String,
      localMysqlEnabled: map['localMysqlEnabled'] == null ? null : map['localMysqlEnabled'] as bool,
      managedPipelineMode: map['managedPipelineMode'] == null ? null : map['managedPipelineMode'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion'] as String,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : map['remoteDebuggingVersion'] as String,
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] == null ? null : map['scmIpRestrictionDefaultAction'] as String,
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : pulumi.Input.decodeList<WindowsWebAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => WindowsWebAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmMinimumTlsVersion: map['scmMinimumTlsVersion'] == null ? null : map['scmMinimumTlsVersion'] as String,
      scmType: map['scmType'] == null ? null : map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : map['scmUseMainIpRestriction'] as bool,
      use32BitWorker: map['use32BitWorker'] == null ? null : map['use32BitWorker'] as bool,
      virtualApplications: map['virtualApplications'] == null ? null : pulumi.Input.decodeList<WindowsWebAppSiteConfigVirtualApplication>(map['virtualApplications'], (value) => WindowsWebAppSiteConfigVirtualApplication.fromMap((value as Map).cast<String, dynamic>())),
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] == null ? null : map['websocketsEnabled'] as bool,
      windowsFxVersion: map['windowsFxVersion'] == null ? null : map['windowsFxVersion'] as String,
      workerCount: map['workerCount'] == null ? null : map['workerCount'] as int,
    );
  }
}

