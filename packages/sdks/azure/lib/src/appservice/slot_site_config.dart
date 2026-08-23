// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_site_config_cors.dart';
import 'slot_site_config_ip_restriction.dart';
import 'slot_site_config_scm_ip_restriction.dart';

class SlotSiteConfig {
  /// Are Managed Identity Credentials used for Azure Container Registry pull
  final pulumi.Input<bool>? acrUseManagedIdentityCredentials;
  /// If using User Managed Identity, the User Managed Identity Client Id
  ///
  /// &gt; **NOTE:** When using User Managed Identity with Azure Container Registry the Identity will need to have the [ACRPull role assigned](https://docs.microsoft.com/azure/container-registry/container-registry-authentication-managed-identity#example-1-access-with-a-user-assigned-identity)
  final pulumi.Input<String>? acrUserManagedIdentityClientId;
  /// Should the slot be loaded at all times? Defaults to `false`.
  ///
  /// &gt; **NOTE:** when using an App Service Plan in the `Free` or `Shared` Tiers `alwaysOn` must be set to `false`.
  final pulumi.Input<bool>? alwaysOn;
  /// App command line to launch, e.g. `/sbin/myserver -b 0.0.0.0`.
  final pulumi.Input<String>? appCommandLine;
  /// The name of the slot to automatically swap to during deployment
  final pulumi.Input<String>? autoSwapSlotName;
  /// A `cors` block as defined below.
  final pulumi.Input<SlotSiteConfigCors>? cors;
  /// The ordering of default documents to load, if an address isn't specified.
  final pulumi.Input<List<String>>? defaultDocuments;
  /// The version of the .NET framework's CLR used in this App Service Slot. Possible values are `v2.0` (which will use the latest version of the .NET framework for the .NET CLR v2 - currently `.net 3.5`), `v4.0` (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is `.net 4.7.1`), `v5.0` and `v6.0`. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to `v4.0`.
  final pulumi.Input<String>? dotnetFrameworkVersion;
  /// State of FTP / FTPS service for this App Service Slot. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`.
  final pulumi.Input<String>? ftpsState;
  /// The health check path to be pinged by App Service Slot. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html).
  final pulumi.Input<String>? healthCheckPath;
  /// Is HTTP2 Enabled on this App Service? Defaults to `false`.
  final pulumi.Input<bool>? http2Enabled;
  /// A list of objects representing ip restrictions as defined below.
  ///
  /// &gt; **NOTE** User has to explicitly set `ipRestriction` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<SlotSiteConfigIpRestriction>>? ipRestrictions;
  /// The Java Container to use. If specified `javaVersion` and `javaContainerVersion` must also be specified. Possible values are `JAVA`, `JETTY`, and `TOMCAT`.
  final pulumi.Input<String>? javaContainer;
  /// The version of the Java Container to use. If specified `javaVersion` and `javaContainer` must also be specified.
  final pulumi.Input<String>? javaContainerVersion;
  /// The version of Java to use. If specified `javaContainer` and `javaContainerVersion` must also be specified. Possible values are `1.7`, `1.8`, and `11` and their specific versions - except for Java 11 (e.g. `1.7.0_80`, `1.8.0_181`, `11`)
  final pulumi.Input<String>? javaVersion;
  /// Linux App Framework and version for the App Service Slot. Possible options are a Docker container (`DOCKER|&lt;user/image:tag&gt;`), a base-64 encoded Docker Compose file (`COMPOSE|${filebase64("compose.yml")}`) or a base-64 encoded Kubernetes Manifest (`KUBE|${filebase64("kubernetes.yml")}`).
  ///
  /// &gt; **NOTE:** To set this property the App Service Plan to which the App belongs must be configured with `kind = "Linux"`, and `reserved = true` or the API will reject any value supplied.
  final pulumi.Input<String>? linuxFxVersion;
  /// Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  ///
  /// &gt; **NOTE:** MySQL In App is not intended for production environments and will not scale beyond a single instance. Instead you may wish to use Azure Database for MySQL.
  final pulumi.Input<bool>? localMysqlEnabled;
  /// The Managed Pipeline Mode. Possible values are `Integrated` and `Classic`. Defaults to `Integrated`.
  final pulumi.Input<String>? managedPipelineMode;
  /// The minimum supported TLS version for the app service. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new app services.
  final pulumi.Input<String>? minTlsVersion;
  /// The scaled number of workers (for per site scaling) of this App Service Slot. Requires that `perSiteScaling` is enabled on the `azure.appservice.Plan`. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app).
  final pulumi.Input<int>? numberOfWorkers;
  /// The version of PHP to use in this App Service Slot. Possible values are `5.5`, `5.6`, `7.0`, `7.1`, `7.2`, `7.3`, and `7.4`.
  final pulumi.Input<String>? phpVersion;
  /// The version of Python to use in this App Service Slot. Possible values are `2.7` and `3.4`.
  final pulumi.Input<String>? pythonVersion;
  /// Is Remote Debugging Enabled? Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// Which version of Visual Studio should the Remote Debugger be compatible with? Currently only `VS2022` is supported.
  final pulumi.Input<String>? remoteDebuggingVersion;
  /// A list of `scmIpRestriction` objects representing IP restrictions as defined below.
  ///
  /// &gt; **NOTE** User has to explicitly set `scmIpRestriction` to empty slice (`[]`) to remove it.
  final pulumi.Input<List<SlotSiteConfigScmIpRestriction>>? scmIpRestrictions;
  /// The type of Source Control enabled for this App Service Slot. Defaults to `None`. Possible values are: `BitbucketGit`, `BitbucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None`, `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`
  final pulumi.Input<String>? scmType;
  /// IP security restrictions for scm to use main. Defaults to `false`.
  ///
  /// &gt; **NOTE** Any `scmIpRestriction` blocks configured are ignored by the service when `scmUseMainIpRestriction` is set to `true`. Any scm restrictions will become active if this is subsequently set to `false` or removed.
  final pulumi.Input<bool>? scmUseMainIpRestriction;
  /// Should the App Service Slot run in 32 bit mode, rather than 64 bit mode?
  ///
  /// &gt; **NOTE:** when using an App Service Plan in the `Free` or `Shared` Tiers `use32BitWorkerProcess` must be set to `true`.
  final pulumi.Input<bool>? use32BitWorkerProcess;
  /// Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`.
  ///
  /// &gt; **NOTE:** This setting supersedes the previous mechanism of setting the `appSettings` value of `WEBSITE_VNET_ROUTE_ALL`. However, to prevent older configurations breaking Terraform will update this value if it not explicitly set to the value in `app_settings.WEBSITE_VNET_ROUTE_ALL`.
  final pulumi.Input<bool>? vnetRouteAllEnabled;
  /// Should WebSockets be enabled?
  final pulumi.Input<bool>? websocketsEnabled;
  /// The Windows Docker container image (`DOCKER|&lt;user/image:tag&gt;`)
  ///
  /// Additional examples of how to run Containers via the `azure.appservice.Slot` resource can be found in the `./examples/app-service` directory within the GitHub Repository.
  final pulumi.Input<String>? windowsFxVersion;

