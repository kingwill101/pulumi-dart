// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler_response.dart';
import 'automatic_scaling_response.dart';
import 'basic_scaling_response.dart';
import 'deployment_response.dart';
import 'endpoints_api_service_response.dart';
import 'entrypoint_response.dart';
import 'error_handler_response.dart';
import 'flexible_runtime_settings_response.dart';
import 'health_check_response.dart';
import 'library_response.dart';
import 'liveness_check_response.dart';
import 'manual_scaling_response.dart';
import 'network_response.dart';
import 'readiness_check_response.dart';
import 'resources_response.dart';
import 'url_map_response.dart';
import 'vpc_access_connector_response.dart';

/// Result data returned by getVersion.
class GetVersionResult {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  final ApiConfigHandlerResponse? apiConfig;
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final bool? appEngineApis;
  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  final AutomaticScalingResponse? automaticScaling;
  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  final BasicScalingResponse? basicScaling;
  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final Map<String, String>? betaSettings;
  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  final Map<String, String>? buildEnvVariables;
  /// Time that this version was created.
  final String? createTime;
  /// Email address of the user who created this version.
  final String? createdBy;
  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  final String? defaultExpiration;
  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  final DeploymentResponse? deployment;
  /// Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.
  final String? diskUsageBytes;
  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  final EndpointsApiServiceResponse? endpointsApiService;
  /// The entrypoint for the application.
  final EntrypointResponse? entrypoint;
  /// App Engine execution environment for this version.Defaults to standard.
  final String? env;
  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  final Map<String, String>? envVariables;
  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  final List<ErrorHandlerResponse>? errorHandlers;
  /// Settings for App Engine flexible runtimes.
  final FlexibleRuntimeSettingsResponse? flexibleRuntimeSettings;
  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  final Map<String, String>? generatedCustomerMetadata;
  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  final List<UrlMapResponse>? handlers;
  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  final HealthCheckResponse? healthCheck;
  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  final List<String>? inboundServices;
  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  final String? instanceClass;
  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  final List<LibraryResponse>? libraries;
  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  final LivenessCheckResponse? livenessCheck;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  final ManualScalingResponse? manualScaling;
  /// Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.
  final String? name;
  /// Extra network settings. Only applicable in the App Engine flexible environment.
  final NetworkResponse? network;
  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  final String? nobuildFilesRegex;
  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  final ReadinessCheckResponse? readinessCheck;
  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  final ResourcesResponse? resources;
  /// Desired runtime. Example: python27.
  final String? runtime;
  /// The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  final String? runtimeApiVersion;
  /// The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  final String? runtimeChannel;
  /// The path or name of the app's main executable.
  final String? runtimeMainExecutablePath;
  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final String? serviceAccount;
  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  final String? servingStatus;
  /// Whether multiple requests can be dispatched to this version at once.
  final bool? threadsafe;
  /// Serving URL for this version. Example: "https://myversion-dot-myservice-dot-myapp.appspot.com"
  final String? versionUrl;
  /// Whether to deploy this version in a container on a virtual machine.
  final bool? vm;
  /// Enables VPC connectivity for standard apps.
  final VpcAccessConnectorResponse? vpcAccessConnector;
  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  final List<String>? zones;

