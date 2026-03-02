// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler.dart';
import 'automatic_scaling.dart';
import 'basic_scaling.dart';
import 'deployment_type.dart';
import 'endpoints_api_service.dart';
import 'entrypoint.dart';
import 'error_handler.dart';
import 'flexible_runtime_settings.dart';
import 'health_check.dart';
import 'library.dart';
import 'liveness_check.dart';
import 'manual_scaling.dart';
import 'network.dart';
import 'readiness_check.dart';
import 'resources.dart';
import 'url_map.dart';
import 'version_inbound_services_item.dart';
import 'version_serving_status.dart';
import 'vpc_access_connector.dart';

/// {@template pulumi_appengine_v1_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_version_args_doc}
class VersionArgs {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  final pulumi.Input<ApiConfigHandler>? apiConfig;
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final pulumi.Input<bool>? appEngineApis;
  final pulumi.Input<String> appId;
  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  final pulumi.Input<AutomaticScaling>? automaticScaling;
  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  final pulumi.Input<BasicScaling>? basicScaling;
  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final pulumi.Input<Map<String, String>>? betaSettings;
  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<Map<String, String>>? buildEnvVariables;
  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<String>? defaultExpiration;
  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<DeploymentType>? deployment;
  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  final pulumi.Input<EndpointsApiService>? endpointsApiService;
  /// The entrypoint for the application.
  final pulumi.Input<Entrypoint>? entrypoint;
  /// App Engine execution environment for this version.Defaults to standard.
  final pulumi.Input<String>? env;
  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<Map<String, String>>? envVariables;
  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<ErrorHandler>>? errorHandlers;
  /// Settings for App Engine flexible runtimes.
  final pulumi.Input<FlexibleRuntimeSettings>? flexibleRuntimeSettings;
  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  final pulumi.Input<Map<String, String>>? generatedCustomerMetadata;
  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<UrlMap>>? handlers;
  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  final pulumi.Input<HealthCheck>? healthCheck;
  /// Relative name of the version within the service. Example: v1. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names: "default", "latest", and any name with the prefix "ah-".
  final pulumi.Input<String>? id;
  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  final pulumi.Input<List<VersionInboundServicesItem>>? inboundServices;
  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  final pulumi.Input<String>? instanceClass;
  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<Library>>? libraries;
  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  final pulumi.Input<LivenessCheck>? livenessCheck;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  final pulumi.Input<ManualScaling>? manualScaling;
  /// Extra network settings. Only applicable in the App Engine flexible environment.
  final pulumi.Input<Network>? network;
  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<String>? nobuildFilesRegex;
  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  final pulumi.Input<ReadinessCheck>? readinessCheck;
  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  final pulumi.Input<Resources>? resources;
  /// Desired runtime. Example: python27.
  final pulumi.Input<String>? runtime;
  /// The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  final pulumi.Input<String>? runtimeApiVersion;
  /// The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  final pulumi.Input<String>? runtimeChannel;
  /// The path or name of the app's main executable.
  final pulumi.Input<String>? runtimeMainExecutablePath;
  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final pulumi.Input<String>? serviceAccount;
  final pulumi.Input<String> serviceId;
  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  final pulumi.Input<VersionServingStatus>? servingStatus;
  /// Whether multiple requests can be dispatched to this version at once.
  final pulumi.Input<bool>? threadsafe;
  /// Whether to deploy this version in a container on a virtual machine.
  final pulumi.Input<bool>? vm;
  /// Enables VPC connectivity for standard apps.
  final pulumi.Input<VpcAccessConnector>? vpcAccessConnector;
  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [VersionArgs].
  /// [apiConfig] Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  /// [appEngineApis] Allows App Engine second generation runtimes to access the legacy bundled services.
  /// [appId] Required.
  /// [automaticScaling] Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  /// [basicScaling] A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// [betaSettings] Metadata settings that are supplied to this version to enable beta runtime features.
  /// [buildEnvVariables] Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  /// [defaultExpiration] Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  /// [deployment] Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  /// [endpointsApiService] Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  /// [entrypoint] The entrypoint for the application.
  /// [env] App Engine execution environment for this version.Defaults to standard.
  /// [envVariables] Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  /// [errorHandlers] Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  /// [flexibleRuntimeSettings] Settings for App Engine flexible runtimes.
  /// [generatedCustomerMetadata] Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  /// [handlers] An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  /// [healthCheck] Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  /// [id] Relative name of the version within the service. Example: v1. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names: "default", "latest", and any name with the prefix "ah-".
  /// [inboundServices] Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  /// [instanceClass] Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  /// [libraries] Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  /// [livenessCheck] Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  /// [manualScaling] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  /// [network] Extra network settings. Only applicable in the App Engine flexible environment.
  /// [nobuildFilesRegex] Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  /// [readinessCheck] Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// [resources] Machine resources for this version. Only applicable in the App Engine flexible environment.
  /// [runtime] Desired runtime. Example: python27.
  /// [runtimeApiVersion] The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  /// [runtimeChannel] The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  /// [runtimeMainExecutablePath] The path or name of the app's main executable.
  /// [serviceAccount] The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  /// [serviceId] Required.
  /// [servingStatus] Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  /// [threadsafe] Whether multiple requests can be dispatched to this version at once.
  /// [vm] Whether to deploy this version in a container on a virtual machine.
  /// [vpcAccessConnector] Enables VPC connectivity for standard apps.
  /// [zones] The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  VersionArgs({
    this.apiConfig,
    this.appEngineApis,
    required this.appId,
    this.automaticScaling,
    this.basicScaling,
    this.betaSettings,
    this.buildEnvVariables,
    this.defaultExpiration,
    this.deployment,
    this.endpointsApiService,
    this.entrypoint,
    this.env,
    this.envVariables,
    this.errorHandlers,
    this.flexibleRuntimeSettings,
    this.generatedCustomerMetadata,
    this.handlers,
    this.healthCheck,
    this.id,
    this.inboundServices,
    this.instanceClass,
    this.libraries,
    this.livenessCheck,
    this.manualScaling,
    this.network,
    this.nobuildFilesRegex,
    this.readinessCheck,
    this.resources,
    this.runtime,
    this.runtimeApiVersion,
    this.runtimeChannel,
    this.runtimeMainExecutablePath,
    this.serviceAccount,
    required this.serviceId,
    this.servingStatus,
    this.threadsafe,
    this.vm,
    this.vpcAccessConnector,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandler, Map<String, dynamic>>(apiConfig, (value) => value.toMap()),
      'appEngineApis': ?appEngineApis,
      'appId': appId,
      'automaticScaling': ?pulumi.Input.mapOptionalInputValue<AutomaticScaling, Map<String, dynamic>>(automaticScaling, (value) => value.toMap()),
      'basicScaling': ?pulumi.Input.mapOptionalInputValue<BasicScaling, Map<String, dynamic>>(basicScaling, (value) => value.toMap()),
      'betaSettings': ?betaSettings,
      'buildEnvVariables': ?buildEnvVariables,
      'defaultExpiration': ?defaultExpiration,
      'deployment': ?pulumi.Input.mapOptionalInputValue<DeploymentType, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'endpointsApiService': ?pulumi.Input.mapOptionalInputValue<EndpointsApiService, Map<String, dynamic>>(endpointsApiService, (value) => value.toMap()),
      'entrypoint': ?pulumi.Input.mapOptionalInputValue<Entrypoint, Map<String, dynamic>>(entrypoint, (value) => value.toMap()),
      'env': ?env,
      'envVariables': ?envVariables,
      'errorHandlers': ?pulumi.Input.mapOptionalInputValue<List<ErrorHandler>, List<Map<String, dynamic>>>(errorHandlers, (value) => pulumi.Input.encodeList<ErrorHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flexibleRuntimeSettings': ?pulumi.Input.mapOptionalInputValue<FlexibleRuntimeSettings, Map<String, dynamic>>(flexibleRuntimeSettings, (value) => value.toMap()),
      'generatedCustomerMetadata': ?generatedCustomerMetadata,
      'handlers': ?pulumi.Input.mapOptionalInputValue<List<UrlMap>, List<Map<String, dynamic>>>(handlers, (value) => pulumi.Input.encodeList<UrlMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'id': ?id,
      'inboundServices': ?pulumi.Input.mapOptionalInputValue<List<VersionInboundServicesItem>, List<String>>(inboundServices, (value) => pulumi.Input.encodeList<VersionInboundServicesItem, String>(value, (value) => value.value)),
      'instanceClass': ?instanceClass,
      'libraries': ?pulumi.Input.mapOptionalInputValue<List<Library>, List<Map<String, dynamic>>>(libraries, (value) => pulumi.Input.encodeList<Library, Map<String, dynamic>>(value, (value) => value.toMap())),
      'livenessCheck': ?pulumi.Input.mapOptionalInputValue<LivenessCheck, Map<String, dynamic>>(livenessCheck, (value) => value.toMap()),
      'manualScaling': ?pulumi.Input.mapOptionalInputValue<ManualScaling, Map<String, dynamic>>(manualScaling, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<Network, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nobuildFilesRegex': ?nobuildFilesRegex,
      'readinessCheck': ?pulumi.Input.mapOptionalInputValue<ReadinessCheck, Map<String, dynamic>>(readinessCheck, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<Resources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'runtime': ?runtime,
      'runtimeApiVersion': ?runtimeApiVersion,
      'runtimeChannel': ?runtimeChannel,
      'runtimeMainExecutablePath': ?runtimeMainExecutablePath,
      'serviceAccount': ?serviceAccount,
      'serviceId': serviceId,
      'servingStatus': ?pulumi.Input.mapOptionalInputValue<VersionServingStatus, String>(servingStatus, (value) => value.value),
      'threadsafe': ?threadsafe,
      'vm': ?vm,
      'vpcAccessConnector': ?pulumi.Input.mapOptionalInputValue<VpcAccessConnector, Map<String, dynamic>>(vpcAccessConnector, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      apiConfig: map['apiConfig'] == null ? null : (ApiConfigHandler.fromMap((map['apiConfig']! as Map).cast<String, dynamic>())).input(),
      appEngineApis: map['appEngineApis'] == null ? null : (map['appEngineApis']! as bool).input(),
      appId: (map['appId'] as String).input(),
      automaticScaling: map['automaticScaling'] == null ? null : (AutomaticScaling.fromMap((map['automaticScaling']! as Map).cast<String, dynamic>())).input(),
      basicScaling: map['basicScaling'] == null ? null : (BasicScaling.fromMap((map['basicScaling']! as Map).cast<String, dynamic>())).input(),
      betaSettings: map['betaSettings'] == null ? null : ((map['betaSettings']! as Map).cast<String, String>()).input(),
      buildEnvVariables: map['buildEnvVariables'] == null ? null : ((map['buildEnvVariables']! as Map).cast<String, String>()).input(),
      defaultExpiration: map['defaultExpiration'] == null ? null : (map['defaultExpiration']! as String).input(),
      deployment: map['deployment'] == null ? null : (DeploymentType.fromMap((map['deployment']! as Map).cast<String, dynamic>())).input(),
      endpointsApiService: map['endpointsApiService'] == null ? null : (EndpointsApiService.fromMap((map['endpointsApiService']! as Map).cast<String, dynamic>())).input(),
      entrypoint: map['entrypoint'] == null ? null : (Entrypoint.fromMap((map['entrypoint']! as Map).cast<String, dynamic>())).input(),
      env: map['env'] == null ? null : (map['env']! as String).input(),
      envVariables: map['envVariables'] == null ? null : ((map['envVariables']! as Map).cast<String, String>()).input(),
      errorHandlers: map['errorHandlers'] == null ? null : (pulumi.Input.decodeList<ErrorHandler>(map['errorHandlers']!, (value) => ErrorHandler.fromMap((value as Map).cast<String, dynamic>()))).input(),
      flexibleRuntimeSettings: map['flexibleRuntimeSettings'] == null ? null : (FlexibleRuntimeSettings.fromMap((map['flexibleRuntimeSettings']! as Map).cast<String, dynamic>())).input(),
      generatedCustomerMetadata: map['generatedCustomerMetadata'] == null ? null : ((map['generatedCustomerMetadata']! as Map).cast<String, String>()).input(),
      handlers: map['handlers'] == null ? null : (pulumi.Input.decodeList<UrlMap>(map['handlers']!, (value) => UrlMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      healthCheck: map['healthCheck'] == null ? null : (HealthCheck.fromMap((map['healthCheck']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      inboundServices: map['inboundServices'] == null ? null : (pulumi.Input.decodeList<VersionInboundServicesItem>(map['inboundServices']!, (value) => VersionInboundServicesItem.fromValue(value as String))).input(),
      instanceClass: map['instanceClass'] == null ? null : (map['instanceClass']! as String).input(),
      libraries: map['libraries'] == null ? null : (pulumi.Input.decodeList<Library>(map['libraries']!, (value) => Library.fromMap((value as Map).cast<String, dynamic>()))).input(),
      livenessCheck: map['livenessCheck'] == null ? null : (LivenessCheck.fromMap((map['livenessCheck']! as Map).cast<String, dynamic>())).input(),
      manualScaling: map['manualScaling'] == null ? null : (ManualScaling.fromMap((map['manualScaling']! as Map).cast<String, dynamic>())).input(),
      network: map['network'] == null ? null : (Network.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
      nobuildFilesRegex: map['nobuildFilesRegex'] == null ? null : (map['nobuildFilesRegex']! as String).input(),
      readinessCheck: map['readinessCheck'] == null ? null : (ReadinessCheck.fromMap((map['readinessCheck']! as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (Resources.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
      runtime: map['runtime'] == null ? null : (map['runtime']! as String).input(),
      runtimeApiVersion: map['runtimeApiVersion'] == null ? null : (map['runtimeApiVersion']! as String).input(),
      runtimeChannel: map['runtimeChannel'] == null ? null : (map['runtimeChannel']! as String).input(),
      runtimeMainExecutablePath: map['runtimeMainExecutablePath'] == null ? null : (map['runtimeMainExecutablePath']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
      servingStatus: map['servingStatus'] == null ? null : (VersionServingStatus.fromValue(map['servingStatus']! as String)).input(),
      threadsafe: map['threadsafe'] == null ? null : (map['threadsafe']! as bool).input(),
      vm: map['vm'] == null ? null : (map['vm']! as bool).input(),
      vpcAccessConnector: map['vpcAccessConnector'] == null ? null : (VpcAccessConnector.fromMap((map['vpcAccessConnector']! as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

