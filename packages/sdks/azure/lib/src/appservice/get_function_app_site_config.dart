// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_app_site_config_cors.dart';
import 'get_function_app_site_config_ip_restriction.dart';
import 'get_function_app_site_config_scm_ip_restriction.dart';

class GetFunctionAppSiteConfig {
  /// Is the app loaded at all times?
  final pulumi.Input<bool> alwaysOn;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final pulumi.Input<int> appScaleLimit;
  final pulumi.Input<String> autoSwapSlotName;
  /// A `cors` block as defined above.
  final pulumi.Input<GetFunctionAppSiteConfigCors> cors;
  /// The version of the .NET framework's CLR used in this App Service.
  final pulumi.Input<String> dotnetFrameworkVersion;
  /// The number of minimum instances for this function app. Only applicable to apps on the Premium plan.
  final pulumi.Input<int> elasticInstanceMinimum;
  /// State of FTP / FTPS service for this AppService.
  final pulumi.Input<String> ftpsState;
  final pulumi.Input<String> healthCheckPath;
  /// Is HTTP2 Enabled on this App Service?
  final pulumi.Input<bool> http2Enabled;
  /// One or more `ip_restriction` blocks as defined above.
  final pulumi.Input<List<GetFunctionAppSiteConfigIpRestriction>> ipRestrictions;
  /// Java version hosted by the function app in Azure.
  final pulumi.Input<String> javaVersion;
  /// Linux App Framework and version for the AppService.
  final pulumi.Input<String> linuxFxVersion;
  /// The minimum supported TLS version for this App Service.
  final pulumi.Input<String> minTlsVersion;
  /// The number of pre-warmed instances for this function app. Only applicable to apps on the Premium plan.
  final pulumi.Input<int> preWarmedInstanceCount;
  /// Is Runtime Scale Monitoring Enabled on this function app?
  final pulumi.Input<bool> runtimeScaleMonitoringEnabled;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final pulumi.Input<List<GetFunctionAppSiteConfigScmIpRestriction>> scmIpRestrictions;
  /// The type of Source Control enabled for this App Service.
  final pulumi.Input<String> scmType;
  /// IP security restrictions for scm to use main.
  final pulumi.Input<bool> scmUseMainIpRestriction;
  /// Does the App Service run in 32 bit mode, rather than 64 bit mode?
  final pulumi.Input<bool> use32BitWorkerProcess;
  /// (Optional) Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied?
  final pulumi.Input<bool> vnetRouteAllEnabled;
  /// Are WebSockets enabled for this App Service?
  final pulumi.Input<bool> websocketsEnabled;

  /// Creates a new [GetFunctionAppSiteConfig].
  /// [alwaysOn] Is the app loaded at all times?
  /// [appScaleLimit] The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [autoSwapSlotName] Required.
  /// [cors] A `cors` block as defined above.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this App Service.
  /// [elasticInstanceMinimum] The number of minimum instances for this function app. Only applicable to apps on the Premium plan.
  /// [ftpsState] State of FTP / FTPS service for this AppService.
  /// [healthCheckPath] Required.
  /// [http2Enabled] Is HTTP2 Enabled on this App Service?
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [javaVersion] Java version hosted by the function app in Azure.
  /// [linuxFxVersion] Linux App Framework and version for the AppService.
  /// [minTlsVersion] The minimum supported TLS version for this App Service.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app. Only applicable to apps on the Premium plan.
  /// [runtimeScaleMonitoringEnabled] Is Runtime Scale Monitoring Enabled on this function app?
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmType] The type of Source Control enabled for this App Service.
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main.
  /// [use32BitWorkerProcess] Does the App Service run in 32 bit mode, rather than 64 bit mode?
  /// [vnetRouteAllEnabled] (Optional) Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are WebSockets enabled for this App Service?
  const GetFunctionAppSiteConfig({
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
    required this.javaVersion,
    required this.linuxFxVersion,
    required this.minTlsVersion,
    required this.preWarmedInstanceCount,
    required this.runtimeScaleMonitoringEnabled,
    required this.scmIpRestrictions,
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
      'cors': pulumi.Input.mapInputValue<GetFunctionAppSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dotnetFrameworkVersion': dotnetFrameworkVersion,
      'elasticInstanceMinimum': elasticInstanceMinimum,
      'ftpsState': ftpsState,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictions': pulumi.Input.mapInputValue<List<GetFunctionAppSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<GetFunctionAppSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'javaVersion': javaVersion,
      'linuxFxVersion': linuxFxVersion,
      'minTlsVersion': minTlsVersion,
      'preWarmedInstanceCount': preWarmedInstanceCount,
      'runtimeScaleMonitoringEnabled': runtimeScaleMonitoringEnabled,
      'scmIpRestrictions': pulumi.Input.mapInputValue<List<GetFunctionAppSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<GetFunctionAppSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorkerProcess': use32BitWorkerProcess,
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
    };
  }

  factory GetFunctionAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppSiteConfig(
      alwaysOn: pulumi.Input.fromValue(map['alwaysOn'] as bool),
      appScaleLimit: pulumi.Input.fromValue(map['appScaleLimit'] as int),
      autoSwapSlotName: pulumi.Input.fromValue(map['autoSwapSlotName'] as String),
      cors: pulumi.Input.fromValue(GetFunctionAppSiteConfigCors.fromMap((map['cors']! as Map).cast<String, dynamic>())),
      dotnetFrameworkVersion: pulumi.Input.fromValue(map['dotnetFrameworkVersion'] as String),
      elasticInstanceMinimum: pulumi.Input.fromValue(map['elasticInstanceMinimum'] as int),
      ftpsState: pulumi.Input.fromValue(map['ftpsState'] as String),
      healthCheckPath: pulumi.Input.fromValue(map['healthCheckPath'] as String),
      http2Enabled: pulumi.Input.fromValue(map['http2Enabled'] as bool),
      ipRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFunctionAppSiteConfigIpRestriction>(map['ipRestrictions']!, (value) => GetFunctionAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      javaVersion: pulumi.Input.fromValue(map['javaVersion'] as String),
      linuxFxVersion: pulumi.Input.fromValue(map['linuxFxVersion'] as String),
      minTlsVersion: pulumi.Input.fromValue(map['minTlsVersion'] as String),
      preWarmedInstanceCount: pulumi.Input.fromValue(map['preWarmedInstanceCount'] as int),
      runtimeScaleMonitoringEnabled: pulumi.Input.fromValue(map['runtimeScaleMonitoringEnabled'] as bool),
      scmIpRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFunctionAppSiteConfigScmIpRestriction>(map['scmIpRestrictions']!, (value) => GetFunctionAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      scmType: pulumi.Input.fromValue(map['scmType'] as String),
      scmUseMainIpRestriction: pulumi.Input.fromValue(map['scmUseMainIpRestriction'] as bool),
      use32BitWorkerProcess: pulumi.Input.fromValue(map['use32BitWorkerProcess'] as bool),
      vnetRouteAllEnabled: pulumi.Input.fromValue(map['vnetRouteAllEnabled'] as bool),
      websocketsEnabled: pulumi.Input.fromValue(map['websocketsEnabled'] as bool),
    );
  }
}