  /// Creates a new [GetVersionResult].
  /// [apiConfig] Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  /// [appEngineApis] Allows App Engine second generation runtimes to access the legacy bundled services.
  /// [automaticScaling] Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  /// [basicScaling] A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// [betaSettings] Metadata settings that are supplied to this version to enable beta runtime features.
  /// [buildEnvVariables] Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  /// [createTime] Time that this version was created.
  /// [createdBy] Email address of the user who created this version.
  /// [defaultExpiration] Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  /// [deployment] Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  /// [diskUsageBytes] Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.
  /// [endpointsApiService] Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  /// [entrypoint] The entrypoint for the application.
  /// [env] App Engine execution environment for this version.Defaults to standard.
  /// [envVariables] Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  /// [errorHandlers] Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  /// [flexibleRuntimeSettings] Settings for App Engine flexible runtimes.
  /// [generatedCustomerMetadata] Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  /// [handlers] An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  /// [healthCheck] Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  /// [inboundServices] Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  /// [instanceClass] Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  /// [libraries] Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  /// [livenessCheck] Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  /// [manualScaling] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  /// [name] Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.
  /// [network] Extra network settings. Only applicable in the App Engine flexible environment.
  /// [nobuildFilesRegex] Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  /// [readinessCheck] Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// [resources] Machine resources for this version. Only applicable in the App Engine flexible environment.
  /// [runtime] Desired runtime. Example: python27.
  /// [runtimeApiVersion] The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  /// [runtimeChannel] The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  /// [runtimeMainExecutablePath] The path or name of the app's main executable.
  /// [serviceAccount] The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  /// [servingStatus] Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  /// [threadsafe] Whether multiple requests can be dispatched to this version at once.
  /// [versionUrl] Serving URL for this version. Example: "https://myversion-dot-myservice-dot-myapp.appspot.com"
  /// [vm] Whether to deploy this version in a container on a virtual machine.
  /// [vpcAccessConnector] Enables VPC connectivity for standard apps.
  /// [zones] The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  const GetVersionResult({
    this.apiConfig,
    this.appEngineApis,
    this.automaticScaling,
    this.basicScaling,
    this.betaSettings,
    this.buildEnvVariables,
    this.createTime,
    this.createdBy,
    this.defaultExpiration,
    this.deployment,
    this.diskUsageBytes,
    this.endpointsApiService,
    this.entrypoint,
    this.env,
    this.envVariables,
    this.errorHandlers,
    this.flexibleRuntimeSettings,
    this.generatedCustomerMetadata,
    this.handlers,
    this.healthCheck,
    this.inboundServices,
    this.instanceClass,
    this.libraries,
    this.livenessCheck,
    this.manualScaling,
    this.name,
    this.network,
    this.nobuildFilesRegex,
    this.readinessCheck,
    this.resources,
    this.runtime,
    this.runtimeApiVersion,
    this.runtimeChannel,
    this.runtimeMainExecutablePath,
    this.serviceAccount,
    this.servingStatus,
    this.threadsafe,
    this.versionUrl,
    this.vm,
    this.vpcAccessConnector,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': ?apiConfig?.toMap(),
      'appEngineApis': ?appEngineApis,
      'automaticScaling': ?automaticScaling?.toMap(),
      'basicScaling': ?basicScaling?.toMap(),
      'betaSettings': ?betaSettings,
      'buildEnvVariables': ?buildEnvVariables,
      'createTime': ?createTime,
      'createdBy': ?createdBy,
      'defaultExpiration': ?defaultExpiration,
      'deployment': ?deployment?.toMap(),
      'diskUsageBytes': ?diskUsageBytes,
      'endpointsApiService': ?endpointsApiService?.toMap(),
      'entrypoint': ?entrypoint?.toMap(),
      'env': ?env,
      'envVariables': ?envVariables,
      'errorHandlers': ?(() { final guardedValue = errorHandlers; if (guardedValue == null) return null; return pulumi.Input.encodeList<ErrorHandlerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'flexibleRuntimeSettings': ?flexibleRuntimeSettings?.toMap(),
      'generatedCustomerMetadata': ?generatedCustomerMetadata,
      'handlers': ?(() { final guardedValue = handlers; if (guardedValue == null) return null; return pulumi.Input.encodeList<UrlMapResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthCheck': ?healthCheck?.toMap(),
      'inboundServices': ?inboundServices,
      'instanceClass': ?instanceClass,
      'libraries': ?(() { final guardedValue = libraries; if (guardedValue == null) return null; return pulumi.Input.encodeList<LibraryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'livenessCheck': ?livenessCheck?.toMap(),
      'manualScaling': ?manualScaling?.toMap(),
      'name': ?name,
      'network': ?network?.toMap(),
      'nobuildFilesRegex': ?nobuildFilesRegex,
      'readinessCheck': ?readinessCheck?.toMap(),
      'resources': ?resources?.toMap(),
      'runtime': ?runtime,
      'runtimeApiVersion': ?runtimeApiVersion,
      'runtimeChannel': ?runtimeChannel,
      'runtimeMainExecutablePath': ?runtimeMainExecutablePath,
      'serviceAccount': ?serviceAccount,
      'servingStatus': ?servingStatus,
      'threadsafe': ?threadsafe,
      'versionUrl': ?versionUrl,
      'vm': ?vm,
      'vpcAccessConnector': ?vpcAccessConnector?.toMap(),
      'zones': ?zones,
    };
  }

  factory GetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetVersionResult(
      apiConfig: (() { final guardedValue = map['apiConfig']; if (guardedValue == null) return null; return ApiConfigHandlerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      appEngineApis: (() { final guardedValue = map['appEngineApis']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      automaticScaling: (() { final guardedValue = map['automaticScaling']; if (guardedValue == null) return null; return AutomaticScalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      basicScaling: (() { final guardedValue = map['basicScaling']; if (guardedValue == null) return null; return BasicScalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      betaSettings: (() { final guardedValue = map['betaSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      buildEnvVariables: (() { final guardedValue = map['buildEnvVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultExpiration: (() { final guardedValue = map['defaultExpiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return DeploymentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      diskUsageBytes: (() { final guardedValue = map['diskUsageBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointsApiService: (() { final guardedValue = map['endpointsApiService']; if (guardedValue == null) return null; return EndpointsApiServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return EntrypointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return guardedValue as String; })(),
      envVariables: (() { final guardedValue = map['envVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      errorHandlers: (() { final guardedValue = map['errorHandlers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ErrorHandlerResponse>(guardedValue, (value) => ErrorHandlerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      flexibleRuntimeSettings: (() { final guardedValue = map['flexibleRuntimeSettings']; if (guardedValue == null) return null; return FlexibleRuntimeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      generatedCustomerMetadata: (() { final guardedValue = map['generatedCustomerMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      handlers: (() { final guardedValue = map['handlers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<UrlMapResponse>(guardedValue, (value) => UrlMapResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return HealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inboundServices: (() { final guardedValue = map['inboundServices']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      libraries: (() { final guardedValue = map['libraries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LibraryResponse>(guardedValue, (value) => LibraryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      livenessCheck: (() { final guardedValue = map['livenessCheck']; if (guardedValue == null) return null; return LivenessCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      manualScaling: (() { final guardedValue = map['manualScaling']; if (guardedValue == null) return null; return ManualScalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return NetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nobuildFilesRegex: (() { final guardedValue = map['nobuildFilesRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readinessCheck: (() { final guardedValue = map['readinessCheck']; if (guardedValue == null) return null; return ReadinessCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return ResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeApiVersion: (() { final guardedValue = map['runtimeApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeChannel: (() { final guardedValue = map['runtimeChannel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeMainExecutablePath: (() { final guardedValue = map['runtimeMainExecutablePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servingStatus: (() { final guardedValue = map['servingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threadsafe: (() { final guardedValue = map['threadsafe']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      versionUrl: (() { final guardedValue = map['versionUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vm: (() { final guardedValue = map['vm']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vpcAccessConnector: (() { final guardedValue = map['vpcAccessConnector']; if (guardedValue == null) return null; return VpcAccessConnectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
