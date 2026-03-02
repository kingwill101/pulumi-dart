// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_site_config_cors.dart';
import 'standard_site_config_ip_restriction.dart';
import 'standard_site_config_scm_ip_restriction.dart';

class StandardSiteConfig {
  /// Should the Logic App be loaded at all times? Defaults to `false`.
  final pulumi.Input<bool>? alwaysOn;
  /// The number of workers this Logic App can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final pulumi.Input<int>? appScaleLimit;
  /// The Auto-swap slot name.
  final pulumi.Input<String>? autoSwapSlotName;
  /// A `cors` block as defined below.
  final pulumi.Input<StandardSiteConfigCors>? cors;
  /// The version of the .NET framework's CLR used in this Logic App Possible values are `v4.0` (including .NET Core 2.1 and 3.1), `v5.0`, `v6.0` and `v8.0`. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to `v4.0`.
  final pulumi.Input<String>? dotnetFrameworkVersion;
  /// The number of minimum instances for this Logic App Only affects apps on the Premium plan.
  final pulumi.Input<int>? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this Logic App. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `AllAllowed`.
  final pulumi.Input<String>? ftpsState;
  /// Path which will be checked for this Logic App health.
  final pulumi.Input<String>? healthCheckPath;
  /// Specifies whether the HTTP2 protocol should be enabled. Defaults to `false`.
  final pulumi.Input<bool>? http2Enabled;
  /// A list of `ip_restriction` objects representing IP restrictions as defined below.
  ///
  /// > **Note:** User has to explicitly set `ip_restriction` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<StandardSiteConfigIpRestriction>>? ipRestrictions;
  /// Linux App Framework and version for the App Service, e.g. `DOCKER|(golang:latest)`. Setting this value will also set the `kind` of application deployed to `functionapp,linux,container,workflowapp`.
  ///
  /// > **Note:** You must set `os_type` in `azure.appservice.ServicePlan` to `Linux` when this property is set.
  final pulumi.Input<String>? linuxFxVersion;
  /// The minimum supported TLS version for the Logic App. Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2` for new Logic Apps.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minTlsVersion;
  /// The number of pre-warmed instances for this Logic App Only affects apps on the Premium plan.
  final pulumi.Input<int>? preWarmedInstanceCount;
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  final pulumi.Input<bool>? runtimeScaleMonitoringEnabled;
  /// A list of `scm_ip_restriction` objects representing SCM IP restrictions as defined below.
  ///
  /// > **Note:** User has to explicitly set `scm_ip_restriction` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<StandardSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values are `1.0`, `1.1`, `1.2` and `1.3`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? scmMinTlsVersion;
  /// The type of Source Control used by the Logic App in use by the Windows Function App. Defaults to `None`. Possible values are: `BitbucketGit`, `BitbucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None`, `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`
  final pulumi.Input<String>? scmType;
  /// Should the Logic App `ip_restriction` configuration be used for the SCM too. Defaults to `false`.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the Logic App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  ///
  /// > **Note:** when using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  final pulumi.Input<bool>? use32BitWorkerProcess;
  /// Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should WebSockets be enabled?
  final pulumi.Input<bool>? websocketsEnabled;

