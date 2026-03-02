// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_standard_site_config_cors.dart';
import 'get_standard_site_config_ip_restriction.dart';
import 'get_standard_site_config_scm_ip_restriction.dart';

class GetStandardSiteConfig {
  /// Should the Logic App be loaded at all times?
  final pulumi.Input<bool> alwaysOn;
  /// The number of workers this Logic App can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final pulumi.Input<int> appScaleLimit;
  /// The Auto-swap slot name.
  final pulumi.Input<String> autoSwapSlotName;
  /// A `cors` block as defined below.
  final pulumi.Input<GetStandardSiteConfigCors> cors;
  /// The version of the .NET framework's CLR used in this Logic App.
  final pulumi.Input<String> dotnetFrameworkVersion;
  /// The number of minimum instances for this Logic App Only affects apps on the Premium plan.
  final pulumi.Input<int> elasticInstanceMinimum;
  /// The state of FTP / FTPS service for this Logic App.
  final pulumi.Input<String> ftpsState;
  /// Path which will be checked for this Logic App health.
  final pulumi.Input<String> healthCheckPath;
  /// Specifies whether the HTTP2 protocol should be enabled.
  final pulumi.Input<bool> http2Enabled;
  /// A list of `ip_restriction` objects representing IP restrictions as defined below.
  final pulumi.Input<List<GetStandardSiteConfigIpRestriction>> ipRestrictions;
  /// Linux App Framework and version for the Logic App.
  final pulumi.Input<String> linuxFxVersion;
  /// The minimum supported TLS version for the Logic App.
  final pulumi.Input<String> minTlsVersion;
  /// The number of pre-warmed instances for this Logic App Only affects apps on the Premium plan.
  final pulumi.Input<int> preWarmedInstanceCount;
  final pulumi.Input<bool> publicNetworkAccessEnabled;
  /// Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan.
  final pulumi.Input<bool> runtimeScaleMonitoringEnabled;
  /// A list of `scm_ip_restriction` objects representing SCM IP restrictions as defined below.
  final pulumi.Input<List<GetStandardSiteConfigScmIpRestriction>> scmIpRestrictions;
  /// The minimum version of TLS required for SSL requests to the SCM site.
  final pulumi.Input<String> scmMinTlsVersion;
  /// The type of Source Control used by the Logic App in use by the Windows Function App.
  final pulumi.Input<String> scmType;
  /// Should the Logic App `ip_restriction` configuration be used for the SCM too.
  final pulumi.Input<bool> scmUseMainIpRestriction;
  /// Should the Logic App run in 32 bit mode, rather than 64 bit mode?
  final pulumi.Input<bool> use32BitWorkerProcess;
  /// Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  final pulumi.Input<bool> vnetRouteAllEnabled;
  /// Should WebSockets be enabled?
  final pulumi.Input<bool> websocketsEnabled;

