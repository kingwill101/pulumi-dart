// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_slot_site_config_cors.dart';
import 'function_app_slot_site_config_ip_restriction.dart';
import 'function_app_slot_site_config_scm_ip_restriction.dart';

class FunctionAppSlotSiteConfig {
  /// Should the Function App be loaded at all times? Defaults to `false`.
  final pulumi.Input<bool?>? alwaysOn;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final pulumi.Input<int?>? appScaleLimit;
  /// The name of the slot to automatically swap to during deployment
  final pulumi.Input<String?>? autoSwapSlotName;
  /// A `cors` block as defined below.
  final pulumi.Input<FunctionAppSlotSiteConfigCors?>? cors;
  /// The version of the .NET framework's CLR used in this function app. Possible values are `v4.0` (including .NET Core 2.1 and 3.1), `v5.0` and `v6.0`. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to `v4.0`.
  final pulumi.Input<String?>? dotnetFrameworkVersion;
  /// The number of minimum instances for this function app. Only applicable to apps on the Premium plan.
  final pulumi.Input<int?>? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`.
  final pulumi.Input<String?>? ftpsState;
  /// Path which will be checked for this function app health.
  final pulumi.Input<String?>? healthCheckPath;
  /// Specifies whether or not the HTTP2 protocol should be enabled. Defaults to `false`.
  final pulumi.Input<bool?>? http2Enabled;
  /// A list of `ipRestriction` objects representing IP restrictions as defined below.
  final pulumi.Input<List<FunctionAppSlotSiteConfigIpRestriction>?>? ipRestrictions;
  /// Java version hosted by the function app in Azure. Possible values are `1.8`, `11` & `17` (In-Preview).
  final pulumi.Input<String?>? javaVersion;
  /// Linux App Framework and version for the AppService, e.g. `DOCKER|(golang:latest)`.
  final pulumi.Input<String?>? linuxFxVersion;
  /// The minimum supported TLS version for the function app. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new function apps.
  final pulumi.Input<String?>? minTlsVersion;
  /// The number of pre-warmed instances for this function app. Only affects apps on the Premium plan.
  final pulumi.Input<int?>? preWarmedInstanceCount;
  /// Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  final pulumi.Input<bool?>? runtimeScaleMonitoringEnabled;
  /// A list of `scmIpRestriction` objects representing IP restrictions as defined below.
  ///
  /// &gt; **NOTE** User has to explicitly set `scmIpRestriction` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<FunctionAppSlotSiteConfigScmIpRestriction>?>? scmIpRestrictions;
  /// The type of Source Control used by this function App. Valid values include: `BitBucketGit`, `BitBucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None` (default), `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`.
  ///
  /// &gt; **NOTE:** This setting is incompatible with the `sourceControl` block which updates this value based on the setting provided.
  final pulumi.Input<String?>? scmType;
  /// IP security restrictions for scm to use main. Defaults to `false`.
  ///
  /// &gt; **NOTE** Any `scmIpRestriction` blocks configured are ignored by the service when `scmUseMainIpRestriction` is set to `true`. Any scm restrictions will become active if this is subsequently set to `false` or removed.
  final pulumi.Input<bool?>? scmUseMainIpRestriction;
  /// Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  ///
  /// &gt; **Note:** when using an App Service Plan in the `Free` or `Shared` Tiers `use32BitWorkerProcess` must be set to `true`.
  final pulumi.Input<bool?>? use32BitWorkerProcess;
  final pulumi.Input<bool?>? vnetRouteAllEnabled;
  /// Should WebSockets be enabled?
  final pulumi.Input<bool?>? websocketsEnabled;

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
  /// [ipRestrictions] A list of `ipRestriction` objects representing IP restrictions as defined below.
  /// [javaVersion] Java version hosted by the function app in Azure. Possible values are `1.8`, `11` & `17` (In-Preview).
  /// [linuxFxVersion] Linux App Framework and version for the AppService, e.g. `DOCKER|(golang:latest)`.
  /// [minTlsVersion] The minimum supported TLS version for the function app. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new function apps.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app. Only affects apps on the Premium plan.
  /// [runtimeScaleMonitoringEnabled] Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  /// [scmIpRestrictions] A list of `scmIpRestriction` objects representing IP restrictions as defined below.
  /// [scmType] The type of Source Control used by this function App. Valid values include: `BitBucketGit`, `BitBucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None` (default), `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`.
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main. Defaults to `false`.
  /// [use32BitWorkerProcess] Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  /// [vnetRouteAllEnabled] Optional.
  /// [websocketsEnabled] Should WebSockets be enabled?
  const FunctionAppSlotSiteConfig({
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
      alwaysOn: (() { final guardedValue = map['alwaysOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appScaleLimit: (() { final guardedValue = map['appScaleLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      autoSwapSlotName: (() { final guardedValue = map['autoSwapSlotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionAppSlotSiteConfigCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dotnetFrameworkVersion: (() { final guardedValue = map['dotnetFrameworkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticInstanceMinimum: (() { final guardedValue = map['elasticInstanceMinimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ftpsState: (() { final guardedValue = map['ftpsState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipRestrictions: (() { final guardedValue = map['ipRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionAppSlotSiteConfigIpRestriction>(guardedValue, (value) => FunctionAppSlotSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      javaVersion: (() { final guardedValue = map['javaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxFxVersion: (() { final guardedValue = map['linuxFxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preWarmedInstanceCount: (() { final guardedValue = map['preWarmedInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      runtimeScaleMonitoringEnabled: (() { final guardedValue = map['runtimeScaleMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scmIpRestrictions: (() { final guardedValue = map['scmIpRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionAppSlotSiteConfigScmIpRestriction>(guardedValue, (value) => FunctionAppSlotSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scmType: (() { final guardedValue = map['scmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmUseMainIpRestriction: (() { final guardedValue = map['scmUseMainIpRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      use32BitWorkerProcess: (() { final guardedValue = map['use32BitWorkerProcess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vnetRouteAllEnabled: (() { final guardedValue = map['vnetRouteAllEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      websocketsEnabled: (() { final guardedValue = map['websocketsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
