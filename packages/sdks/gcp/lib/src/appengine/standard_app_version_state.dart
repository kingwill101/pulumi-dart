// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_automatic_scaling.dart';
import 'standard_app_version_basic_scaling.dart';
import 'standard_app_version_deployment.dart';
import 'standard_app_version_entrypoint.dart';
import 'standard_app_version_handler.dart';
import 'standard_app_version_library.dart';
import 'standard_app_version_manual_scaling.dart';
import 'standard_app_version_vpc_access_connector.dart';

/// Input properties used for looking up and filtering StandardAppVersion resources.
class StandardAppVersionState {
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  /// Cannot specify both `appEngineApis` and `appEngineBundledServices` together.
  final pulumi.Input<bool?>? appEngineApis;
  /// A list of legacy bundled services to enable for this version on an App Engine second-generation runtime.
  /// Cannot specify both `appEngineApis` and `appEngineBundledServices` together.
  /// Each value may be one of: `BUNDLED_SERVICE_TYPE_APP_IDENTITY_SERVICE`, `BUNDLED_SERVICE_TYPE_BLOBSTORE`, `BUNDLED_SERVICE_TYPE_CAPABILITY_SERVICE`, `BUNDLED_SERVICE_TYPE_DATASTORE_V3`, `BUNDLED_SERVICE_TYPE_IMAGES`, `BUNDLED_SERVICE_TYPE_MAIL`, `BUNDLED_SERVICE_TYPE_MEMCACHE`, `BUNDLED_SERVICE_TYPE_MODULES`, `BUNDLED_SERVICE_TYPE_SEARCH`, `BUNDLED_SERVICE_TYPE_TASKQUEUES`, `BUNDLED_SERVICE_TYPE_URLFETCH`, `BUNDLED_SERVICE_TYPE_USERS`.
  final pulumi.Input<List<String>?>? appEngineBundledServices;
  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionAutomaticScaling?>? automaticScaling;
  /// Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionBasicScaling?>? basicScaling;
  /// If set to `true`, the service will be deleted if it is the last version.
  final pulumi.Input<bool?>? deleteServiceOnDestroy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionDeployment?>? deployment;
  /// The entrypoint for the application.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionEntrypoint?>? entrypoint;
  /// Environment variables available to the application.
  final pulumi.Input<Map<String, String>?>? envVariables;
  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  final pulumi.Input<List<StandardAppVersionHandler>?>? handlers;
  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  final pulumi.Input<List<String>?>? inboundServices;
  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
  /// Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen.
  final pulumi.Input<String?>? instanceClass;
  /// Configuration for third-party Python runtime libraries that are required by the application.
  /// Structure is documented below.
  final pulumi.Input<List<StandardAppVersionLibrary>?>? libraries;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionManualScaling?>? manualScaling;
  /// Full path to the Version resource in the API. Example, "v1".
  final pulumi.Input<String?>? name;
  /// If set to `true`, the application version will not be deleted.
  final pulumi.Input<bool?>? noopOnDestroy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Desired runtime. Example python27.
  final pulumi.Input<String?>? runtime;
  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref`\
  /// Substitute `&lt;language&gt;` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  final pulumi.Input<String?>? runtimeApiVersion;
  /// AppEngine service resource
  final pulumi.Input<String?>? service;
  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  final pulumi.Input<String?>? serviceAccount;
  /// Whether multiple requests can be dispatched to this version at once.
  final pulumi.Input<bool?>? threadsafe;
  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,"default", "latest", and any name with the prefix "ah-".
  final pulumi.Input<String?>? versionId;
  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionVpcAccessConnector?>? vpcAccessConnector;

  /// Creates a new [StandardAppVersionState].
  /// [appEngineApis] Allows App Engine second generation runtimes to access the legacy bundled services.
  /// [appEngineBundledServices] A list of legacy bundled services to enable for this version on an App Engine second-generation runtime.
  /// [automaticScaling] Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// [basicScaling] Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// [deleteServiceOnDestroy] If set to `true`, the service will be deleted if it is the last version.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deployment] Code and application artifacts that make up this version.
  /// [entrypoint] The entrypoint for the application.
  /// [envVariables] Environment variables available to the application.
  /// [handlers] An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// [inboundServices] A list of the types of messages that this application is able to receive.
  /// [instanceClass] Instance class that is used to run this version. Valid values are
  /// [libraries] Configuration for third-party Python runtime libraries that are required by the application.
  /// [manualScaling] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// [name] Full path to the Version resource in the API. Example, "v1".
  /// [noopOnDestroy] If set to `true`, the application version will not be deleted.
  /// [project] The ID of the project in which the resource belongs.
  /// [runtime] Desired runtime. Example python27.
  /// [runtimeApiVersion] The version of the API in the given runtime environment.
  /// [service] AppEngine service resource
  /// [serviceAccount] The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  /// [threadsafe] Whether multiple requests can be dispatched to this version at once.
  /// [versionId] Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,"default", "latest", and any name with the prefix "ah-".
  /// [vpcAccessConnector] Enables VPC connectivity for standard apps.
  const StandardAppVersionState({
    this.appEngineApis,
    this.appEngineBundledServices,
    this.automaticScaling,
    this.basicScaling,
    this.deleteServiceOnDestroy,
    this.deletionPolicy,
    this.deployment,
    this.entrypoint,
    this.envVariables,
    this.handlers,
    this.inboundServices,
    this.instanceClass,
    this.libraries,
    this.manualScaling,
    this.name,
    this.noopOnDestroy,
    this.project,
    this.runtime,
    this.runtimeApiVersion,
    this.service,
    this.serviceAccount,
    this.threadsafe,
    this.versionId,
    this.vpcAccessConnector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineApis': ?appEngineApis,
      'appEngineBundledServices': ?appEngineBundledServices,
      'automaticScaling': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionAutomaticScaling, Map<String, dynamic>>(automaticScaling, (value) => value.toMap()),
      'basicScaling': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionBasicScaling, Map<String, dynamic>>(basicScaling, (value) => value.toMap()),
      'deleteServiceOnDestroy': ?deleteServiceOnDestroy,
      'deletionPolicy': ?deletionPolicy,
      'deployment': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionDeployment, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'entrypoint': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionEntrypoint, Map<String, dynamic>>(entrypoint, (value) => value.toMap()),
      'envVariables': ?envVariables,
      'handlers': ?pulumi.Input.mapOptionalInputValue<List<StandardAppVersionHandler>, List<Map<String, dynamic>>>(handlers, (value) => pulumi.Input.encodeList<StandardAppVersionHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundServices': ?inboundServices,
      'instanceClass': ?instanceClass,
      'libraries': ?pulumi.Input.mapOptionalInputValue<List<StandardAppVersionLibrary>, List<Map<String, dynamic>>>(libraries, (value) => pulumi.Input.encodeList<StandardAppVersionLibrary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualScaling': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionManualScaling, Map<String, dynamic>>(manualScaling, (value) => value.toMap()),
      'name': ?name,
      'noopOnDestroy': ?noopOnDestroy,
      'project': ?project,
      'runtime': ?runtime,
      'runtimeApiVersion': ?runtimeApiVersion,
      'service': ?service,
      'serviceAccount': ?serviceAccount,
      'threadsafe': ?threadsafe,
      'versionId': ?versionId,
      'vpcAccessConnector': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionVpcAccessConnector, Map<String, dynamic>>(vpcAccessConnector, (value) => value.toMap()),
    };
  }

  factory StandardAppVersionState.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionState(
      appEngineApis: (() { final guardedValue = map['appEngineApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appEngineBundledServices: (() { final guardedValue = map['appEngineBundledServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      automaticScaling: (() { final guardedValue = map['automaticScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionAutomaticScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      basicScaling: (() { final guardedValue = map['basicScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionBasicScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteServiceOnDestroy: (() { final guardedValue = map['deleteServiceOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionEntrypoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      envVariables: (() { final guardedValue = map['envVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      handlers: (() { final guardedValue = map['handlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardAppVersionHandler>(guardedValue, (value) => StandardAppVersionHandler.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inboundServices: (() { final guardedValue = map['inboundServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      libraries: (() { final guardedValue = map['libraries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardAppVersionLibrary>(guardedValue, (value) => StandardAppVersionLibrary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manualScaling: (() { final guardedValue = map['manualScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionManualScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noopOnDestroy: (() { final guardedValue = map['noopOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeApiVersion: (() { final guardedValue = map['runtimeApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threadsafe: (() { final guardedValue = map['threadsafe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcAccessConnector: (() { final guardedValue = map['vpcAccessConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionVpcAccessConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