  /// Creates a new [StandardSiteConfig].
  /// [alwaysOn] Should the Logic App be loaded at all times? Defaults to `false`.
  /// [appScaleLimit] The number of workers this Logic App can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [autoSwapSlotName] The Auto-swap slot name.
  /// [cors] A `cors` block as defined below.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this Logic App Possible values are `v4.0` (including .NET Core 2.1 and 3.1), `v5.0`, `v6.0` and `v8.0`. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to `v4.0`.
  /// [elasticInstanceMinimum] The number of minimum instances for this Logic App Only affects apps on the Premium plan.
  /// [ftpsState] State of FTP / FTPS service for this Logic App. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `AllAllowed`.
  /// [healthCheckPath] Path which will be checked for this Logic App health.
  /// [http2Enabled] Specifies whether the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictions] A list of `ip_restriction` objects representing IP restrictions as defined below.
  /// [linuxFxVersion] Linux App Framework and version for the App Service, e.g. `DOCKER|(golang:latest)`. Setting this value will also set the `kind` of application deployed to `functionapp,linux,container,workflowapp`.
  /// [minTlsVersion] The minimum supported TLS version for the Logic App. Possible values are `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2` for new Logic Apps.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this Logic App Only affects apps on the Premium plan.
  /// [publicNetworkAccessEnabled] Optional.
  /// [runtimeScaleMonitoringEnabled] Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  /// [scmIpRestrictions] A list of `scm_ip_restriction` objects representing SCM IP restrictions as defined below.
  /// [scmMinTlsVersion] Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values are `1.0`, `1.1`, `1.2` and `1.3`.
  /// [scmType] The type of Source Control used by the Logic App in use by the Windows Function App. Defaults to `None`. Possible values are: `BitbucketGit`, `BitbucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None`, `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`
  /// [scmUseMainIpRestriction] Should the Logic App `ip_restriction` configuration be used for the SCM too. Defaults to `false`.
  /// [use32BitWorkerProcess] Should the Logic App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  /// [websocketsEnabled] Should WebSockets be enabled?
  StandardSiteConfig({
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
    this.linuxFxVersion,
    this.minTlsVersion,
    this.preWarmedInstanceCount,
    this.publicNetworkAccessEnabled,
    this.runtimeScaleMonitoringEnabled,
    this.scmIpRestrictions,
    this.scmMinTlsVersion,
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
      'cors': ?pulumi.Input.mapOptionalInputValue<StandardSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dotnetFrameworkVersion': ?dotnetFrameworkVersion,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'ftpsState': ?ftpsState,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<StandardSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<StandardSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linuxFxVersion': ?linuxFxVersion,
      'minTlsVersion': ?minTlsVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<StandardSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<StandardSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmMinTlsVersion': ?scmMinTlsVersion,
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
    };
  }

  factory StandardSiteConfig.fromMap(Map<String, dynamic> map) {
    return StandardSiteConfig(
      alwaysOn: map['alwaysOn'] == null ? null : (map['alwaysOn']! as bool).input(),
      appScaleLimit: map['appScaleLimit'] == null ? null : (map['appScaleLimit']! as int).input(),
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : (map['autoSwapSlotName']! as String).input(),
      cors: map['cors'] == null ? null : (StandardSiteConfigCors.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      dotnetFrameworkVersion: map['dotnetFrameworkVersion'] == null ? null : (map['dotnetFrameworkVersion']! as String).input(),
      elasticInstanceMinimum: map['elasticInstanceMinimum'] == null ? null : (map['elasticInstanceMinimum']! as int).input(),
      ftpsState: map['ftpsState'] == null ? null : (map['ftpsState']! as String).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath']! as String).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled']! as bool).input(),
      ipRestrictions: map['ipRestrictions'] == null ? null : (pulumi.Input.decodeList<StandardSiteConfigIpRestriction>(map['ipRestrictions']!, (value) => StandardSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linuxFxVersion: map['linuxFxVersion'] == null ? null : (map['linuxFxVersion']! as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion']! as String).input(),
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : (map['preWarmedInstanceCount']! as int).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] == null ? null : (map['runtimeScaleMonitoringEnabled']! as bool).input(),
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : (pulumi.Input.decodeList<StandardSiteConfigScmIpRestriction>(map['scmIpRestrictions']!, (value) => StandardSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scmMinTlsVersion: map['scmMinTlsVersion'] == null ? null : (map['scmMinTlsVersion']! as String).input(),
      scmType: map['scmType'] == null ? null : (map['scmType']! as String).input(),
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : (map['scmUseMainIpRestriction']! as bool).input(),
      use32BitWorkerProcess: map['use32BitWorkerProcess'] == null ? null : (map['use32BitWorkerProcess']! as bool).input(),
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : (map['vnetRouteAllEnabled']! as bool).input(),
      websocketsEnabled: map['websocketsEnabled'] == null ? null : (map['websocketsEnabled']! as bool).input(),
    );
  }
}

