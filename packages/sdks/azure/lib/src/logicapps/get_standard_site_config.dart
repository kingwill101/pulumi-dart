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
  /// The default action taken when no `ipRestriction` rules match.
  final pulumi.Input<String> ipRestrictionDefaultAction;
  /// A list of `ipRestriction` objects representing IP restrictions as defined below.
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
  /// The default action taken when no `scmIpRestriction` rules match.
  final pulumi.Input<String> scmIpRestrictionDefaultAction;
  /// A list of `scmIpRestriction` objects representing SCM IP restrictions as defined below.
  final pulumi.Input<List<GetStandardSiteConfigScmIpRestriction>> scmIpRestrictions;
  /// The minimum version of TLS required for SSL requests to the SCM site.
  final pulumi.Input<String> scmMinTlsVersion;
  /// The type of Source Control used by the Logic App in use by the Windows Function App.
  final pulumi.Input<String> scmType;
  /// Should the Logic App `ipRestriction` configuration be used for the SCM too.
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
  /// [ipRestrictionDefaultAction] The default action taken when no `ipRestriction` rules match.
  /// [ipRestrictions] A list of `ipRestriction` objects representing IP restrictions as defined below.
  /// [linuxFxVersion] Linux App Framework and version for the Logic App.
  /// [minTlsVersion] The minimum supported TLS version for the Logic App.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this Logic App Only affects apps on the Premium plan.
  /// [publicNetworkAccessEnabled] Required.
  /// [runtimeScaleMonitoringEnabled] Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan.
  /// [scmIpRestrictionDefaultAction] The default action taken when no `scmIpRestriction` rules match.
  /// [scmIpRestrictions] A list of `scmIpRestriction` objects representing SCM IP restrictions as defined below.
  /// [scmMinTlsVersion] The minimum version of TLS required for SSL requests to the SCM site.
  /// [scmType] The type of Source Control used by the Logic App in use by the Windows Function App.
  /// [scmUseMainIpRestriction] Should the Logic App `ipRestriction` configuration be used for the SCM too.
  /// [use32BitWorkerProcess] Should the Logic App run in 32 bit mode, rather than 64 bit mode?
  /// [vnetRouteAllEnabled] Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  /// [websocketsEnabled] Should WebSockets be enabled?
  const GetStandardSiteConfig({
    required this.alwaysOn,
    required this.appScaleLimit,
    required this.autoSwapSlotName,
    required this.cors,
    required this.dotnetFrameworkVersion,
    required this.elasticInstanceMinimum,
    required this.ftpsState,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictionDefaultAction,
    required this.ipRestrictions,
    required this.linuxFxVersion,
    required this.minTlsVersion,
    required this.preWarmedInstanceCount,
    required this.publicNetworkAccessEnabled,
    required this.runtimeScaleMonitoringEnabled,
    required this.scmIpRestrictionDefaultAction,
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
      'ipRestrictionDefaultAction': ipRestrictionDefaultAction,
      'ipRestrictions': pulumi.Input.mapInputValue<List<GetStandardSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<GetStandardSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linuxFxVersion': linuxFxVersion,
      'minTlsVersion': minTlsVersion,
      'preWarmedInstanceCount': preWarmedInstanceCount,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'runtimeScaleMonitoringEnabled': runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': scmIpRestrictionDefaultAction,
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
      alwaysOn: pulumi.Input.fromValue(map['alwaysOn'] as bool),
      appScaleLimit: pulumi.Input.fromValue((map['appScaleLimit'] as num).toInt()),
      autoSwapSlotName: pulumi.Input.fromValue(map['autoSwapSlotName'] as String),
      cors: pulumi.Input.fromValue(GetStandardSiteConfigCors.fromMap((map['cors']! as Map).cast<String, dynamic>())),
      dotnetFrameworkVersion: pulumi.Input.fromValue(map['dotnetFrameworkVersion'] as String),
      elasticInstanceMinimum: pulumi.Input.fromValue((map['elasticInstanceMinimum'] as num).toInt()),
      ftpsState: pulumi.Input.fromValue(map['ftpsState'] as String),
      healthCheckPath: pulumi.Input.fromValue(map['healthCheckPath'] as String),
      http2Enabled: pulumi.Input.fromValue(map['http2Enabled'] as bool),
      ipRestrictionDefaultAction: pulumi.Input.fromValue(map['ipRestrictionDefaultAction'] as String),
      ipRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetStandardSiteConfigIpRestriction>(map['ipRestrictions']!, (value) => GetStandardSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      linuxFxVersion: pulumi.Input.fromValue(map['linuxFxVersion'] as String),
      minTlsVersion: pulumi.Input.fromValue(map['minTlsVersion'] as String),
      preWarmedInstanceCount: pulumi.Input.fromValue((map['preWarmedInstanceCount'] as num).toInt()),
      publicNetworkAccessEnabled: pulumi.Input.fromValue(map['publicNetworkAccessEnabled'] as bool),
      runtimeScaleMonitoringEnabled: pulumi.Input.fromValue(map['runtimeScaleMonitoringEnabled'] as bool),
      scmIpRestrictionDefaultAction: pulumi.Input.fromValue(map['scmIpRestrictionDefaultAction'] as String),
      scmIpRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetStandardSiteConfigScmIpRestriction>(map['scmIpRestrictions']!, (value) => GetStandardSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      scmMinTlsVersion: pulumi.Input.fromValue(map['scmMinTlsVersion'] as String),
      scmType: pulumi.Input.fromValue(map['scmType'] as String),
      scmUseMainIpRestriction: pulumi.Input.fromValue(map['scmUseMainIpRestriction'] as bool),
      use32BitWorkerProcess: pulumi.Input.fromValue(map['use32BitWorkerProcess'] as bool),
      vnetRouteAllEnabled: pulumi.Input.fromValue(map['vnetRouteAllEnabled'] as bool),
      websocketsEnabled: pulumi.Input.fromValue(map['websocketsEnabled'] as bool),
    );
  }
}
