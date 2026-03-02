// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_site_config_application_stack.dart';
import 'linux_web_app_site_config_auto_heal_setting.dart';
import 'linux_web_app_site_config_cors.dart';
import 'linux_web_app_site_config_ip_restriction.dart';
import 'linux_web_app_site_config_scm_ip_restriction.dart';

class LinuxWebAppSiteConfig {
  /// If this Linux Web App is Always On enabled. Defaults to `true`.
  ///
  /// > **Note:** `always_on` must be explicitly set to `false` when using `Free`, `F1`, `D1`, or `Shared` Service Plans.
  final pulumi.Input<bool>? alwaysOn;
  /// The URL to the API Definition for this Linux Web App.
  final pulumi.Input<String>? apiDefinitionUrl;
  /// The API Management API ID this Linux Web App is associated with.
  final pulumi.Input<String>? apiManagementApiId;
  /// The App command line to launch.
  final pulumi.Input<String>? appCommandLine;
  /// A `application_stack` block as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigApplicationStack>? applicationStack;
  /// A `auto_heal_setting` block as defined above. Required with `auto_heal`.
  final pulumi.Input<LinuxWebAppSiteConfigAutoHealSetting>? autoHealSetting;
  /// The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  final pulumi.Input<String>? containerRegistryManagedIdentityClientId;
  /// Should connections for Azure Container Registry use Managed Identity.
  final pulumi.Input<bool>? containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigCors>? cors;
  /// Specifies a list of Default Documents for the Linux Web App.
  final pulumi.Input<List<String>>? defaultDocuments;
  final pulumi.Input<bool>? detailedErrorLoggingEnabled;
  /// The State of FTP / FTPS service. Possible values include `AllAllowed`, `FtpsOnly`, and `Disabled`. Defaults to `Disabled`.
  ///
  /// > **Note:** Azure defaults this value to `AllAllowed`, however, in the interests of security Terraform will default this to `Disabled` to ensure the user makes a conscious choice to enable it.
  final pulumi.Input<String>? ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  final pulumi.Input<int>? healthCheckEvictionTimeInMin;
  /// The path to the Health Check.
  final pulumi.Input<String>? healthCheckPath;
  /// Should the HTTP2 be enabled?
  final pulumi.Input<bool>? http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? ipRestrictionDefaultAction;
  /// One or more `ip_restriction` blocks as defined above.
  final pulumi.Input<List<LinuxWebAppSiteConfigIpRestriction>>? ipRestrictions;
  final pulumi.Input<String>? linuxFxVersion;
  /// The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final pulumi.Input<String>? loadBalancingMode;
  /// Use Local MySQL. Defaults to `false`.
  final pulumi.Input<bool>? localMysqlEnabled;
  /// Managed pipeline mode. Possible values include `Integrated`, and `Classic`. Defaults to `Integrated`.
  final pulumi.Input<String>? managedPipelineMode;
  /// The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? minimumTlsVersion;
  /// Should Remote Debugging be enabled? Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final pulumi.Input<String>? remoteDebuggingVersion;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? scmIpRestrictionDefaultAction;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final pulumi.Input<List<LinuxWebAppSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String>? scmMinimumTlsVersion;
  final pulumi.Input<String>? scmType;
  /// Should the Linux Web App `ip_restriction` configuration be used for the SCM also.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the Linux Web App use a 32-bit worker? Defaults to `true`.
  final pulumi.Input<bool>? use32BitWorker;
  /// Should all outbound traffic have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled? Defaults to `false`.
  final pulumi.Input<bool>? websocketsEnabled;
  /// The number of Workers for this Linux App Service.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [LinuxWebAppSiteConfig].
  /// [alwaysOn] If this Linux Web App is Always On enabled. Defaults to `true`.
  /// [apiDefinitionUrl] The URL to the API Definition for this Linux Web App.
  /// [apiManagementApiId] The API Management API ID this Linux Web App is associated with.
  /// [appCommandLine] The App command line to launch.
  /// [applicationStack] A `application_stack` block as defined above.
  /// [autoHealSetting] A `auto_heal_setting` block as defined above. Required with `auto_heal`.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Should connections for Azure Container Registry use Managed Identity.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] Specifies a list of Default Documents for the Linux Web App.
  /// [detailedErrorLoggingEnabled] Optional.
  /// [ftpsState] The State of FTP / FTPS service. Possible values include `AllAllowed`, `FtpsOnly`, and `Disabled`. Defaults to `Disabled`.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to the Health Check.
  /// [http2Enabled] Should the HTTP2 be enabled?
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [linuxFxVersion] Optional.
  /// [loadBalancingMode] The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [localMysqlEnabled] Use Local MySQL. Defaults to `false`.
  /// [managedPipelineMode] Managed pipeline mode. Possible values include `Integrated`, and `Classic`. Defaults to `Integrated`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled? Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] Optional.
  /// [scmUseMainIpRestriction] Should the Linux Web App `ip_restriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Linux Web App use a 32-bit worker? Defaults to `true`.
  /// [vnetRouteAllEnabled] Should all outbound traffic have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled? Defaults to `false`.
  /// [workerCount] The number of Workers for this Linux App Service.
  LinuxWebAppSiteConfig({
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
      'applicationStack': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfigApplicationStack, Map<String, dynamic>>(applicationStack, (value) => value.toMap()),
      'autoHealSetting': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfigAutoHealSetting, Map<String, dynamic>>(autoHealSetting, (value) => value.toMap()),
      'containerRegistryManagedIdentityClientId': ?containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': ?containerRegistryUseManagedIdentity,
      'cors': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'ftpsState': ?ftpsState,
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<LinuxWebAppSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linuxFxVersion': ?linuxFxVersion,
      'loadBalancingMode': ?loadBalancingMode,
      'localMysqlEnabled': ?localMysqlEnabled,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsVersion': ?minimumTlsVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<LinuxWebAppSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinimumTlsVersion': ?scmMinimumTlsVersion,
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorker': ?use32BitWorker,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'workerCount': ?workerCount,
    };
  }

