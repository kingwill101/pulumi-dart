import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler_response.dart';
import 'automatic_scaling_response.dart';
import 'basic_scaling_response.dart';
import 'deployment_response.dart';
import 'endpoints_api_service_response.dart';
import 'entrypoint_response.dart';
import 'flexible_runtime_settings_response.dart';
import 'health_check_response.dart';
import 'liveness_check_response.dart';
import 'manual_scaling_response.dart';
import 'network_response.dart';
import 'readiness_check_response.dart';
import 'resources_response.dart';
import 'version_args.dart';
import 'vpc_access_connector_response.dart';

/// Deploys code and resource files to a new version.
/// Auto-naming is currently not supported for this resource.
class Version extends pulumi.CustomResource {
  /// Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<ApiConfigHandlerResponse> apiConfig;

  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  late final pulumi.Output<bool> appEngineApis;
  late final pulumi.Output<String> appId;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
  late final pulumi.Output<AutomaticScalingResponse> automaticScaling;

  /// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  late final pulumi.Output<BasicScalingResponse> basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  late final pulumi.Output<Map<String, String>> betaSettings;

  /// Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<Map<String, String>> buildEnvVariables;

  /// Time that this version was created.
  late final pulumi.Output<String> createTime;

  /// Email address of the user who created this version.
  late final pulumi.Output<String> createdBy;

  /// Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<String> defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<DeploymentResponse> deployment;

  /// Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.
  late final pulumi.Output<String> diskUsageBytes;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
  late final pulumi.Output<EndpointsApiServiceResponse> endpointsApiService;

  /// The entrypoint for the application.
  late final pulumi.Output<EntrypointResponse> entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  late final pulumi.Output<String> env;

  /// Environment variables available to the application.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<Map<String, String>> envVariables;

  /// Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<List<Map<String, dynamic>>> errorHandlers;

  /// Settings for App Engine flexible runtimes.
  late final pulumi.Output<FlexibleRuntimeSettingsResponse>
  flexibleRuntimeSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
  late final pulumi.Output<Map<String, String>> generatedCustomerMetadata;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<List<Map<String, dynamic>>> handlers;

  /// Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
  late final pulumi.Output<HealthCheckResponse> healthCheck;

  /// Before an application can receive email or XMPP messages, the application must be configured to enable the service.
  late final pulumi.Output<List<String>> inboundServices;

  /// Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
  late final pulumi.Output<String> instanceClass;

  /// Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<List<Map<String, dynamic>>> libraries;

  /// Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
  late final pulumi.Output<LivenessCheckResponse> livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as "backends".
  late final pulumi.Output<ManualScalingResponse> manualScaling;

  /// Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.
  late final pulumi.Output<String> name;

  /// Extra network settings. Only applicable in the App Engine flexible environment.
  late final pulumi.Output<NetworkResponse> network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
  late final pulumi.Output<String> nobuildFilesRegex;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  late final pulumi.Output<ReadinessCheckResponse> readinessCheck;

  /// Machine resources for this version. Only applicable in the App Engine flexible environment.
  late final pulumi.Output<ResourcesResponse> resources;

  /// Desired runtime. Example: python27.
  late final pulumi.Output<String> runtime;

  /// The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref
  late final pulumi.Output<String> runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
  late final pulumi.Output<String> runtimeChannel;

  /// The path or name of the app's main executable.
  late final pulumi.Output<String> runtimeMainExecutablePath;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  late final pulumi.Output<String> serviceAccount;
  late final pulumi.Output<String> serviceId;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
  late final pulumi.Output<String> servingStatus;

  /// Whether multiple requests can be dispatched to this version at once.
  late final pulumi.Output<bool> threadsafe;

  /// Serving URL for this version. Example: "https://myversion-dot-myservice-dot-myapp.appspot.com"
  late final pulumi.Output<String> versionUrl;

  /// Whether to deploy this version in a container on a virtual machine.
  late final pulumi.Output<bool> vm;

  /// Enables VPC connectivity for standard apps.
  late final pulumi.Output<VpcAccessConnectorResponse> vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [Version].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Version]. {@macro pulumi_appengine_v1_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Version(
    String name, {
    VersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:appengine/v1:Version',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiConfig = registerOutput<ApiConfigHandlerResponse>(
      'apiConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApiConfigHandlerResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    appEngineApis = registerOutput<bool>('appEngineApis');
    appId = registerOutput<String>('appId');
    automaticScaling = registerOutput<AutomaticScalingResponse>(
      'automaticScaling',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AutomaticScalingResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    basicScaling = registerOutput<BasicScalingResponse>(
      'basicScaling',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BasicScalingResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    betaSettings = registerOutput<Map<String, String>>('betaSettings');
    buildEnvVariables = registerOutput<Map<String, String>>(
      'buildEnvVariables',
    );
    createTime = registerOutput<String>('createTime');
    createdBy = registerOutput<String>('createdBy');
    defaultExpiration = registerOutput<String>('defaultExpiration');
    deployment = registerOutput<DeploymentResponse>(
      'deployment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    diskUsageBytes = registerOutput<String>('diskUsageBytes');
    endpointsApiService = registerOutput<EndpointsApiServiceResponse>(
      'endpointsApiService',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointsApiServiceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    entrypoint = registerOutput<EntrypointResponse>(
      'entrypoint',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EntrypointResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    env = registerOutput<String>('env');
    envVariables = registerOutput<Map<String, String>>('envVariables');
    errorHandlers = registerOutput<List<Map<String, dynamic>>>('errorHandlers');
    flexibleRuntimeSettings = registerOutput<FlexibleRuntimeSettingsResponse>(
      'flexibleRuntimeSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FlexibleRuntimeSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    generatedCustomerMetadata = registerOutput<Map<String, String>>(
      'generatedCustomerMetadata',
    );
    handlers = registerOutput<List<Map<String, dynamic>>>('handlers');
    healthCheck = registerOutput<HealthCheckResponse>(
      'healthCheck',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HealthCheckResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    inboundServices = registerOutput<List<String>>('inboundServices');
    instanceClass = registerOutput<String>('instanceClass');
    libraries = registerOutput<List<Map<String, dynamic>>>('libraries');
    livenessCheck = registerOutput<LivenessCheckResponse>(
      'livenessCheck',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LivenessCheckResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    manualScaling = registerOutput<ManualScalingResponse>(
      'manualScaling',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManualScalingResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    network = registerOutput<NetworkResponse>(
      'network',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nobuildFilesRegex = registerOutput<String>('nobuildFilesRegex');
    readinessCheck = registerOutput<ReadinessCheckResponse>(
      'readinessCheck',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReadinessCheckResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    resources = registerOutput<ResourcesResponse>(
      'resources',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourcesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    runtime = registerOutput<String>('runtime');
    runtimeApiVersion = registerOutput<String>('runtimeApiVersion');
    runtimeChannel = registerOutput<String>('runtimeChannel');
    runtimeMainExecutablePath = registerOutput<String>(
      'runtimeMainExecutablePath',
    );
    serviceAccount = registerOutput<String>('serviceAccount');
    serviceId = registerOutput<String>('serviceId');
    servingStatus = registerOutput<String>('servingStatus');
    threadsafe = registerOutput<bool>('threadsafe');
    versionUrl = registerOutput<String>('versionUrl');
    vm = registerOutput<bool>('vm');
    vpcAccessConnector = registerOutput<VpcAccessConnectorResponse>(
      'vpcAccessConnector',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpcAccessConnectorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    zones = registerOutput<List<String>>('zones');
  }
}
