// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_app_version_api_config.dart';
import 'flexible_app_version_automatic_scaling.dart';
import 'flexible_app_version_deployment.dart';
import 'flexible_app_version_endpoints_api_service.dart';
import 'flexible_app_version_entrypoint.dart';
import 'flexible_app_version_flexible_runtime_settings.dart';
import 'flexible_app_version_handler.dart';
import 'flexible_app_version_liveness_check.dart';
import 'flexible_app_version_manual_scaling.dart';
import 'flexible_app_version_network.dart';
import 'flexible_app_version_readiness_check.dart';
import 'flexible_app_version_resources.dart';
import 'flexible_app_version_vpc_access_connector.dart';

/// {@template pulumi_appengine_flexible_app_version_flexible_app_version_args_doc}
/// The set of arguments for FlexibleAppVersion.
/// {@endtemplate}
/// {@macro pulumi_appengine_flexible_app_version_flexible_app_version_args_doc}
class FlexibleAppVersionArgs {
  /// Serving configuration for Google Cloud Endpoints.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionApiConfig>? apiConfig;
  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionAutomaticScaling>? automaticScaling;
  /// Metadata settings that are supplied to this version to enable beta runtime features.
  final pulumi.Input<Map<String, String>>? betaSettings;
  /// Duration that static files should be cached by web proxies and browsers.
  /// Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time.
  final pulumi.Input<String>? defaultExpiration;
  /// If set to `true`, the service will be deleted if it is the last version.
  final pulumi.Input<bool>? deleteServiceOnDestroy;
  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionDeployment>? deployment;
  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionEndpointsApiService>? endpointsApiService;
  /// The entrypoint for the application.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionEntrypoint>? entrypoint;
  /// Environment variables available to the application.  As these are not returned in the API request, the provider will not detect any changes made outside of the config.
  final pulumi.Input<Map<String, String>>? envVariables;
  /// Runtime settings for App Engine flexible environment.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionFlexibleRuntimeSettings>? flexibleRuntimeSettings;
  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  final pulumi.Input<List<FlexibleAppVersionHandler>>? handlers;
  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  final pulumi.Input<List<String>>? inboundServices;
  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// ManualScaling: B1, B2, B4, B8, B4_1G
  /// Defaults to F1 for AutomaticScaling and B1 for ManualScaling.
  final pulumi.Input<String>? instanceClass;
  /// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionLivenessCheck> livenessCheck;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionManualScaling>? manualScaling;
  /// Extra network settings
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionNetwork>? network;
  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.
  final pulumi.Input<String>? nobuildFilesRegex;
  /// If set to `true`, the application version will not be deleted.
  final pulumi.Input<bool>? noopOnDestroy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionReadinessCheck> readinessCheck;
  /// Machine resources for a version.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionResources>? resources;
  /// Desired runtime. Example python27.
  final pulumi.Input<String> runtime;
  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref`\
  /// Substitute `&lt;language&gt;` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  final pulumi.Input<String>? runtimeApiVersion;
  /// The channel of the runtime to use. Only available for some runtimes.
  final pulumi.Input<String>? runtimeChannel;
  /// The path or name of the app's main executable.
  final pulumi.Input<String>? runtimeMainExecutablePath;
  /// AppEngine service resource. Can contain numbers, letters, and hyphens.
  final pulumi.Input<String> service;
  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
  /// default if this field is neither provided in app.yaml file nor through CLI flag.
  final pulumi.Input<String>? serviceAccount;
  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.
  /// Default value is `SERVING`.
  /// Possible values are: `SERVING`, `STOPPED`.
  final pulumi.Input<String>? servingStatus;
  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens.
  /// Reserved names,"default", "latest", and any name with the prefix "ah-".
  final pulumi.Input<String>? versionId;
  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionVpcAccessConnector>? vpcAccessConnector;

  /// Creates a new [FlexibleAppVersionArgs].
  /// [apiConfig] Serving configuration for Google Cloud Endpoints.
  /// [automaticScaling] Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// [betaSettings] Metadata settings that are supplied to this version to enable beta runtime features.
  /// [defaultExpiration] Duration that static files should be cached by web proxies and browsers.
  /// [deleteServiceOnDestroy] If set to `true`, the service will be deleted if it is the last version.
  /// [deployment] Code and application artifacts that make up this version.
  /// [endpointsApiService] Code and application artifacts that make up this version.
  /// [entrypoint] The entrypoint for the application.
  /// [envVariables] Environment variables available to the application.  As these are not returned in the API request, the provider will not detect any changes made outside of the config.
  /// [flexibleRuntimeSettings] Runtime settings for App Engine flexible environment.
  /// [handlers] An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// [inboundServices] A list of the types of messages that this application is able to receive.
  /// [instanceClass] Instance class that is used to run this version. Valid values are
  /// [livenessCheck] Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
  /// [manualScaling] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// [network] Extra network settings
  /// [nobuildFilesRegex] Files that match this pattern will not be built into this version. Only applicable for Go runtimes.
  /// [noopOnDestroy] If set to `true`, the application version will not be deleted.
  /// [project] The ID of the project in which the resource belongs.
  /// [readinessCheck] Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// [resources] Machine resources for a version.
  /// [runtime] Desired runtime. Example python27.
  /// [runtimeApiVersion] The version of the API in the given runtime environment.
  /// [runtimeChannel] The channel of the runtime to use. Only available for some runtimes.
  /// [runtimeMainExecutablePath] The path or name of the app's main executable.
  /// [service] AppEngine service resource. Can contain numbers, letters, and hyphens.
  /// [serviceAccount] The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
  /// [servingStatus] Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.
  /// [versionId] Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens.
  /// [vpcAccessConnector] Enables VPC connectivity for standard apps.
  FlexibleAppVersionArgs({
    this.apiConfig,
    this.automaticScaling,
    this.betaSettings,
    this.defaultExpiration,
    this.deleteServiceOnDestroy,
    this.deployment,
    this.endpointsApiService,
    this.entrypoint,
    this.envVariables,
    this.flexibleRuntimeSettings,
    this.handlers,
    this.inboundServices,
    this.instanceClass,
    required this.livenessCheck,
    this.manualScaling,
    this.network,
    this.nobuildFilesRegex,
    this.noopOnDestroy,
    this.project,
    required this.readinessCheck,
    this.resources,
    required this.runtime,
    this.runtimeApiVersion,
    this.runtimeChannel,
    this.runtimeMainExecutablePath,
    required this.service,
    this.serviceAccount,
    this.servingStatus,
    this.versionId,
    this.vpcAccessConnector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionApiConfig, Map<String, dynamic>>(apiConfig, (value) => value.toMap()),
      'automaticScaling': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionAutomaticScaling, Map<String, dynamic>>(automaticScaling, (value) => value.toMap()),
      'betaSettings': ?betaSettings,
      'defaultExpiration': ?defaultExpiration,
      'deleteServiceOnDestroy': ?deleteServiceOnDestroy,
      'deployment': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionDeployment, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'endpointsApiService': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionEndpointsApiService, Map<String, dynamic>>(endpointsApiService, (value) => value.toMap()),
      'entrypoint': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionEntrypoint, Map<String, dynamic>>(entrypoint, (value) => value.toMap()),
      'envVariables': ?envVariables,
      'flexibleRuntimeSettings': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionFlexibleRuntimeSettings, Map<String, dynamic>>(flexibleRuntimeSettings, (value) => value.toMap()),
      'handlers': ?pulumi.Input.mapOptionalInputValue<List<FlexibleAppVersionHandler>, List<Map<String, dynamic>>>(handlers, (value) => pulumi.Input.encodeList<FlexibleAppVersionHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundServices': ?inboundServices,
      'instanceClass': ?instanceClass,
      'livenessCheck': pulumi.Input.mapInputValue<FlexibleAppVersionLivenessCheck, Map<String, dynamic>>(livenessCheck, (value) => value.toMap()),
      'manualScaling': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionManualScaling, Map<String, dynamic>>(manualScaling, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nobuildFilesRegex': ?nobuildFilesRegex,
      'noopOnDestroy': ?noopOnDestroy,
      'project': ?project,
      'readinessCheck': pulumi.Input.mapInputValue<FlexibleAppVersionReadinessCheck, Map<String, dynamic>>(readinessCheck, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'runtime': runtime,
      'runtimeApiVersion': ?runtimeApiVersion,
      'runtimeChannel': ?runtimeChannel,
      'runtimeMainExecutablePath': ?runtimeMainExecutablePath,
      'service': service,
      'serviceAccount': ?serviceAccount,
      'servingStatus': ?servingStatus,
      'versionId': ?versionId,
      'vpcAccessConnector': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionVpcAccessConnector, Map<String, dynamic>>(vpcAccessConnector, (value) => value.toMap()),
    };
  }

  factory FlexibleAppVersionArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionArgs(
      apiConfig: (() { final guardedValue = map['apiConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionApiConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automaticScaling: (() { final guardedValue = map['automaticScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionAutomaticScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      betaSettings: (() { final guardedValue = map['betaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultExpiration: (() { final guardedValue = map['defaultExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteServiceOnDestroy: (() { final guardedValue = map['deleteServiceOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointsApiService: (() { final guardedValue = map['endpointsApiService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionEndpointsApiService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionEntrypoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      envVariables: (() { final guardedValue = map['envVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      flexibleRuntimeSettings: (() { final guardedValue = map['flexibleRuntimeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionFlexibleRuntimeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      handlers: (() { final guardedValue = map['handlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlexibleAppVersionHandler>(guardedValue, (value) => FlexibleAppVersionHandler.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inboundServices: (() { final guardedValue = map['inboundServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      livenessCheck: pulumi.Input.fromValue(FlexibleAppVersionLivenessCheck.fromMap((map['livenessCheck']! as Map).cast<String, dynamic>())),
      manualScaling: (() { final guardedValue = map['manualScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionManualScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nobuildFilesRegex: (() { final guardedValue = map['nobuildFilesRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noopOnDestroy: (() { final guardedValue = map['noopOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readinessCheck: pulumi.Input.fromValue(FlexibleAppVersionReadinessCheck.fromMap((map['readinessCheck']! as Map).cast<String, dynamic>())),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
      runtimeApiVersion: (() { final guardedValue = map['runtimeApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeChannel: (() { final guardedValue = map['runtimeChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeMainExecutablePath: (() { final guardedValue = map['runtimeMainExecutablePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servingStatus: (() { final guardedValue = map['servingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcAccessConnector: (() { final guardedValue = map['vpcAccessConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleAppVersionVpcAccessConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