  factory LinuxWebAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteConfig(
      alwaysOn: map['alwaysOn'] == null ? null : (map['alwaysOn'] as bool).input(),
      apiDefinitionUrl: map['apiDefinitionUrl'] == null ? null : (map['apiDefinitionUrl'] as String).input(),
      apiManagementApiId: map['apiManagementApiId'] == null ? null : (map['apiManagementApiId'] as String).input(),
      appCommandLine: map['appCommandLine'] == null ? null : (map['appCommandLine'] as String).input(),
      applicationStack: map['applicationStack'] == null ? null : (LinuxWebAppSiteConfigApplicationStack.fromMap((map['applicationStack'] as Map).cast<String, dynamic>())).input(),
      autoHealSetting: map['autoHealSetting'] == null ? null : (LinuxWebAppSiteConfigAutoHealSetting.fromMap((map['autoHealSetting'] as Map).cast<String, dynamic>())).input(),
      containerRegistryManagedIdentityClientId: map['containerRegistryManagedIdentityClientId'] == null ? null : (map['containerRegistryManagedIdentityClientId'] as String).input(),
      containerRegistryUseManagedIdentity: map['containerRegistryUseManagedIdentity'] == null ? null : (map['containerRegistryUseManagedIdentity'] as bool).input(),
      cors: map['cors'] == null ? null : (LinuxWebAppSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>())).input(),
      defaultDocuments: map['defaultDocuments'] == null ? null : ((map['defaultDocuments'] as List).cast<String>()).input(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] == null ? null : (map['detailedErrorLoggingEnabled'] as bool).input(),
      ftpsState: map['ftpsState'] == null ? null : (map['ftpsState'] as String).input(),
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] == null ? null : (map['healthCheckEvictionTimeInMin'] as int).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath'] as String).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled'] as bool).input(),
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] == null ? null : (map['ipRestrictionDefaultAction'] as String).input(),
      ipRestrictions: map['ipRestrictions'] == null ? null : (pulumi.Input.decodeList<LinuxWebAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => LinuxWebAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linuxFxVersion: map['linuxFxVersion'] == null ? null : (map['linuxFxVersion'] as String).input(),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : (map['loadBalancingMode'] as String).input(),
      localMysqlEnabled: map['localMysqlEnabled'] == null ? null : (map['localMysqlEnabled'] as bool).input(),
      managedPipelineMode: map['managedPipelineMode'] == null ? null : (map['managedPipelineMode'] as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion'] as String).input(),
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : (map['remoteDebuggingEnabled'] as bool).input(),
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : (map['remoteDebuggingVersion'] as String).input(),
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] == null ? null : (map['scmIpRestrictionDefaultAction'] as String).input(),
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : (pulumi.Input.decodeList<LinuxWebAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => LinuxWebAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
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

