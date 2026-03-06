// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_site_config_application_stack.dart';
import 'windows_web_app_slot_site_config_auto_heal_setting.dart';
import 'windows_web_app_slot_site_config_cors.dart';
import 'windows_web_app_slot_site_config_handler_mapping.dart';
import 'windows_web_app_slot_site_config_ip_restriction.dart';
import 'windows_web_app_slot_site_config_scm_ip_restriction.dart';
import 'windows_web_app_slot_site_config_virtual_application.dart';

class WindowsWebAppSlotSiteConfig {
  /// If this Windows Web App Slot is Always On enabled. Defaults to `true`.
  final pulumi.Input<bool>? alwaysOn;
  /// The URL to the API Definition for this Windows Web App Slot.
  final pulumi.Input<String>? apiDefinitionUrl;
  /// The API Management API ID this Windows Web App Slot os associated with.
  final pulumi.Input<String>? apiManagementApiId;
  /// The App command line to launch.
  final pulumi.Input<String>? appCommandLine;
  /// A `application_stack` block as defined above.
  final pulumi.Input<WindowsWebAppSlotSiteConfigApplicationStack>? applicationStack;
  /// A `auto_heal_setting` block as defined above. Required with `auto_heal`.
  final pulumi.Input<WindowsWebAppSlotSiteConfigAutoHealSetting>? autoHealSetting;
  /// The Windows Web App Slot Name to automatically swap to when deployment to that slot is successfully completed.
  ///
  /// &gt; **Note:** This must be a valid slot name on the target Windows Web App Slot.
  final pulumi.Input<String>? autoSwapSlotName;
  /// The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  final pulumi.Input<String>? containerRegistryManagedIdentityClientId;
  /// Should connections for Azure Container Registry use Managed Identity.
  final pulumi.Input<bool>? containerRegistryUseManagedIdentity;
  /// A `cors` block as defined above.
  final pulumi.Input<WindowsWebAppSlotSiteConfigCors>? cors;
  /// Specifies a list of Default Documents for the Windows Web App Slot.
  final pulumi.Input<List<String>>? defaultDocuments;
  final pulumi.Input<bool>? detailedErrorLoggingEnabled;
  /// The State of FTP / FTPS service. Possible values include: `AllAllowed`, `FtpsOnly`, `Disabled`. Defaults to `Disabled`.
  ///
  /// &gt; **Note:** Azure defaults this value to `AllAllowed`, however, in the interests of security Terraform will default this to `Disabled` to ensure the user makes a conscious choice to enable it.
  final pulumi.Input<String>? ftpsState;
  /// One or more `handler_mapping` blocks as defined below.
  final pulumi.Input<List<WindowsWebAppSlotSiteConfigHandlerMapping>>? handlerMappings;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  final pulumi.Input<int>? healthCheckEvictionTimeInMin;
  /// The path to the Health Check.
  final pulumi.Input<String>? healthCheckPath;
  /// Should the HTTP2 be enabled?
  final pulumi.Input<bool>? http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? ipRestrictionDefaultAction;
  /// One or more `ip_restriction` blocks as defined above.
  final pulumi.Input<List<WindowsWebAppSlotSiteConfigIpRestriction>>? ipRestrictions;
  /// The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  final pulumi.Input<String>? loadBalancingMode;
  /// Use Local MySQL. Defaults to `false`.
  final pulumi.Input<bool>? localMysqlEnabled;
  /// Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  final pulumi.Input<String>? managedPipelineMode;
  /// The configures the minimum version of TLS required for SSL requests. Possible values are `1.1`, `1.3`, `1.2` and `1.0`. Defaults to `1.2`.
  final pulumi.Input<String>? minimumTlsVersion;
  /// Should Remote Debugging be enabled. Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// The Remote Debugging Version. Currently only `VS2022` is supported.
  final pulumi.Input<String>? remoteDebuggingVersion;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? scmIpRestrictionDefaultAction;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final pulumi.Input<List<WindowsWebAppSlotSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.1`, `1.3`, `1.2` and `1.0`. Defaults to `1.2`.
  final pulumi.Input<String>? scmMinimumTlsVersion;
  final pulumi.Input<String>? scmType;
  /// Should the Windows Web App Slot `ip_restriction` configuration be used for the SCM also.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the Windows Web App Slot use a 32-bit worker. The default value varies from different service plans.
  final pulumi.Input<bool>? use32BitWorker;
  /// One or more `virtual_application` blocks as defined below.
  final pulumi.Input<List<WindowsWebAppSlotSiteConfigVirtualApplication>>? virtualApplications;
  /// Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should Web Sockets be enabled. Defaults to `false`.
  final pulumi.Input<bool>? websocketsEnabled;
  final pulumi.Input<String>? windowsFxVersion;
  /// The number of Workers for this Windows App Service Slot.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [WindowsWebAppSlotSiteConfig].
  /// [alwaysOn] If this Windows Web App Slot is Always On enabled. Defaults to `true`.
  /// [apiDefinitionUrl] The URL to the API Definition for this Windows Web App Slot.
  /// [apiManagementApiId] The API Management API ID this Windows Web App Slot os associated with.
  /// [appCommandLine] The App command line to launch.
  /// [applicationStack] A `application_stack` block as defined above.
  /// [autoHealSetting] A `auto_heal_setting` block as defined above. Required with `auto_heal`.
  /// [autoSwapSlotName] The Windows Web App Slot Name to automatically swap to when deployment to that slot is successfully completed.
  /// [containerRegistryManagedIdentityClientId] The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
  /// [containerRegistryUseManagedIdentity] Should connections for Azure Container Registry use Managed Identity.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] Specifies a list of Default Documents for the Windows Web App Slot.
  /// [detailedErrorLoggingEnabled] Optional.
  /// [ftpsState] The State of FTP / FTPS service. Possible values include: `AllAllowed`, `FtpsOnly`, `Disabled`. Defaults to `Disabled`.
  /// [handlerMappings] One or more `handler_mapping` blocks as defined below.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
  /// [healthCheckPath] The path to the Health Check.
  /// [http2Enabled] Should the HTTP2 be enabled?
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [loadBalancingMode] The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
  /// [localMysqlEnabled] Use Local MySQL. Defaults to `false`.
  /// [managedPipelineMode] Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`.
  /// [minimumTlsVersion] The configures the minimum version of TLS required for SSL requests. Possible values are `1.1`, `1.3`, `1.2` and `1.0`. Defaults to `1.2`.
  /// [remoteDebuggingEnabled] Should Remote Debugging be enabled. Defaults to `false`.
  /// [remoteDebuggingVersion] The Remote Debugging Version. Currently only `VS2022` is supported.
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The configures the minimum version of TLS required for SSL requests to the SCM site Possible values are `1.1`, `1.3`, `1.2` and `1.0`. Defaults to `1.2`.
  /// [scmType] Optional.
  /// [scmUseMainIpRestriction] Should the Windows Web App Slot `ip_restriction` configuration be used for the SCM also.
  /// [use32BitWorker] Should the Windows Web App Slot use a 32-bit worker. The default value varies from different service plans.
  /// [virtualApplications] One or more `virtual_application` blocks as defined below.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should Web Sockets be enabled. Defaults to `false`.
  /// [windowsFxVersion] Optional.
  /// [workerCount] The number of Workers for this Windows App Service Slot.
  const WindowsWebAppSlotSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.applicationStack,
    this.autoHealSetting,
    this.autoSwapSlotName,
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
      'applicationStack': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotSiteConfigApplicationStack, Map<String, dynamic>>(applicationStack, (value) => value.toMap()),
      'autoHealSetting': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotSiteConfigAutoHealSetting, Map<String, dynamic>>(autoHealSetting, (value) => value.toMap()),
      'autoSwapSlotName': ?autoSwapSlotName,
      'containerRegistryManagedIdentityClientId': ?containerRegistryManagedIdentityClientId,
      'containerRegistryUseManagedIdentity': ?containerRegistryUseManagedIdentity,
      'cors': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'detailedErrorLoggingEnabled': ?detailedErrorLoggingEnabled,
      'ftpsState': ?ftpsState,
      'handlerMappings': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotSiteConfigHandlerMapping>, List<Map<String, dynamic>>>(handlerMappings, (value) => pulumi.Input.encodeList<WindowsWebAppSlotSiteConfigHandlerMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthCheckEvictionTimeInMin': ?healthCheckEvictionTimeInMin,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictionDefaultAction': ?ipRestrictionDefaultAction,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<WindowsWebAppSlotSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingMode': ?loadBalancingMode,
      'localMysqlEnabled': ?localMysqlEnabled,
      'managedPipelineMode': ?managedPipelineMode,
      'minimumTlsVersion': ?minimumTlsVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'scmIpRestrictionDefaultAction': ?scmIpRestrictionDefaultAction,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<WindowsWebAppSlotSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinimumTlsVersion': ?scmMinimumTlsVersion,
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorker': ?use32BitWorker,
      'virtualApplications': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotSiteConfigVirtualApplication>, List<Map<String, dynamic>>>(virtualApplications, (value) => pulumi.Input.encodeList<WindowsWebAppSlotSiteConfigVirtualApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'windowsFxVersion': ?windowsFxVersion,
      'workerCount': ?workerCount,
    };
  }