  /// Creates a new [GetStandardSiteConfig].
  /// [alwaysOn] Should the Logic App be loaded at all times?
  /// [appScaleLimit] The number of workers this Logic App can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [autoSwapSlotName] The Auto-swap slot name.
  /// [cors] A `cors` block as defined below.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this Logic App.
  /// [elasticInstanceMinimum] The number of minimum instances for this Logic App Only affects apps on the Premium plan.
  /// [ftpsState] The state of FTP / FTPS service for this Logic App.
  /// [healthCheckPath] Path which will be checked for this Logic App health.
  /// [http2Enabled] Specifies whether the HTTP2 protocol should be enabled.
  /// [ipRestrictions] A list of `ip_restriction` objects representing IP restrictions as defined below.
  /// [linuxFxVersion] Linux App Framework and version for the Logic App.
  /// [minTlsVersion] The minimum supported TLS version for the Logic App.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this Logic App Only affects apps on the Premium plan.
  /// [publicNetworkAccessEnabled] Required.
  /// [runtimeScaleMonitoringEnabled] Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan.
  /// [scmIpRestrictions] A list of `scm_ip_restriction` objects representing SCM IP restrictions as defined below.
  /// [scmMinTlsVersion] The minimum version of TLS required for SSL requests to the SCM site.
  /// [scmType] The type of Source Control used by the Logic App in use by the Windows Function App.
  /// [scmUseMainIpRestriction] Should the Logic App `ip_restriction` configuration be used for the SCM too.
  /// [use32BitWorkerProcess] Should the Logic App run in 32 bit mode, rather than 64 bit mode?
  /// [vnetRouteAllEnabled] Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  /// [websocketsEnabled] Should WebSockets be enabled?
  GetStandardSiteConfig({
    required this.alwaysOn,
    required this.appScaleLimit,
    required this.autoSwapSlotName,
    required this.cors,
    required this.dotnetFrameworkVersion,
    required this.elasticInstanceMinimum,
    required this.ftpsState,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictions,
    required this.linuxFxVersion,
    required this.minTlsVersion,
    required this.preWarmedInstanceCount,
    required this.publicNetworkAccessEnabled,
    required this.runtimeScaleMonitoringEnabled,
    required this.scmIpRestrictions,
    required this.scmMinTlsVersion,
    required this.scmType,
    required this.scmUseMainIpRestriction,
    required this.use32BitWorkerProcess,
    required this.vnetRouteAllEnabled,
    required this.websocketsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': alwaysOn,
      'appScaleLimit': appScaleLimit,
      'autoSwapSlotName': autoSwapSlotName,
      'cors': pulumi.Input.mapInputValue<GetStandardSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dotnetFrameworkVersion': dotnetFrameworkVersion,
      'elasticInstanceMinimum': elasticInstanceMinimum,
      'ftpsState': ftpsState,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictions': pulumi.Input.mapInputValue<List<GetStandardSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<GetStandardSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linuxFxVersion': linuxFxVersion,
      'minTlsVersion': minTlsVersion,
      'preWarmedInstanceCount': preWarmedInstanceCount,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'runtimeScaleMonitoringEnabled': runtimeScaleMonitoringEnabled,
      'scmIpRestrictions': pulumi.Input.mapInputValue<List<GetStandardSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<GetStandardSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinTlsVersion': scmMinTlsVersion,
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorkerProcess': use32BitWorkerProcess,
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
    };
  }

  factory GetStandardSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetStandardSiteConfig(
      alwaysOn: (map['alwaysOn'] as bool).input(),
      appScaleLimit: (map['appScaleLimit'] as int).input(),
      autoSwapSlotName: (map['autoSwapSlotName'] as String).input(),
      cors: (GetStandardSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>())).input(),
      dotnetFrameworkVersion: (map['dotnetFrameworkVersion'] as String).input(),
      elasticInstanceMinimum: (map['elasticInstanceMinimum'] as int).input(),
      ftpsState: (map['ftpsState'] as String).input(),
      healthCheckPath: (map['healthCheckPath'] as String).input(),
      http2Enabled: (map['http2Enabled'] as bool).input(),
      ipRestrictions: (pulumi.Input.decodeList<GetStandardSiteConfigIpRestriction>(map['ipRestrictions'], (value) => GetStandardSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linuxFxVersion: (map['linuxFxVersion'] as String).input(),
      minTlsVersion: (map['minTlsVersion'] as String).input(),
      preWarmedInstanceCount: (map['preWarmedInstanceCount'] as int).input(),
      publicNetworkAccessEnabled: (map['publicNetworkAccessEnabled'] as bool).input(),
      runtimeScaleMonitoringEnabled: (map['runtimeScaleMonitoringEnabled'] as bool).input(),
      scmIpRestrictions: (pulumi.Input.decodeList<GetStandardSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => GetStandardSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmMinTlsVersion: (map['scmMinTlsVersion'] as String).input(),
      scmType: (map['scmType'] as String).input(),
      scmUseMainIpRestriction: (map['scmUseMainIpRestriction'] as bool).input(),
      use32BitWorkerProcess: (map['use32BitWorkerProcess'] as bool).input(),
      vnetRouteAllEnabled: (map['vnetRouteAllEnabled'] as bool).input(),
      websocketsEnabled: (map['websocketsEnabled'] as bool).input(),
    );
  }
}

