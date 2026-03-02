// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_slot_site_config_cors.dart';
import 'function_app_slot_site_config_ip_restriction.dart';
import 'function_app_slot_site_config_scm_ip_restriction.dart';

class FunctionAppSlotSiteConfig {
  /// Should the Function App be loaded at all times? Defaults to `false`.
  final pulumi.Input<bool>? alwaysOn;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final pulumi.Input<int>? appScaleLimit;
  /// The name of the slot to automatically swap to during deployment
  final pulumi.Input<String>? autoSwapSlotName;
  /// A `cors` block as defined below.
  final pulumi.Input<FunctionAppSlotSiteConfigCors>? cors;
  /// The version of the .NET framework's CLR used in this function app. Possible values are `v4.0` (including .NET Core 2.1 and 3.1), `v5.0` and `v6.0`. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to `v4.0`.
  final pulumi.Input<String>? dotnetFrameworkVersion;
  /// The number of minimum instances for this function app. Only applicable to apps on the Premium plan.
  final pulumi.Input<int>? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`.
  final pulumi.Input<String>? ftpsState;
  /// Path which will be checked for this function app health.
  final pulumi.Input<String>? healthCheckPath;
  /// Specifies whether or not the HTTP2 protocol should be enabled. Defaults to `false`.
  final pulumi.Input<bool>? http2Enabled;
  /// A list of `ip_restriction` objects representing IP restrictions as defined below.
  final pulumi.Input<List<FunctionAppSlotSiteConfigIpRestriction>>? ipRestrictions;
  /// Java version hosted by the function app in Azure. Possible values are `1.8`, `11` & `17` (In-Preview).
  final pulumi.Input<String>? javaVersion;
  /// Linux App Framework and version for the AppService, e.g. `DOCKER|(golang:latest)`.
  final pulumi.Input<String>? linuxFxVersion;
  /// The minimum supported TLS version for the function app. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new function apps.
  final pulumi.Input<String>? minTlsVersion;
  /// The number of pre-warmed instances for this function app. Only affects apps on the Premium plan.
  final pulumi.Input<int>? preWarmedInstanceCount;
  /// Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  final pulumi.Input<bool>? runtimeScaleMonitoringEnabled;
  /// A list of `scm_ip_restriction` objects representing IP restrictions as defined below.
  ///
  /// > **NOTE** User has to explicitly set `scm_ip_restriction` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<FunctionAppSlotSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// The type of Source Control used by this function App. Valid values include: `BitBucketGit`, `BitBucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None` (default), `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`.
  ///
  /// > **NOTE:** This setting is incompatible with the `source_control` block which updates this value based on the setting provided.
  final pulumi.Input<String>? scmType;
  /// IP security restrictions for scm to use main. Defaults to `false`.
  ///
  /// > **NOTE** Any `scm_ip_restriction` blocks configured are ignored by the service when `scm_use_main_ip_restriction` is set to `true`. Any scm restrictions will become active if this is subsequently set to `false` or removed.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  ///
  /// > **Note:** when using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  final pulumi.Input<bool>? use32BitWorkerProcess;
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should WebSockets be enabled?
  final pulumi.Input<bool>? websocketsEnabled;

  /// Creates a new [FunctionAppSlotSiteConfig].
  /// [alwaysOn] Should the Function App be loaded at all times? Defaults to `false`.
  /// [appScaleLimit] The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [autoSwapSlotName] The name of the slot to automatically swap to during deployment
  /// [cors] A `cors` block as defined below.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this function app. Possible values are `v4.0` (including .NET Core 2.1 and 3.1), `v5.0` and `v6.0`. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to `v4.0`.
  /// [elasticInstanceMinimum] The number of minimum instances for this function app. Only applicable to apps on the Premium plan.
  /// [ftpsState] State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`.
  /// [healthCheckPath] Path which will be checked for this function app health.
  /// [http2Enabled] Specifies whether or not the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictions] A list of `ip_restriction` objects representing IP restrictions as defined below.
  /// [javaVersion] Java version hosted by the function app in Azure. Possible values are `1.8`, `11` & `17` (In-Preview).
  /// [linuxFxVersion] Linux App Framework and version for the AppService, e.g. `DOCKER|(golang:latest)`.
  /// [minTlsVersion] The minimum supported TLS version for the function app. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new function apps.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app. Only affects apps on the Premium plan.
  /// [runtimeScaleMonitoringEnabled] Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  /// [scmIpRestrictions] A list of `scm_ip_restriction` objects representing IP restrictions as defined below.
  /// [scmType] The type of Source Control used by this function App. Valid values include: `BitBucketGit`, `BitBucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None` (default), `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`.
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main. Defaults to `false`.
  /// [use32BitWorkerProcess] Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  /// [vnetRouteAllEnabled] Optional.
  /// [websocketsEnabled] Should WebSockets be enabled?
  FunctionAppSlotSiteConfig({
    this.alwaysOn,
    this.appScaleLimit,
    this.autoSwapSlotName,
    this.cors,
    this.dotnetFrameworkVersion,
    this.elasticInstanceMinimum,
    this.ftpsState,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictions,
    this.javaVersion,
    this.linuxFxVersion,
    this.minTlsVersion,
    this.preWarmedInstanceCount,
    this.runtimeScaleMonitoringEnabled,
    this.scmIpRestrictions,
    this.scmType,
    this.scmUseMainIpRestriction,
    this.use32BitWorkerProcess,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': ?alwaysOn,
      'appScaleLimit': ?appScaleLimit,
      'autoSwapSlotName': ?autoSwapSlotName,
      'cors': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dotnetFrameworkVersion': ?dotnetFrameworkVersion,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'ftpsState': ?ftpsState,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppSlotSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<FunctionAppSlotSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'javaVersion': ?javaVersion,
      'linuxFxVersion': ?linuxFxVersion,
      'minTlsVersion': ?minTlsVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppSlotSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<FunctionAppSlotSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
    };
  }