  factory WindowsWebAppSlotSiteConfig.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfig(
      alwaysOn: (() { final guardedValue = map['alwaysOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      apiDefinitionUrl: (() { final guardedValue = map['apiDefinitionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiManagementApiId: (() { final guardedValue = map['apiManagementApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appCommandLine: (() { final guardedValue = map['appCommandLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationStack: (() { final guardedValue = map['applicationStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotSiteConfigApplicationStack.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoHealSetting: (() { final guardedValue = map['autoHealSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotSiteConfigAutoHealSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoSwapSlotName: (() { final guardedValue = map['autoSwapSlotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryManagedIdentityClientId: (() { final guardedValue = map['containerRegistryManagedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryUseManagedIdentity: (() { final guardedValue = map['containerRegistryUseManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotSiteConfigCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultDocuments: (() { final guardedValue = map['defaultDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      detailedErrorLoggingEnabled: (() { final guardedValue = map['detailedErrorLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ftpsState: (() { final guardedValue = map['ftpsState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      handlerMappings: (() { final guardedValue = map['handlerMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsWebAppSlotSiteConfigHandlerMapping>(guardedValue, (value) => WindowsWebAppSlotSiteConfigHandlerMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      healthCheckEvictionTimeInMin: (() { final guardedValue = map['healthCheckEvictionTimeInMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipRestrictionDefaultAction: (() { final guardedValue = map['ipRestrictionDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRestrictions: (() { final guardedValue = map['ipRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsWebAppSlotSiteConfigIpRestriction>(guardedValue, (value) => WindowsWebAppSlotSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancingMode: (() { final guardedValue = map['loadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localMysqlEnabled: (() { final guardedValue = map['localMysqlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedPipelineMode: (() { final guardedValue = map['managedPipelineMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDebuggingEnabled: (() { final guardedValue = map['remoteDebuggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteDebuggingVersion: (() { final guardedValue = map['remoteDebuggingVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmIpRestrictionDefaultAction: (() { final guardedValue = map['scmIpRestrictionDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmIpRestrictions: (() { final guardedValue = map['scmIpRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsWebAppSlotSiteConfigScmIpRestriction>(guardedValue, (value) => WindowsWebAppSlotSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scmMinimumTlsVersion: (() { final guardedValue = map['scmMinimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmType: (() { final guardedValue = map['scmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmUseMainIpRestriction: (() { final guardedValue = map['scmUseMainIpRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      use32BitWorker: (() { final guardedValue = map['use32BitWorker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualApplications: (() { final guardedValue = map['virtualApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsWebAppSlotSiteConfigVirtualApplication>(guardedValue, (value) => WindowsWebAppSlotSiteConfigVirtualApplication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vnetRouteAllEnabled: (() { final guardedValue = map['vnetRouteAllEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      websocketsEnabled: (() { final guardedValue = map['websocketsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      windowsFxVersion: (() { final guardedValue = map['windowsFxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