  /// Creates a new [SlotSiteConfig].
  /// [acrUseManagedIdentityCredentials] Are Managed Identity Credentials used for Azure Container Registry pull
  /// [acrUserManagedIdentityClientId] If using User Managed Identity, the User Managed Identity Client Id
  /// [alwaysOn] Should the slot be loaded at all times? Defaults to `false`.
  /// [appCommandLine] App command line to launch, e.g. `/sbin/myserver -b 0.0.0.0`.
  /// [autoSwapSlotName] The name of the slot to automatically swap to during deployment
  /// [cors] A `cors` block as defined below.
  /// [defaultDocuments] The ordering of default documents to load, if an address isn't specified.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this App Service Slot. Possible values are `v2.0` (which will use the latest version of the .NET framework for the .NET CLR v2 - currently `.net 3.5`), `v4.0` (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is `.net 4.7.1`), `v5.0` and `v6.0`. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to `v4.0`.
  /// [ftpsState] State of FTP / FTPS service for this App Service Slot. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`.
  /// [healthCheckPath] The health check path to be pinged by App Service Slot. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html).
  /// [http2Enabled] Is HTTP2 Enabled on this App Service? Defaults to `false`.
  /// [ipRestrictions] A list of objects representing ip restrictions as defined below.
  /// [javaContainer] The Java Container to use. If specified `javaVersion` and `javaContainerVersion` must also be specified. Possible values are `JAVA`, `JETTY`, and `TOMCAT`.
  /// [javaContainerVersion] The version of the Java Container to use. If specified `javaVersion` and `javaContainer` must also be specified.
  /// [javaVersion] The version of Java to use. If specified `javaContainer` and `javaContainerVersion` must also be specified. Possible values are `1.7`, `1.8`, and `11` and their specific versions - except for Java 11 (e.g. `1.7.0_80`, `1.8.0_181`, `11`)
  /// [linuxFxVersion] Linux App Framework and version for the App Service Slot. Possible options are a Docker container (`DOCKER|&lt;user/image:tag&gt;`), a base-64 encoded Docker Compose file (`COMPOSE|${filebase64("compose.yml")}`) or a base-64 encoded Kubernetes Manifest (`KUBE|${filebase64("kubernetes.yml")}`).
  /// [localMysqlEnabled] Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  /// [managedPipelineMode] The Managed Pipeline Mode. Possible values are `Integrated` and `Classic`. Defaults to `Integrated`.
  /// [minTlsVersion] The minimum supported TLS version for the app service. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new app services.
  /// [numberOfWorkers] The scaled number of workers (for per site scaling) of this App Service Slot. Requires that `perSiteScaling` is enabled on the `azure.appservice.Plan`. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app).
  /// [phpVersion] The version of PHP to use in this App Service Slot. Possible values are `5.5`, `5.6`, `7.0`, `7.1`, `7.2`, `7.3`, and `7.4`.
  /// [pythonVersion] The version of Python to use in this App Service Slot. Possible values are `2.7` and `3.4`.
  /// [remoteDebuggingEnabled] Is Remote Debugging Enabled? Defaults to `false`.
  /// [remoteDebuggingVersion] Which version of Visual Studio should the Remote Debugger be compatible with? Currently only `VS2022` is supported.
  /// [scmIpRestrictions] A list of `scmIpRestriction` objects representing IP restrictions as defined below.
  /// [scmType] The type of Source Control enabled for this App Service Slot. Defaults to `None`. Possible values are: `BitbucketGit`, `BitbucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None`, `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main. Defaults to `false`.
  /// [use32BitWorkerProcess] Should the App Service Slot run in 32 bit mode, rather than 64 bit mode?
  /// [vnetRouteAllEnabled] Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should WebSockets be enabled?
  /// [windowsFxVersion] The Windows Docker container image (`DOCKER|&lt;user/image:tag&gt;`)
  const SlotSiteConfig({
    this.acrUseManagedIdentityCredentials,
    this.acrUserManagedIdentityClientId,
    this.alwaysOn,
    this.appCommandLine,
    this.autoSwapSlotName,
    this.cors,
    this.defaultDocuments,
    this.dotnetFrameworkVersion,
    this.ftpsState,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictions,
    this.javaContainer,
    this.javaContainerVersion,
    this.javaVersion,
    this.linuxFxVersion,
    this.localMysqlEnabled,
    this.managedPipelineMode,
    this.minTlsVersion,
    this.numberOfWorkers,
    this.phpVersion,
    this.pythonVersion,
    this.remoteDebuggingEnabled,
    this.remoteDebuggingVersion,
    this.scmIpRestrictions,
    this.scmType,
    this.scmUseMainIpRestriction,
    this.use32BitWorkerProcess,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
    this.windowsFxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrUseManagedIdentityCredentials': ?acrUseManagedIdentityCredentials,
      'acrUserManagedIdentityClientId': ?acrUserManagedIdentityClientId,
      'alwaysOn': ?alwaysOn,
      'appCommandLine': ?appCommandLine,
      'autoSwapSlotName': ?autoSwapSlotName,
      'cors': ?pulumi.Input.mapOptionalInputValue<SlotSiteConfigCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': ?defaultDocuments,
      'dotnetFrameworkVersion': ?dotnetFrameworkVersion,
      'ftpsState': ?ftpsState,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictions': ?pulumi.Input.mapOptionalInputValue<List<SlotSiteConfigIpRestriction>, List<Map<String, dynamic>>>(ipRestrictions, (value) => pulumi.Input.encodeList<SlotSiteConfigIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'javaContainer': ?javaContainer,
      'javaContainerVersion': ?javaContainerVersion,
      'javaVersion': ?javaVersion,
      'linuxFxVersion': ?linuxFxVersion,
      'localMysqlEnabled': ?localMysqlEnabled,
      'managedPipelineMode': ?managedPipelineMode,
      'minTlsVersion': ?minTlsVersion,
      'numberOfWorkers': ?numberOfWorkers,
      'phpVersion': ?phpVersion,
      'pythonVersion': ?pythonVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'scmIpRestrictions': ?pulumi.Input.mapOptionalInputValue<List<SlotSiteConfigScmIpRestriction>, List<Map<String, dynamic>>>(scmIpRestrictions, (value) => pulumi.Input.encodeList<SlotSiteConfigScmIpRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'windowsFxVersion': ?windowsFxVersion,
    };
  }

  factory SlotSiteConfig.fromMap(Map<String, dynamic> map) {
    return SlotSiteConfig(
      acrUseManagedIdentityCredentials: (() { final guardedValue = map['acrUseManagedIdentityCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      acrUserManagedIdentityClientId: (() { final guardedValue = map['acrUserManagedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alwaysOn: (() { final guardedValue = map['alwaysOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appCommandLine: (() { final guardedValue = map['appCommandLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoSwapSlotName: (() { final guardedValue = map['autoSwapSlotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotSiteConfigCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultDocuments: (() { final guardedValue = map['defaultDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dotnetFrameworkVersion: (() { final guardedValue = map['dotnetFrameworkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ftpsState: (() { final guardedValue = map['ftpsState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipRestrictions: (() { final guardedValue = map['ipRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SlotSiteConfigIpRestriction>(guardedValue, (value) => SlotSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      javaContainer: (() { final guardedValue = map['javaContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaContainerVersion: (() { final guardedValue = map['javaContainerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaVersion: (() { final guardedValue = map['javaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxFxVersion: (() { final guardedValue = map['linuxFxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localMysqlEnabled: (() { final guardedValue = map['localMysqlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedPipelineMode: (() { final guardedValue = map['managedPipelineMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      phpVersion: (() { final guardedValue = map['phpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonVersion: (() { final guardedValue = map['pythonVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDebuggingEnabled: (() { final guardedValue = map['remoteDebuggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteDebuggingVersion: (() { final guardedValue = map['remoteDebuggingVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmIpRestrictions: (() { final guardedValue = map['scmIpRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SlotSiteConfigScmIpRestriction>(guardedValue, (value) => SlotSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scmType: (() { final guardedValue = map['scmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scmUseMainIpRestriction: (() { final guardedValue = map['scmUseMainIpRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      use32BitWorkerProcess: (() { final guardedValue = map['use32BitWorkerProcess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vnetRouteAllEnabled: (() { final guardedValue = map['vnetRouteAllEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      websocketsEnabled: (() { final guardedValue = map['websocketsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      windowsFxVersion: (() { final guardedValue = map['windowsFxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
