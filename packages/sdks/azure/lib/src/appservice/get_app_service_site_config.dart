// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_service_site_config_cor.dart';
import 'get_app_service_site_config_ip_restriction.dart';
import 'get_app_service_site_config_scm_ip_restriction.dart';

class GetAppServiceSiteConfig {
  /// Are Managed Identity Credentials used for Azure Container Registry pull.
  final pulumi.Input<bool> acrUseManagedIdentityCredentials;

  /// The User Managed Identity Client Id.
  final pulumi.Input<String> acrUserManagedIdentityClientId;

  /// Is the app loaded at all times?
  final pulumi.Input<bool> alwaysOn;

  /// App command line to launch.
  final pulumi.Input<String> appCommandLine;

  /// A `cors` block as defined above.
  final pulumi.Input<List<GetAppServiceSiteConfigCor>> cors;

  /// The ordering of default documents to load, if an address isn't specified.
  final pulumi.Input<List<String>> defaultDocuments;

  /// The version of the .NET framework's CLR used in this App Service.
  final pulumi.Input<String> dotnetFrameworkVersion;

  /// State of FTP / FTPS service for this AppService.
  final pulumi.Input<String> ftpsState;

  /// The health check path to be pinged by App Service.
  final pulumi.Input<String> healthCheckPath;

  /// Is HTTP2 Enabled on this App Service?
  final pulumi.Input<bool> http2Enabled;

  /// One or more `ip_restriction` blocks as defined above.
  final pulumi.Input<List<GetAppServiceSiteConfigIpRestriction>> ipRestrictions;

  /// The Java Container in use.
  final pulumi.Input<String> javaContainer;

  /// The version of the Java Container in use.
  final pulumi.Input<String> javaContainerVersion;

  /// The version of Java in use.
  final pulumi.Input<String> javaVersion;

  /// Linux App Framework and version for the AppService.
  final pulumi.Input<String> linuxFxVersion;

  /// Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  final pulumi.Input<bool> localMysqlEnabled;

  /// The Managed Pipeline Mode used in this App Service.
  final pulumi.Input<String> managedPipelineMode;

  /// The minimum supported TLS version for this App Service.
  final pulumi.Input<String> minTlsVersion;

  /// The scaled number of workers (for per site scaling) of this App Service.
  final pulumi.Input<int> numberOfWorkers;

  /// The version of PHP used in this App Service.
  final pulumi.Input<String> phpVersion;

  /// The version of Python used in this App Service.
  final pulumi.Input<String> pythonVersion;

  /// Is Remote Debugging Enabled in this App Service?
  final pulumi.Input<bool> remoteDebuggingEnabled;

  /// Which version of Visual Studio is the Remote Debugger compatible with?
  final pulumi.Input<String> remoteDebuggingVersion;

  /// One or more `scm_ip_restriction` blocks as defined above.
  final pulumi.Input<List<GetAppServiceSiteConfigScmIpRestriction>>
  scmIpRestrictions;

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

  /// Windows Container Docker Image for the AppService.
  final pulumi.Input<String> windowsFxVersion;

