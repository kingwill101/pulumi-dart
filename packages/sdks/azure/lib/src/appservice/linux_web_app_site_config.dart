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
  /// &gt; **Note:** `alwaysOn` must be explicitly set to `false` when using `Free`, `F1`, `D1`, or `Shared` Service Plans.
  final pulumi.Input<bool?>? alwaysOn;
  /// The URL to the API Definition for this Linux Web App.
  final pulumi.Input<String?>? apiDefinitionUrl;
  /// The API Management API ID this Linux Web App is associated with.
  final pulumi.Input<String?>? apiManagementApiId;
  /// The App command line to launch.
  final pulumi.Input<String?>? appCommandLine;
  /// A `applicationStack` block as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigApplicationStack?>? applicationStack;
  /// A `autoHealSetting` block as defined above. Required with `autoHeal`.
  final pulumi.Input<LinuxWebAppSiteConfigAutoHealSetting?>? autoHealSetting;
  /// The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  final pulumi.Input<String?>? containerRegistryManagedIdentityClientId;
  /// Should connections for Azure Container Registry use Managed Identity.
  final pulumi.Input<bool?>? containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigCors?>? cors;
  /// Specifies a list of Default Documents for the Linux Web App.
  final pulumi.Input<List<String>?>? defaultDocuments;
  final pulumi.Input<bool?>? detailedErrorLoggingEnabled;
  /// The State of FTP / FTPS service. Possible values include `AllAllowed`, `FtpsOnly`, and `Disabled`. Defaults to `Disabled`.
  ///
  /// &gt; **Note:** Azure defaults this value to `AllAllowed`, however, in the interests of security Terraform will default this to `Disabled` to ensure the user makes a conscious choice to enable it.
  final pulumi.Input<String?>? ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `healthCheckPath`.
  final pulumi.Input<int?>? healthCheckEvictionTimeInMin;
  /// The path to the Health Check.
  final pulumi.Input<String?>? healthCheckPath;
  /// Should the HTTP2 be enabled?
  final pulumi.Input<bool?>? http2Enabled;
  /// The Default action for traffic that does not match any `ipRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String?>? ipRestrictionDefaultAction;
  /// One or more `ipRestriction` blocks as defined above.
  final pulumi.Input<List<LinuxWebAppSiteConfigIpRestriction>?>? ipRestrictions;
  final pulumi.Input<String?>? linuxFxVersion;
  /// The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final pulumi.Input<String?>? loadBalancingMode;
  /// Use Local MySQL. Defaults to `false`.
  final pulumi.Input<bool?>? localMysqlEnabled;
  /// Managed pipeline mode. Possible values include `Integrated`, and `Classic`. Defaults to `Integrated`.
  final pulumi.Input<String?>? managedPipelineMode;
  /// The configures the minimum cipher suite of TLS required for SSL requests. Possible values include: `TLS_AES_128_GCM_SHA256`,`TLS_AES_256_GCM_SHA384"`,`TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"`, `TLS_RSA_WITH_AES_128_CBC_SHA"`,`TLS_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_RSA_WITH_AES_256_CBC_SHA"`,`TLS_RSA_WITH_AES_256_CBC_SHA256"`,`TLS_RSA_WITH_AES_256_GCM_SHA384"`.
  final pulumi.Input<String?>? minimumTlsCipherSuite;
  /// The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String?>? minimumTlsVersion;
  /// Should Remote Debugging be enabled? Defaults to `false`.
  final pulumi.Input<bool?>? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final pulumi.Input<String?>? remoteDebuggingVersion;
  /// The Default action for traffic that does not match any `scmIpRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String?>? scmIpRestrictionDefaultAction;
  /// One or more `scmIpRestriction` blocks as defined above.
  final pulumi.Input<List<LinuxWebAppSiteConfigScmIpRestriction>?>? scmIpRestrictions;
  /// The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  final pulumi.Input<String?>? scmMinimumTlsVersion;
  final pulumi.Input<String?>? scmType;
  /// Should the Linux Web App `ipRestriction` configuration be used for the SCM also.
  final pulumi.Input<bool?>? scmUseMainIpRestriction;
  /// Should the Linux Web App use a 32-bit worker? Defaults to `true`.
  final pulumi.Input<bool?>? use32BitWorker;
  /// Should all outbound traffic have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final pulumi.Input<bool?>? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled? Defaults to `false`.
  final pulumi.Input<bool?>? websocketsEnabled;
  /// The number of Workers for this Linux App Service.
  final pulumi.Input<int?>? workerCount;

  /// Creates a new [LinuxWebAppSiteConfig].
  /// [alwaysOn] If this Linux Web App is Always On enabled. Defaults to `true`.
  /// [apiDefinitionUrl] The URL to the API Definition for this Linux Web App.
  /// [apiManagementApiId] The API Management API ID this Linux Web App is associated with.
  /// [appCommandLine] The App command line to launch.
  /// [applicationStack] A `applicationStack` block as defined above.
  /// [autoHealSetting] A `autoHealSetting` block as defined above. Required with `autoHeal`.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Should connections for Azure Container Registry use Managed Identity.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] Specifies a list of Default Documents for the Linux Web App.
  /// [detailedErrorLoggingEnabled] Optional.
  /// [ftpsState] The State of FTP / FTPS service. Possible values include `AllAllowed`, `FtpsOnly`, and `Disabled`. Defaults to `Disabled`.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `healthCheckPath`.
  /// [healthCheckPath] The path to the Health Check.
  /// [http2Enabled] Should the HTTP2 be enabled?
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ipRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] One or more `ipRestriction` blocks as defined above.
  /// [linuxFxVersion] Optional.
  /// [loadBalancingMode] The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [localMysqlEnabled] Use Local MySQL. Defaults to `false`.
  /// [managedPipelineMode] Managed pipeline mode. Possible values include `Integrated`, and `Classic`. Defaults to `Integrated`.
  /// [minimumTlsCipherSuite] The configures the minimum cipher suite of TLS required for SSL requests. Possible values include: `TLS_AES_128_GCM_SHA256`,`TLS_AES_256_GCM_SHA384"`,`TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"`,`TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"`,`TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"`, `TLS_RSA_WITH_AES_128_CBC_SHA"`,`TLS_RSA_WITH_AES_128_CBC_SHA256"`,`TLS_RSA_WITH_AES_128_GCM_SHA256"`,`TLS_RSA_WITH_AES_256_CBC_SHA"`,`TLS_RSA_WITH_AES_256_CBC_SHA256"`,`TLS_RSA_WITH_AES_256_GCM_SHA384"`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled? Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scmIpRestriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] One or more `scmIpRestriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
  /// [scmType] Optional.
  /// [scmUseMainIpRestriction] Should the Linux Web App `ipRestriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Linux Web App use a 32-bit worker? Defaults to `true`.
  /// [vnetRouteAllEnabled] Should all outbound traffic have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled? Defaults to `false`.
  /// [workerCount] The number of Workers for this Linux App Service.
  const LinuxWebAppSiteConfig({
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
    this.minimumTlsCipherSuite,
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
      'minimumTlsCipherSuite': ?minimumTlsCipherSuite,
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
      alwaysOn: (() { final guardedValue = map['alwaysOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      apiDefinitionUrl: (() { final guardedValue = map['apiDefinitionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiManagementApiId: (() { final guardedValue = map['apiManagementApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appCommandLine: (() { final guardedValue = map['appCommandLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationStack: (() { final guardedValue = map['applicationStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSiteConfigApplicationStack.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoHealSetting: (() { final guardedValue = map['autoHealSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSiteConfigAutoHealSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerRegistryManagedIdentityClientId: (() { final guardedValue = map['containerRegistryManagedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryUseManagedIdentity: (() { final guardedValue = map['containerRegistryUseManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSiteConfigCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultDocuments: (() { final guardedValue = map['defaultDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      detailedErrorLoggingEnabled: (() { final guardedValue = map['detailedErrorLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ftpsState: (() { final guardedValue = map['ftpsState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckEvictionTimeInMin: (() { final guardedValue = map['healthCheckEvictionTimeInMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipRestrictionDefaultAction: (() { final guardedValue = map['ipRestrictionDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRestrictions: (() { final guardedValue = map['ipRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxWebAppSiteConfigIpRestriction>(guardedValue, (value) => LinuxWebAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linuxFxVersion: (() { final guardedValue = map['linuxFxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingMode: (() { final guardedValue = map['loadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localMysqlEnabled: (() { final guardedValue = map['localMysqlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedPipelineMode: (() { final guardedValue = map['managedPipelineMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsCipherSuite: (() { final guardedValue = map['minimumTlsCipherSuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDebuggingEnabled: (() { final guardedValue = map['remoteDebuggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteDebuggingVersion: (() { final guardedValue = map['remoteDebuggingVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmIpRestrictionDefaultAction: (() { final guardedValue = map['scmIpRestrictionDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmIpRestrictions: (() { final guardedValue = map['scmIpRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxWebAppSiteConfigScmIpRestriction>(guardedValue, (value) => LinuxWebAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scmMinimumTlsVersion: (() { final guardedValue = map['scmMinimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmType: (() { final guardedValue = map['scmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmUseMainIpRestriction: (() { final guardedValue = map['scmUseMainIpRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      use32BitWorker: (() { final guardedValue = map['use32BitWorker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vnetRouteAllEnabled: (() { final guardedValue = map['vnetRouteAllEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      websocketsEnabled: (() { final guardedValue = map['websocketsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