  factory FunctionAppSlotSiteConfig.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotSiteConfig(
      alwaysOn: map['alwaysOn'] == null ? null : (map['alwaysOn']! as bool).input(),
      appScaleLimit: map['appScaleLimit'] == null ? null : (map['appScaleLimit']! as int).input(),
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : (map['autoSwapSlotName']! as String).input(),
      cors: map['cors'] == null ? null : (FunctionAppSlotSiteConfigCors.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      dotnetFrameworkVersion: map['dotnetFrameworkVersion'] == null ? null : (map['dotnetFrameworkVersion']! as String).input(),
      elasticInstanceMinimum: map['elasticInstanceMinimum'] == null ? null : (map['elasticInstanceMinimum']! as int).input(),
      ftpsState: map['ftpsState'] == null ? null : (map['ftpsState']! as String).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath']! as String).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled']! as bool).input(),
      ipRestrictions: map['ipRestrictions'] == null ? null : (pulumi.Input.decodeList<FunctionAppSlotSiteConfigIpRestriction>(map['ipRestrictions']!, (value) => FunctionAppSlotSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      javaVersion: map['javaVersion'] == null ? null : (map['javaVersion']! as String).input(),
      linuxFxVersion: map['linuxFxVersion'] == null ? null : (map['linuxFxVersion']! as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion']! as String).input(),
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : (map['preWarmedInstanceCount']! as int).input(),
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] == null ? null : (map['runtimeScaleMonitoringEnabled']! as bool).input(),
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : (pulumi.Input.decodeList<FunctionAppSlotSiteConfigScmIpRestriction>(map['scmIpRestrictions']!, (value) => FunctionAppSlotSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmType: map['scmType'] == null ? null : (map['scmType']! as String).input(),
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : (map['scmUseMainIpRestriction']! as bool).input(),
      use32BitWorkerProcess: map['use32BitWorkerProcess'] == null ? null : (map['use32BitWorkerProcess']! as bool).input(),
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : (map['vnetRouteAllEnabled']! as bool).input(),
      websocketsEnabled: map['websocketsEnabled'] == null ? null : (map['websocketsEnabled']! as bool).input(),
    );
  }
}

