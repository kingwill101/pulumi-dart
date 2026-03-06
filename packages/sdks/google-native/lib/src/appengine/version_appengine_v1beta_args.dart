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
  const VersionAppengineV1betaArgs({
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
      'inboundServices': ?pulumi.Input.mapOptionalInputValue<List<VersionInboundServicesItemAppengineV1beta>, List<String>>(inboundServices, (value) => pulumi.Input.encodeList<VersionInboundServicesItemAppengineV1beta, String>(value, (value) => value.wireValue)),
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
      'servingStatus': ?pulumi.Input.mapOptionalInputValue<VersionServingStatusAppengineV1beta, String>(servingStatus, (value) => value.wireValue),
      'threadsafe': ?threadsafe,
      'vm': ?vm,
      'vpcAccessConnector': ?pulumi.Input.mapOptionalInputValue<VpcAccessConnectorAppengineV1beta, Map<String, dynamic>>(vpcAccessConnector, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory VersionAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return VersionAppengineV1betaArgs(
      apiConfig: (() { final guardedValue = map['apiConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiConfigHandlerAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appEngineApis: (() { final guardedValue = map['appEngineApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      automaticScaling: (() { final guardedValue = map['automaticScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticScalingAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      basicScaling: (() { final guardedValue = map['basicScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicScalingAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      betaSettings: (() { final guardedValue = map['betaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      buildEnvVariables: (() { final guardedValue = map['buildEnvVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultExpiration: (() { final guardedValue = map['defaultExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointsApiService: (() { final guardedValue = map['endpointsApiService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointsApiServiceAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntrypointAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envVariables: (() { final guardedValue = map['envVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errorHandlers: (() { final guardedValue = map['errorHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorHandlerAppengineV1beta>(guardedValue, (value) => ErrorHandlerAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      flexibleRuntimeSettings: (() { final guardedValue = map['flexibleRuntimeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleRuntimeSettingsAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generatedCustomerMetadata: (() { final guardedValue = map['generatedCustomerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      handlers: (() { final guardedValue = map['handlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UrlMapAppengineV1beta>(guardedValue, (value) => UrlMapAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthCheckAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inboundServices: (() { final guardedValue = map['inboundServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VersionInboundServicesItemAppengineV1beta>(guardedValue, (value) => VersionInboundServicesItemAppengineV1beta.fromValue(value as String))); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      libraries: (() { final guardedValue = map['libraries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LibraryAppengineV1beta>(guardedValue, (value) => LibraryAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      livenessCheck: (() { final guardedValue = map['livenessCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LivenessCheckAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manualScaling: (() { final guardedValue = map['manualScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManualScalingAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nobuildFilesRegex: (() { final guardedValue = map['nobuildFilesRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readinessCheck: (() { final guardedValue = map['readinessCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReadinessCheckAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcesAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeApiVersion: (() { final guardedValue = map['runtimeApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeChannel: (() { final guardedValue = map['runtimeChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeMainExecutablePath: (() { final guardedValue = map['runtimeMainExecutablePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      servingStatus: (() { final guardedValue = map['servingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VersionServingStatusAppengineV1beta.fromValue(guardedValue as String)); })(),
      threadsafe: (() { final guardedValue = map['threadsafe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vm: (() { final guardedValue = map['vm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcAccessConnector: (() { final guardedValue = map['vpcAccessConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcAccessConnectorAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

