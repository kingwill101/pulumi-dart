// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler_response_appengine_v1beta.dart';
import 'automatic_scaling_response_appengine_v1beta.dart';
import 'basic_scaling_response_appengine_v1beta.dart';
import 'deployment_response_appengine_v1beta.dart';
import 'endpoints_api_service_response_appengine_v1beta.dart';
import 'entrypoint_response_appengine_v1beta.dart';
import 'error_handler_response_appengine_v1beta.dart';
import 'flexible_runtime_settings_response_appengine_v1beta.dart';
import 'health_check_response_appengine_v1beta.dart';
import 'library_response_appengine_v1beta.dart';
import 'liveness_check_response_appengine_v1beta.dart';
import 'manual_scaling_response_appengine_v1beta.dart';
import 'network_response_appengine_v1beta.dart';
import 'readiness_check_response_appengine_v1beta.dart';
import 'resources_response_appengine_v1beta.dart';
import 'url_map_response_appengine_v1beta.dart';
import 'vpc_access_connector_response_appengine_v1beta.dart';

/// Result data returned by getVersion.
class GetVersionAppengineV1betaResult {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  final ApiConfigHandlerResponseAppengineV1beta? apiConfig;
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final bool? appEngineApis;
  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  final AutomaticScalingResponseAppengineV1beta? automaticScaling;
  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  final BasicScalingResponseAppengineV1beta? basicScaling;
  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final Map<String, String>? betaSettings;
  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  final Map<String, String>? buildEnvVariables;
  /// Time that this version was created.
  final String? createTime;
  /// Email address of the user who created this version.
  final String? createdBy;
  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  final String? defaultExpiration;
  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  final DeploymentResponseAppengineV1beta? deployment;
  /// Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.
  final String? diskUsageBytes;
  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  final EndpointsApiServiceResponseAppengineV1beta? endpointsApiService;
  /// The entrypoint for the application.
  final EntrypointResponseAppengineV1beta? entrypoint;
  /// App Engine execution environment for this version.Defaults to standard.
  final String? env;
  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  final Map<String, String>? envVariables;
  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  final List<ErrorHandlerResponseAppengineV1beta>? errorHandlers;
  /// Settings for App Engine flexible runtimes.
  final FlexibleRuntimeSettingsResponseAppengineV1beta? flexibleRuntimeSettings;
  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  final Map<String, String>? generatedCustomerMetadata;
  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  final List<UrlMapResponseAppengineV1beta>? handlers;
  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  final HealthCheckResponseAppengineV1beta? healthCheck;
  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  final List<String>? inboundServices;
  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  final String? instanceClass;
  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  final List<LibraryResponseAppengineV1beta>? libraries;
  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  final LivenessCheckResponseAppengineV1beta? livenessCheck;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  final ManualScalingResponseAppengineV1beta? manualScaling;
  /// Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.
  final String? name;
  /// Extra network settings. Only applicable in the App Engine flexible environment.
  final NetworkResponseAppengineV1beta? network;
  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  final String? nobuildFilesRegex;
  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  final ReadinessCheckResponseAppengineV1beta? readinessCheck;
  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  final ResourcesResponseAppengineV1beta? resources;
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
  final VpcAccessConnectorResponseAppengineV1beta? vpcAccessConnector;
  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  final List<String>? zones;

  /// Creates a new [GetVersionAppengineV1betaResult].
  /// [apiConfig] Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  /// [appEngineApis] Allows App Engine second generation runtimes to access the legacy bundled services.
  /// [automaticScaling] Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  /// [basicScaling] A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// [betaSettings] Metadata settings that are supplied to this version to enable beta runtime features.
  /// [buildEnvVariables] Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  /// [createTime] Time that this version was created.
  /// [createdBy] Email address of the user who created this version.
  /// [defaultExpiration] Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
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
  const GetVersionAppengineV1betaResult({
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
      'errorHandlers': ?(() { final guardedValue = errorHandlers; if (guardedValue == null) return null; return pulumi.Input.encodeList<ErrorHandlerResponseAppengineV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'flexibleRuntimeSettings': ?flexibleRuntimeSettings?.toMap(),
      'generatedCustomerMetadata': ?generatedCustomerMetadata,
      'handlers': ?(() { final guardedValue = handlers; if (guardedValue == null) return null; return pulumi.Input.encodeList<UrlMapResponseAppengineV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthCheck': ?healthCheck?.toMap(),
      'inboundServices': ?inboundServices,
      'instanceClass': ?instanceClass,
      'libraries': ?(() { final guardedValue = libraries; if (guardedValue == null) return null; return pulumi.Input.encodeList<LibraryResponseAppengineV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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

  factory GetVersionAppengineV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetVersionAppengineV1betaResult(
      apiConfig: (() { final guardedValue = map['apiConfig']; if (guardedValue == null) return null; return ApiConfigHandlerResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      appEngineApis: (() { final guardedValue = map['appEngineApis']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      automaticScaling: (() { final guardedValue = map['automaticScaling']; if (guardedValue == null) return null; return AutomaticScalingResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      basicScaling: (() { final guardedValue = map['basicScaling']; if (guardedValue == null) return null; return BasicScalingResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      betaSettings: (() { final guardedValue = map['betaSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      buildEnvVariables: (() { final guardedValue = map['buildEnvVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultExpiration: (() { final guardedValue = map['defaultExpiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return DeploymentResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      diskUsageBytes: (() { final guardedValue = map['diskUsageBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointsApiService: (() { final guardedValue = map['endpointsApiService']; if (guardedValue == null) return null; return EndpointsApiServiceResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return EntrypointResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return guardedValue as String; })(),
      envVariables: (() { final guardedValue = map['envVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      errorHandlers: (() { final guardedValue = map['errorHandlers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ErrorHandlerResponseAppengineV1beta>(guardedValue, (value) => ErrorHandlerResponseAppengineV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      flexibleRuntimeSettings: (() { final guardedValue = map['flexibleRuntimeSettings']; if (guardedValue == null) return null; return FlexibleRuntimeSettingsResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      generatedCustomerMetadata: (() { final guardedValue = map['generatedCustomerMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      handlers: (() { final guardedValue = map['handlers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<UrlMapResponseAppengineV1beta>(guardedValue, (value) => UrlMapResponseAppengineV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return HealthCheckResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inboundServices: (() { final guardedValue = map['inboundServices']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      libraries: (() { final guardedValue = map['libraries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LibraryResponseAppengineV1beta>(guardedValue, (value) => LibraryResponseAppengineV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      livenessCheck: (() { final guardedValue = map['livenessCheck']; if (guardedValue == null) return null; return LivenessCheckResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      manualScaling: (() { final guardedValue = map['manualScaling']; if (guardedValue == null) return null; return ManualScalingResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return NetworkResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nobuildFilesRegex: (() { final guardedValue = map['nobuildFilesRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readinessCheck: (() { final guardedValue = map['readinessCheck']; if (guardedValue == null) return null; return ReadinessCheckResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return ResourcesResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeApiVersion: (() { final guardedValue = map['runtimeApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeChannel: (() { final guardedValue = map['runtimeChannel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeMainExecutablePath: (() { final guardedValue = map['runtimeMainExecutablePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servingStatus: (() { final guardedValue = map['servingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threadsafe: (() { final guardedValue = map['threadsafe']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      versionUrl: (() { final guardedValue = map['versionUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vm: (() { final guardedValue = map['vm']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vpcAccessConnector: (() { final guardedValue = map['vpcAccessConnector']; if (guardedValue == null) return null; return VpcAccessConnectorResponseAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
