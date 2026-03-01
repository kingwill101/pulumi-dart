// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler_appengine_v1beta.dart';
import 'automatic_scaling_appengine_v1beta.dart';
import 'basic_scaling_appengine_v1beta.dart';
import 'deployment_appengine_v1beta.dart';
import 'endpoints_api_service_appengine_v1beta.dart';
import 'entrypoint_appengine_v1beta.dart';
import 'error_handler_appengine_v1beta.dart';
import 'flexible_runtime_settings_appengine_v1beta.dart';
import 'health_check_appengine_v1beta.dart';
import 'library_appengine_v1beta.dart';
import 'liveness_check_appengine_v1beta.dart';
import 'manual_scaling_appengine_v1beta.dart';
import 'network_appengine_v1beta.dart';
import 'readiness_check_appengine_v1beta.dart';
import 'resources_appengine_v1beta.dart';
import 'url_map_appengine_v1beta.dart';
import 'version_inbound_services_item_appengine_v1beta.dart';
import 'version_serving_status_appengine_v1beta.dart';
import 'vpc_access_connector_appengine_v1beta.dart';

/// {@template pulumi_appengine_v1beta_version_appengine_v1beta_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_version_appengine_v1beta_args_doc}
class VersionAppengineV1betaArgs {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  final pulumi.Input<ApiConfigHandlerAppengineV1beta>? apiConfig;
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  final pulumi.Input<bool>? appEngineApis;
  final pulumi.Input<String> appId;
  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  final pulumi.Input<AutomaticScalingAppengineV1beta>? automaticScaling;
  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  final pulumi.Input<BasicScalingAppengineV1beta>? basicScaling;
  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final pulumi.Input<Map<String, String>>? betaSettings;
  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<Map<String, String>>? buildEnvVariables;
  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<String>? defaultExpiration;
  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<DeploymentAppengineV1beta>? deployment;
  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  final pulumi.Input<EndpointsApiServiceAppengineV1beta>? endpointsApiService;
  /// The entrypoint for the application.
  final pulumi.Input<EntrypointAppengineV1beta>? entrypoint;
  /// App Engine execution environment for this version.Defaults to standard.
  final pulumi.Input<String>? env;
  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<Map<String, String>>? envVariables;
  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<ErrorHandlerAppengineV1beta>>? errorHandlers;
  /// Settings for App Engine flexible runtimes.
  final pulumi.Input<FlexibleRuntimeSettingsAppengineV1beta>? flexibleRuntimeSettings;
  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  final pulumi.Input<Map<String, String>>? generatedCustomerMetadata;
  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<UrlMapAppengineV1beta>>? handlers;
  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  final pulumi.Input<HealthCheckAppengineV1beta>? healthCheck;
  /// Relative name of the version within the service. Example: v1. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names: "default", "latest", and any name with the prefix "ah-".
  final pulumi.Input<String>? id;
  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  final pulumi.Input<List<VersionInboundServicesItemAppengineV1beta>>? inboundServices;
  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  final pulumi.Input<String>? instanceClass;
  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<List<LibraryAppengineV1beta>>? libraries;
  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  final pulumi.Input<LivenessCheckAppengineV1beta>? livenessCheck;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  final pulumi.Input<ManualScalingAppengineV1beta>? manualScaling;
  /// Extra network settings. Only applicable in the App Engine flexible environment.
  final pulumi.Input<NetworkAppengineV1beta>? network;
  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  final pulumi.Input<String>? nobuildFilesRegex;
  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  final pulumi.Input<ReadinessCheckAppengineV1beta>? readinessCheck;
  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  final pulumi.Input<ResourcesAppengineV1beta>? resources;
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
  final pulumi.Input<VersionServingStatusAppengineV1beta>? servingStatus;
  /// Whether multiple requests can be dispatched to this version at once.
  final pulumi.Input<bool>? threadsafe;
  /// Whether to deploy this version in a container on a virtual machine.
  final pulumi.Input<bool>? vm;
  /// Enables VPC connectivity for standard apps.
  final pulumi.Input<VpcAccessConnectorAppengineV1beta>? vpcAccessConnector;
  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [VersionAppengineV1betaArgs].
  /// [apiConfig] Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  /// [appEngineApis] Allows App Engine second generation runtimes to access the legacy bundled services.
  /// [appId] Required.
  /// [automaticScaling] Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  /// [basicScaling] A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// [betaSettings] Metadata settings that are supplied to this version to enable beta runtime features.
  /// [buildEnvVariables] Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  /// [defaultExpiration] Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
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
  VersionAppengineV1betaArgs({
    pulumi.Output<ApiConfigHandlerAppengineV1beta>? apiConfig,
    pulumi.Output<bool>? appEngineApis,
    required pulumi.Output<String> appId,
    pulumi.Output<AutomaticScalingAppengineV1beta>? automaticScaling,
    pulumi.Output<BasicScalingAppengineV1beta>? basicScaling,
    pulumi.Output<Map<String, String>>? betaSettings,
    pulumi.Output<Map<String, String>>? buildEnvVariables,
    pulumi.Output<String>? defaultExpiration,
    pulumi.Output<DeploymentAppengineV1beta>? deployment,
    pulumi.Output<EndpointsApiServiceAppengineV1beta>? endpointsApiService,
    pulumi.Output<EntrypointAppengineV1beta>? entrypoint,
    pulumi.Output<String>? env,
    pulumi.Output<Map<String, String>>? envVariables,
    pulumi.Output<List<ErrorHandlerAppengineV1beta>>? errorHandlers,
    pulumi.Output<FlexibleRuntimeSettingsAppengineV1beta>? flexibleRuntimeSettings,
    pulumi.Output<Map<String, String>>? generatedCustomerMetadata,
    pulumi.Output<List<UrlMapAppengineV1beta>>? handlers,
    pulumi.Output<HealthCheckAppengineV1beta>? healthCheck,
    pulumi.Output<String>? id,
    pulumi.Output<List<VersionInboundServicesItemAppengineV1beta>>? inboundServices,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<List<LibraryAppengineV1beta>>? libraries,
    pulumi.Output<LivenessCheckAppengineV1beta>? livenessCheck,
    pulumi.Output<ManualScalingAppengineV1beta>? manualScaling,
    pulumi.Output<NetworkAppengineV1beta>? network,
    pulumi.Output<String>? nobuildFilesRegex,
    pulumi.Output<ReadinessCheckAppengineV1beta>? readinessCheck,
    pulumi.Output<ResourcesAppengineV1beta>? resources,
    pulumi.Output<String>? runtime,
    pulumi.Output<String>? runtimeApiVersion,
    pulumi.Output<String>? runtimeChannel,
    pulumi.Output<String>? runtimeMainExecutablePath,
    pulumi.Output<String>? serviceAccount,
    required pulumi.Output<String> serviceId,
    pulumi.Output<VersionServingStatusAppengineV1beta>? servingStatus,
    pulumi.Output<bool>? threadsafe,
    pulumi.Output<bool>? vm,
    pulumi.Output<VpcAccessConnectorAppengineV1beta>? vpcAccessConnector,
    pulumi.Output<List<String>>? zones,
  }) :
      apiConfig = pulumi.Input.asOptionalInput<ApiConfigHandlerAppengineV1beta>(apiConfig),
      appEngineApis = pulumi.Input.asOptionalInput<bool>(appEngineApis),
      appId = pulumi.Input.asInput<String>(appId),
      automaticScaling = pulumi.Input.asOptionalInput<AutomaticScalingAppengineV1beta>(automaticScaling),
      basicScaling = pulumi.Input.asOptionalInput<BasicScalingAppengineV1beta>(basicScaling),
      betaSettings = pulumi.Input.asOptionalInput<Map<String, String>>(betaSettings),
      buildEnvVariables = pulumi.Input.asOptionalInput<Map<String, String>>(buildEnvVariables),
      defaultExpiration = pulumi.Input.asOptionalInput<String>(defaultExpiration),
      deployment = pulumi.Input.asOptionalInput<DeploymentAppengineV1beta>(deployment),
      endpointsApiService = pulumi.Input.asOptionalInput<EndpointsApiServiceAppengineV1beta>(endpointsApiService),
      entrypoint = pulumi.Input.asOptionalInput<EntrypointAppengineV1beta>(entrypoint),
      env = pulumi.Input.asOptionalInput<String>(env),
      envVariables = pulumi.Input.asOptionalInput<Map<String, String>>(envVariables),
      errorHandlers = pulumi.Input.asOptionalInput<List<ErrorHandlerAppengineV1beta>>(errorHandlers),
      flexibleRuntimeSettings = pulumi.Input.asOptionalInput<FlexibleRuntimeSettingsAppengineV1beta>(flexibleRuntimeSettings),
      generatedCustomerMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(generatedCustomerMetadata),
      handlers = pulumi.Input.asOptionalInput<List<UrlMapAppengineV1beta>>(handlers),
      healthCheck = pulumi.Input.asOptionalInput<HealthCheckAppengineV1beta>(healthCheck),
      id = pulumi.Input.asOptionalInput<String>(id),
      inboundServices = pulumi.Input.asOptionalInput<List<VersionInboundServicesItemAppengineV1beta>>(inboundServices),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      libraries = pulumi.Input.asOptionalInput<List<LibraryAppengineV1beta>>(libraries),
      livenessCheck = pulumi.Input.asOptionalInput<LivenessCheckAppengineV1beta>(livenessCheck),
      manualScaling = pulumi.Input.asOptionalInput<ManualScalingAppengineV1beta>(manualScaling),
      network = pulumi.Input.asOptionalInput<NetworkAppengineV1beta>(network),
      nobuildFilesRegex = pulumi.Input.asOptionalInput<String>(nobuildFilesRegex),
      readinessCheck = pulumi.Input.asOptionalInput<ReadinessCheckAppengineV1beta>(readinessCheck),
      resources = pulumi.Input.asOptionalInput<ResourcesAppengineV1beta>(resources),
      runtime = pulumi.Input.asOptionalInput<String>(runtime),
      runtimeApiVersion = pulumi.Input.asOptionalInput<String>(runtimeApiVersion),
      runtimeChannel = pulumi.Input.asOptionalInput<String>(runtimeChannel),
      runtimeMainExecutablePath = pulumi.Input.asOptionalInput<String>(runtimeMainExecutablePath),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      servingStatus = pulumi.Input.asOptionalInput<VersionServingStatusAppengineV1beta>(servingStatus),
      threadsafe = pulumi.Input.asOptionalInput<bool>(threadsafe),
      vm = pulumi.Input.asOptionalInput<bool>(vm),
      vpcAccessConnector = pulumi.Input.asOptionalInput<VpcAccessConnectorAppengineV1beta>(vpcAccessConnector),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerAppengineV1beta, Map<String, dynamic>>(apiConfig, (value) => value.toMap()),
      'appEngineApis': ?appEngineApis,
      'appId': appId,
      'automaticScaling': ?pulumi.Input.mapOptionalInputValue<AutomaticScalingAppengineV1beta, Map<String, dynamic>>(automaticScaling, (value) => value.toMap()),
      'basicScaling': ?pulumi.Input.mapOptionalInputValue<BasicScalingAppengineV1beta, Map<String, dynamic>>(basicScaling, (value) => value.toMap()),
      'betaSettings': ?betaSettings,
      'buildEnvVariables': ?buildEnvVariables,
      'defaultExpiration': ?defaultExpiration,
      'deployment': ?pulumi.Input.mapOptionalInputValue<DeploymentAppengineV1beta, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'endpointsApiService': ?pulumi.Input.mapOptionalInputValue<EndpointsApiServiceAppengineV1beta, Map<String, dynamic>>(endpointsApiService, (value) => value.toMap()),
      'entrypoint': ?pulumi.Input.mapOptionalInputValue<EntrypointAppengineV1beta, Map<String, dynamic>>(entrypoint, (value) => value.toMap()),
      'env': ?env,
      'envVariables': ?envVariables,
      'errorHandlers': ?pulumi.Input.mapOptionalInputValue<List<ErrorHandlerAppengineV1beta>, List<Map<String, dynamic>>>(errorHandlers, (value) => pulumi.Input.encodeList<ErrorHandlerAppengineV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flexibleRuntimeSettings': ?pulumi.Input.mapOptionalInputValue<FlexibleRuntimeSettingsAppengineV1beta, Map<String, dynamic>>(flexibleRuntimeSettings, (value) => value.toMap()),
      'generatedCustomerMetadata': ?generatedCustomerMetadata,
      'handlers': ?pulumi.Input.mapOptionalInputValue<List<UrlMapAppengineV1beta>, List<Map<String, dynamic>>>(handlers, (value) => pulumi.Input.encodeList<UrlMapAppengineV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckAppengineV1beta, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'id': ?id,
      'inboundServices': ?pulumi.Input.mapOptionalInputValue<List<VersionInboundServicesItemAppengineV1beta>, List<String>>(inboundServices, (value) => pulumi.Input.encodeList<VersionInboundServicesItemAppengineV1beta, String>(value, (value) => value.value)),
      'instanceClass': ?instanceClass,
      'libraries': ?pulumi.Input.mapOptionalInputValue<List<LibraryAppengineV1beta>, List<Map<String, dynamic>>>(libraries, (value) => pulumi.Input.encodeList<LibraryAppengineV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'livenessCheck': ?pulumi.Input.mapOptionalInputValue<LivenessCheckAppengineV1beta, Map<String, dynamic>>(livenessCheck, (value) => value.toMap()),
      'manualScaling': ?pulumi.Input.mapOptionalInputValue<ManualScalingAppengineV1beta, Map<String, dynamic>>(manualScaling, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<NetworkAppengineV1beta, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nobuildFilesRegex': ?nobuildFilesRegex,
      'readinessCheck': ?pulumi.Input.mapOptionalInputValue<ReadinessCheckAppengineV1beta, Map<String, dynamic>>(readinessCheck, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourcesAppengineV1beta, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'runtime': ?runtime,
      'runtimeApiVersion': ?runtimeApiVersion,
      'runtimeChannel': ?runtimeChannel,
      'runtimeMainExecutablePath': ?runtimeMainExecutablePath,
      'serviceAccount': ?serviceAccount,
      'serviceId': serviceId,
      'servingStatus': ?pulumi.Input.mapOptionalInputValue<VersionServingStatusAppengineV1beta, String>(servingStatus, (value) => value.value),
      'threadsafe': ?threadsafe,
      'vm': ?vm,
      'vpcAccessConnector': ?pulumi.Input.mapOptionalInputValue<VpcAccessConnectorAppengineV1beta, Map<String, dynamic>>(vpcAccessConnector, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory VersionAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return VersionAppengineV1betaArgs(
      apiConfig: map['apiConfig'] == null ? null : pulumi.Output.create<ApiConfigHandlerAppengineV1beta>(ApiConfigHandlerAppengineV1beta.fromMap((map['apiConfig'] as Map).cast<String, dynamic>())),
      appEngineApis: map['appEngineApis'] == null ? null : pulumi.Output.create<bool>(map['appEngineApis'] as bool),
      appId: pulumi.Output.create<String>(map['appId'] as String),
      automaticScaling: map['automaticScaling'] == null ? null : pulumi.Output.create<AutomaticScalingAppengineV1beta>(AutomaticScalingAppengineV1beta.fromMap((map['automaticScaling'] as Map).cast<String, dynamic>())),
      basicScaling: map['basicScaling'] == null ? null : pulumi.Output.create<BasicScalingAppengineV1beta>(BasicScalingAppengineV1beta.fromMap((map['basicScaling'] as Map).cast<String, dynamic>())),
      betaSettings: map['betaSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['betaSettings'] as Map).cast<String, String>()),
      buildEnvVariables: map['buildEnvVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['buildEnvVariables'] as Map).cast<String, String>()),
      defaultExpiration: map['defaultExpiration'] == null ? null : pulumi.Output.create<String>(map['defaultExpiration'] as String),
      deployment: map['deployment'] == null ? null : pulumi.Output.create<DeploymentAppengineV1beta>(DeploymentAppengineV1beta.fromMap((map['deployment'] as Map).cast<String, dynamic>())),
      endpointsApiService: map['endpointsApiService'] == null ? null : pulumi.Output.create<EndpointsApiServiceAppengineV1beta>(EndpointsApiServiceAppengineV1beta.fromMap((map['endpointsApiService'] as Map).cast<String, dynamic>())),
      entrypoint: map['entrypoint'] == null ? null : pulumi.Output.create<EntrypointAppengineV1beta>(EntrypointAppengineV1beta.fromMap((map['entrypoint'] as Map).cast<String, dynamic>())),
      env: map['env'] == null ? null : pulumi.Output.create<String>(map['env'] as String),
      envVariables: map['envVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['envVariables'] as Map).cast<String, String>()),
      errorHandlers: map['errorHandlers'] == null ? null : pulumi.Output.create<List<ErrorHandlerAppengineV1beta>>(pulumi.Input.decodeList<ErrorHandlerAppengineV1beta>(map['errorHandlers'], (value) => ErrorHandlerAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      flexibleRuntimeSettings: map['flexibleRuntimeSettings'] == null ? null : pulumi.Output.create<FlexibleRuntimeSettingsAppengineV1beta>(FlexibleRuntimeSettingsAppengineV1beta.fromMap((map['flexibleRuntimeSettings'] as Map).cast<String, dynamic>())),
      generatedCustomerMetadata: map['generatedCustomerMetadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['generatedCustomerMetadata'] as Map).cast<String, String>()),
      handlers: map['handlers'] == null ? null : pulumi.Output.create<List<UrlMapAppengineV1beta>>(pulumi.Input.decodeList<UrlMapAppengineV1beta>(map['handlers'], (value) => UrlMapAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      healthCheck: map['healthCheck'] == null ? null : pulumi.Output.create<HealthCheckAppengineV1beta>(HealthCheckAppengineV1beta.fromMap((map['healthCheck'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      inboundServices: map['inboundServices'] == null ? null : pulumi.Output.create<List<VersionInboundServicesItemAppengineV1beta>>(pulumi.Input.decodeList<VersionInboundServicesItemAppengineV1beta>(map['inboundServices'], (value) => VersionInboundServicesItemAppengineV1beta.fromValue(value as String))),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      libraries: map['libraries'] == null ? null : pulumi.Output.create<List<LibraryAppengineV1beta>>(pulumi.Input.decodeList<LibraryAppengineV1beta>(map['libraries'], (value) => LibraryAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      livenessCheck: map['livenessCheck'] == null ? null : pulumi.Output.create<LivenessCheckAppengineV1beta>(LivenessCheckAppengineV1beta.fromMap((map['livenessCheck'] as Map).cast<String, dynamic>())),
      manualScaling: map['manualScaling'] == null ? null : pulumi.Output.create<ManualScalingAppengineV1beta>(ManualScalingAppengineV1beta.fromMap((map['manualScaling'] as Map).cast<String, dynamic>())),
      network: map['network'] == null ? null : pulumi.Output.create<NetworkAppengineV1beta>(NetworkAppengineV1beta.fromMap((map['network'] as Map).cast<String, dynamic>())),
      nobuildFilesRegex: map['nobuildFilesRegex'] == null ? null : pulumi.Output.create<String>(map['nobuildFilesRegex'] as String),
      readinessCheck: map['readinessCheck'] == null ? null : pulumi.Output.create<ReadinessCheckAppengineV1beta>(ReadinessCheckAppengineV1beta.fromMap((map['readinessCheck'] as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : pulumi.Output.create<ResourcesAppengineV1beta>(ResourcesAppengineV1beta.fromMap((map['resources'] as Map).cast<String, dynamic>())),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<String>(map['runtime'] as String),
      runtimeApiVersion: map['runtimeApiVersion'] == null ? null : pulumi.Output.create<String>(map['runtimeApiVersion'] as String),
      runtimeChannel: map['runtimeChannel'] == null ? null : pulumi.Output.create<String>(map['runtimeChannel'] as String),
      runtimeMainExecutablePath: map['runtimeMainExecutablePath'] == null ? null : pulumi.Output.create<String>(map['runtimeMainExecutablePath'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
      servingStatus: map['servingStatus'] == null ? null : pulumi.Output.create<VersionServingStatusAppengineV1beta>(VersionServingStatusAppengineV1beta.fromValue(map['servingStatus'] as String)),
      threadsafe: map['threadsafe'] == null ? null : pulumi.Output.create<bool>(map['threadsafe'] as bool),
      vm: map['vm'] == null ? null : pulumi.Output.create<bool>(map['vm'] as bool),
      vpcAccessConnector: map['vpcAccessConnector'] == null ? null : pulumi.Output.create<VpcAccessConnectorAppengineV1beta>(VpcAccessConnectorAppengineV1beta.fromMap((map['vpcAccessConnector'] as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