  /// Creates a new [GetAppServiceSiteConfig].
  /// [acrUseManagedIdentityCredentials] Are Managed Identity Credentials used for Azure Container Registry pull.
  /// [acrUserManagedIdentityClientId] The User Managed Identity Client Id.
  /// [alwaysOn] Is the app loaded at all times?
  /// [appCommandLine] App command line to launch.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] The ordering of default documents to load, if an address isn't specified.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this App Service.
  /// [ftpsState] State of FTP / FTPS service for this AppService.
  /// [healthCheckPath] The health check path to be pinged by App Service.
  /// [http2Enabled] Is HTTP2 Enabled on this App Service?
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [javaContainer] The Java Container in use.
  /// [javaContainerVersion] The version of the Java Container in use.
  /// [javaVersion] The version of Java in use.
  /// [linuxFxVersion] Linux App Framework and version for the AppService.
  /// [localMysqlEnabled] Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  /// [managedPipelineMode] The Managed Pipeline Mode used in this App Service.
  /// [minTlsVersion] The minimum supported TLS version for this App Service.
  /// [numberOfWorkers] The scaled number of workers (for per site scaling) of this App Service.
  /// [phpVersion] The version of PHP used in this App Service.
  /// [pythonVersion] The version of Python used in this App Service.
  /// [remoteDebuggingEnabled] Is Remote Debugging Enabled in this App Service?
  /// [remoteDebuggingVersion] Which version of Visual Studio is the Remote Debugger compatible with?
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmType] The type of Source Control enabled for this App Service.
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main.
  /// [use32BitWorkerProcess] Does the App Service run in 32 bit mode, rather than 64 bit mode?
  /// [vnetRouteAllEnabled] (Optional) Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are WebSockets enabled for this App Service?
  /// [windowsFxVersion] Windows Container Docker Image for the AppService.
  GetAppServiceSiteConfig({
    required this.acrUseManagedIdentityCredentials,
    required this.acrUserManagedIdentityClientId,
    required this.alwaysOn,
    required this.appCommandLine,
    required this.cors,
    required this.defaultDocuments,
    required this.dotnetFrameworkVersion,
    required this.ftpsState,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictions,
    required this.javaContainer,
    required this.javaContainerVersion,
    required this.javaVersion,
    required this.linuxFxVersion,
    required this.localMysqlEnabled,
    required this.managedPipelineMode,
    required this.minTlsVersion,
    required this.numberOfWorkers,
    required this.phpVersion,
    required this.pythonVersion,
    required this.remoteDebuggingEnabled,
    required this.remoteDebuggingVersion,
    required this.scmIpRestrictions,
    required this.scmType,
    required this.scmUseMainIpRestriction,
    required this.use32BitWorkerProcess,
    required this.vnetRouteAllEnabled,
    required this.websocketsEnabled,
    required this.windowsFxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrUseManagedIdentityCredentials': acrUseManagedIdentityCredentials,
      'acrUserManagedIdentityClientId': acrUserManagedIdentityClientId,
      'alwaysOn': alwaysOn,
      'appCommandLine': appCommandLine,
      'cors':
          pulumi.Input.mapInputValue<
            List<GetAppServiceSiteConfigCor>,
            List<Map<String, dynamic>>
          >(
            cors,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppServiceSiteConfigCor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultDocuments': defaultDocuments,
      'dotnetFrameworkVersion': dotnetFrameworkVersion,
      'ftpsState': ftpsState,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictions':
          pulumi.Input.mapInputValue<
            List<GetAppServiceSiteConfigIpRestriction>,
            List<Map<String, dynamic>>
          >(
            ipRestrictions,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppServiceSiteConfigIpRestriction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'javaContainer': javaContainer,
      'javaContainerVersion': javaContainerVersion,
      'javaVersion': javaVersion,
      'linuxFxVersion': linuxFxVersion,
      'localMysqlEnabled': localMysqlEnabled,
      'managedPipelineMode': managedPipelineMode,
      'minTlsVersion': minTlsVersion,
      'numberOfWorkers': numberOfWorkers,
      'phpVersion': phpVersion,
      'pythonVersion': pythonVersion,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'scmIpRestrictions':
          pulumi.Input.mapInputValue<
            List<GetAppServiceSiteConfigScmIpRestriction>,
            List<Map<String, dynamic>>
          >(
            scmIpRestrictions,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppServiceSiteConfigScmIpRestriction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorkerProcess': use32BitWorkerProcess,
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
      'windowsFxVersion': windowsFxVersion,
    };
  }

  factory GetAppServiceSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteConfig(
      acrUseManagedIdentityCredentials: pulumi.Input.fromValue(
        map['acrUseManagedIdentityCredentials'] as bool,
      ),
      acrUserManagedIdentityClientId: pulumi.Input.fromValue(
        map['acrUserManagedIdentityClientId'] as String,
      ),
      alwaysOn: pulumi.Input.fromValue(map['alwaysOn'] as bool),
      appCommandLine: pulumi.Input.fromValue(map['appCommandLine'] as String),
      cors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAppServiceSiteConfigCor>(
          map['cors']!,
          (value) => GetAppServiceSiteConfigCor.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      defaultDocuments: pulumi.Input.fromValue(
        (map['defaultDocuments'] as List).cast<String>(),
      ),
      dotnetFrameworkVersion: pulumi.Input.fromValue(
        map['dotnetFrameworkVersion'] as String,
      ),
      ftpsState: pulumi.Input.fromValue(map['ftpsState'] as String),
      healthCheckPath: pulumi.Input.fromValue(map['healthCheckPath'] as String),
      http2Enabled: pulumi.Input.fromValue(map['http2Enabled'] as bool),
      ipRestrictions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAppServiceSiteConfigIpRestriction>(
          map['ipRestrictions']!,
          (value) => GetAppServiceSiteConfigIpRestriction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      javaContainer: pulumi.Input.fromValue(map['javaContainer'] as String),
      javaContainerVersion: pulumi.Input.fromValue(
        map['javaContainerVersion'] as String,
      ),
      javaVersion: pulumi.Input.fromValue(map['javaVersion'] as String),
      linuxFxVersion: pulumi.Input.fromValue(map['linuxFxVersion'] as String),
      localMysqlEnabled: pulumi.Input.fromValue(
        map['localMysqlEnabled'] as bool,
      ),
      managedPipelineMode: pulumi.Input.fromValue(
        map['managedPipelineMode'] as String,
      ),
      minTlsVersion: pulumi.Input.fromValue(map['minTlsVersion'] as String),
      numberOfWorkers: pulumi.Input.fromValue(map['numberOfWorkers'] as int),
      phpVersion: pulumi.Input.fromValue(map['phpVersion'] as String),
      pythonVersion: pulumi.Input.fromValue(map['pythonVersion'] as String),
      remoteDebuggingEnabled: pulumi.Input.fromValue(
        map['remoteDebuggingEnabled'] as bool,
      ),
      remoteDebuggingVersion: pulumi.Input.fromValue(
        map['remoteDebuggingVersion'] as String,
      ),
      scmIpRestrictions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAppServiceSiteConfigScmIpRestriction>(
          map['scmIpRestrictions']!,
          (value) => GetAppServiceSiteConfigScmIpRestriction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      scmType: pulumi.Input.fromValue(map['scmType'] as String),
      scmUseMainIpRestriction: pulumi.Input.fromValue(
        map['scmUseMainIpRestriction'] as bool,
      ),
      use32BitWorkerProcess: pulumi.Input.fromValue(
        map['use32BitWorkerProcess'] as bool,
      ),
      vnetRouteAllEnabled: pulumi.Input.fromValue(
        map['vnetRouteAllEnabled'] as bool,
      ),
      websocketsEnabled: pulumi.Input.fromValue(
        map['websocketsEnabled'] as bool,
      ),
      windowsFxVersion: pulumi.Input.fromValue(
        map['windowsFxVersion'] as String,
      ),
    );
  }
}
