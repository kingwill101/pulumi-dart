// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_event_trigger.dart';
import 'function_on_deploy_update_policy.dart';
import 'function_secret_environment_variable.dart';
import 'function_secret_volume.dart';
import 'function_source_repository.dart';

/// Input properties used for looking up and filtering Function resources.
class FunctionState {
  /// Security patches are applied automatically to the runtime without requiring the function to be redeployed. This should be specified as an empty block and cannot be set alongside `on_deploy_update_policy`.
  final pulumi.Input<Map<String, dynamic>>? automaticUpdatePolicy;
  /// Memory (in MB), available to the function. Default value is `256`. Possible values include `128`, `256`, `512`, `1024`, etc.
  final pulumi.Input<int>? availableMemoryMb;
  /// A set of key/value environment variable pairs available during build time.
  final pulumi.Input<Map<String, String>>? buildEnvironmentVariables;
  /// If provided, the self-provided service account to use to build the function. The format of this field is `projects/{project}/serviceAccounts/{serviceAccountEmail}`
  final pulumi.Input<String>? buildServiceAccount;
  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  final pulumi.Input<String>? buildWorkerPool;
  /// Description of the function.
  final pulumi.Input<String>? description;
  /// Docker Registry to use for storing the function's Docker images. Allowed values are ARTIFACT_REGISTRY (default) and CONTAINER_REGISTRY.
  final pulumi.Input<String>? dockerRegistry;
  /// User-managed repository created in Artifact Registry to which the function's Docker image will be pushed after it is built by Cloud Build. May optionally be encrypted with a customer-managed encryption key (CMEK). If unspecified and `docker_registry` is not explicitly set to `CONTAINER_REGISTRY`, GCF will create and use a default Artifact Registry repository named 'gcf-artifacts' in the region.
  final pulumi.Input<String>? dockerRepository;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Name of the function that will be executed when the Google Cloud Function is triggered.
  final pulumi.Input<String>? entryPoint;
  /// A set of key/value environment variable pairs to assign to the function.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// A source that fires events in response to a condition in another service. Structure is documented below. Cannot be used with `trigger_http`.
  final pulumi.Input<FunctionEventTrigger>? eventTrigger;
  /// The security level for the function. The following options are available:
  ///
  /// * `SECURE_ALWAYS` Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
  /// * `SECURE_OPTIONAL` Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
  final pulumi.Input<String>? httpsTriggerSecurityLevel;
  /// URL which triggers function execution. Returned only if `trigger_http` is used.
  final pulumi.Input<String>? httpsTriggerUrl;
  /// String value that controls what traffic can reach the function. Allowed values are `ALLOW_ALL`, `ALLOW_INTERNAL_AND_GCLB` and `ALLOW_INTERNAL_ONLY`. Check [ingress documentation](https://cloud.google.com/functions/docs/networking/network-settings#ingress_settings) to see the impact of each settings value. Changes to this field will recreate the cloud function.
  final pulumi.Input<String>? ingressSettings;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. Before deploying, please complete all pre-requisites described in https://cloud.google.com/functions/docs/securing/cmek#granting_service_accounts_access_to_the_key
  final pulumi.Input<String>? kmsKeyName;
  /// A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The limit on the maximum number of function instances that may coexist at a given time.
  final pulumi.Input<int>? maxInstances;
  /// The limit on the minimum number of function instances that may coexist at a given time.
  final pulumi.Input<int>? minInstances;
  /// A user-defined name of the function. Function names must be unique globally.
  final pulumi.Input<String>? name;
  /// Security patches are only applied when a function is redeployed. This should be specified as an empty block and cannot be set alongside `automatic_update_policy`. Structure is documented below.
  final pulumi.Input<FunctionOnDeployUpdatePolicy>? onDeployUpdatePolicy;
  /// Project of the function. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Region of function. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The runtime in which the function is going to run.
  /// Eg. `"nodejs20"`, `"python39"`, `"dotnet3"`, `"go116"`, `"java11"`, `"ruby30"`, `"php74"`, etc. Check the [official doc](https://cloud.google.com/functions/docs/concepts/exec#runtimes) for the up-to-date list.
  ///
  /// - - -
  final pulumi.Input<String>? runtime;
  /// Secret environment variables configuration. Structure is documented below.
  final pulumi.Input<List<FunctionSecretEnvironmentVariable>>? secretEnvironmentVariables;
  /// Secret volumes configuration. Structure is documented below.
  final pulumi.Input<List<FunctionSecretVolume>>? secretVolumes;
  /// If provided, the self-provided service account to run the function with.
  final pulumi.Input<String>? serviceAccountEmail;
  /// The GCS bucket containing the zip archive which contains the function.
  final pulumi.Input<String>? sourceArchiveBucket;
  /// The source archive object (file) in archive bucket.
  final pulumi.Input<String>? sourceArchiveObject;
  /// Represents parameters related to source repository where a function is hosted.
  /// Cannot be set alongside `source_archive_bucket` or `source_archive_object`. Structure is documented below. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`.*
  final pulumi.Input<FunctionSourceRepository>? sourceRepository;
  /// Describes the current stage of a deployment.
  final pulumi.Input<String>? status;
  /// Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds.
  final pulumi.Input<int>? timeout;
  /// Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as `https_trigger_url`. Cannot be used with `event_trigger`.
  final pulumi.Input<bool>? triggerHttp;
  /// The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  final pulumi.Input<String>? versionId;
  /// The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is `projects/*/locations/*/connectors/*`.
  final pulumi.Input<String>? vpcConnector;
  /// The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are `ALL_TRAFFIC` and `PRIVATE_RANGES_ONLY`. Defaults to `PRIVATE_RANGES_ONLY`. If unset, this field preserves the previously set value.
  final pulumi.Input<String>? vpcConnectorEgressSettings;

  /// Creates a new [FunctionState].
  /// [automaticUpdatePolicy] Security patches are applied automatically to the runtime without requiring the function to be redeployed. This should be specified as an empty block and cannot be set alongside `on_deploy_update_policy`.
  /// [availableMemoryMb] Memory (in MB), available to the function. Default value is `256`. Possible values include `128`, `256`, `512`, `1024`, etc.
  /// [buildEnvironmentVariables] A set of key/value environment variable pairs available during build time.
  /// [buildServiceAccount] If provided, the self-provided service account to use to build the function. The format of this field is `projects/{project}/serviceAccounts/{serviceAccountEmail}`
  /// [buildWorkerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  /// [description] Description of the function.
  /// [dockerRegistry] Docker Registry to use for storing the function's Docker images. Allowed values are ARTIFACT_REGISTRY (default) and CONTAINER_REGISTRY.
  /// [dockerRepository] User-managed repository created in Artifact Registry to which the function's Docker image will be pushed after it is built by Cloud Build. May optionally be encrypted with a customer-managed encryption key (CMEK). If unspecified and `docker_registry` is not explicitly set to `CONTAINER_REGISTRY`, GCF will create and use a default Artifact Registry repository named 'gcf-artifacts' in the region.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entryPoint] Name of the function that will be executed when the Google Cloud Function is triggered.
  /// [environmentVariables] A set of key/value environment variable pairs to assign to the function.
  /// [eventTrigger] A source that fires events in response to a condition in another service. Structure is documented below. Cannot be used with `trigger_http`.
  /// [httpsTriggerSecurityLevel] The security level for the function. The following options are available:
  /// [httpsTriggerUrl] URL which triggers function execution. Returned only if `trigger_http` is used.
  /// [ingressSettings] String value that controls what traffic can reach the function. Allowed values are `ALLOW_ALL`, `ALLOW_INTERNAL_AND_GCLB` and `ALLOW_INTERNAL_ONLY`. Check [ingress documentation](https://cloud.google.com/functions/docs/networking/network-settings#ingress_settings) to see the impact of each settings value. Changes to this field will recreate the cloud function.
  /// [kmsKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// [labels] A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  /// [maxInstances] The limit on the maximum number of function instances that may coexist at a given time.
  /// [minInstances] The limit on the minimum number of function instances that may coexist at a given time.
  /// [name] A user-defined name of the function. Function names must be unique globally.
  /// [onDeployUpdatePolicy] Security patches are only applied when a function is redeployed. This should be specified as an empty block and cannot be set alongside `automatic_update_policy`. Structure is documented below.
  /// [project] Project of the function. If it is not provided, the provider project is used.
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [region] Region of function. If it is not provided, the provider region is used.
  /// [runtime] The runtime in which the function is going to run.
  /// [secretEnvironmentVariables] Secret environment variables configuration. Structure is documented below.
  /// [secretVolumes] Secret volumes configuration. Structure is documented below.
  /// [serviceAccountEmail] If provided, the self-provided service account to run the function with.
  /// [sourceArchiveBucket] The GCS bucket containing the zip archive which contains the function.
  /// [sourceArchiveObject] The source archive object (file) in archive bucket.
  /// [sourceRepository] Represents parameters related to source repository where a function is hosted.
  /// [status] Describes the current stage of a deployment.
  /// [timeout] Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds.
  /// [triggerHttp] Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as `https_trigger_url`. Cannot be used with `event_trigger`.
  /// [versionId] The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  /// [vpcConnector] The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is `projects/*/locations/*/connectors/*`.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are `ALL_TRAFFIC` and `PRIVATE_RANGES_ONLY`. Defaults to `PRIVATE_RANGES_ONLY`. If unset, this field preserves the previously set value.
  FunctionState({
    this.automaticUpdatePolicy,
    this.availableMemoryMb,
    this.buildEnvironmentVariables,
    this.buildServiceAccount,
    this.buildWorkerPool,
    this.description,
    this.dockerRegistry,
    this.dockerRepository,
    this.effectiveLabels,
    this.entryPoint,
    this.environmentVariables,
    this.eventTrigger,
    this.httpsTriggerSecurityLevel,
    this.httpsTriggerUrl,
    this.ingressSettings,
    this.kmsKeyName,
    this.labels,
    this.maxInstances,
    this.minInstances,
    this.name,
    this.onDeployUpdatePolicy,
    this.project,
    this.pulumiLabels,
    this.region,
    this.runtime,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.serviceAccountEmail,
    this.sourceArchiveBucket,
    this.sourceArchiveObject,
    this.sourceRepository,
    this.status,
    this.timeout,
    this.triggerHttp,
    this.versionId,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpdatePolicy': ?automaticUpdatePolicy,
      'availableMemoryMb': ?availableMemoryMb,
      'buildEnvironmentVariables': ?buildEnvironmentVariables,
      'buildServiceAccount': ?buildServiceAccount,
      'buildWorkerPool': ?buildWorkerPool,
      'description': ?description,
      'dockerRegistry': ?dockerRegistry,
      'dockerRepository': ?dockerRepository,
      'effectiveLabels': ?effectiveLabels,
      'entryPoint': ?entryPoint,
      'environmentVariables': ?environmentVariables,
      'eventTrigger': ?pulumi.Input.mapOptionalInputValue<FunctionEventTrigger, Map<String, dynamic>>(eventTrigger, (value) => value.toMap()),
      'httpsTriggerSecurityLevel': ?httpsTriggerSecurityLevel,
      'httpsTriggerUrl': ?httpsTriggerUrl,
      'ingressSettings': ?ingressSettings,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'name': ?name,
      'onDeployUpdatePolicy': ?pulumi.Input.mapOptionalInputValue<FunctionOnDeployUpdatePolicy, Map<String, dynamic>>(onDeployUpdatePolicy, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'runtime': ?runtime,
      'secretEnvironmentVariables': ?pulumi.Input.mapOptionalInputValue<List<FunctionSecretEnvironmentVariable>, List<Map<String, dynamic>>>(secretEnvironmentVariables, (value) => pulumi.Input.encodeList<FunctionSecretEnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretVolumes': ?pulumi.Input.mapOptionalInputValue<List<FunctionSecretVolume>, List<Map<String, dynamic>>>(secretVolumes, (value) => pulumi.Input.encodeList<FunctionSecretVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountEmail': ?serviceAccountEmail,
      'sourceArchiveBucket': ?sourceArchiveBucket,
      'sourceArchiveObject': ?sourceArchiveObject,
      'sourceRepository': ?pulumi.Input.mapOptionalInputValue<FunctionSourceRepository, Map<String, dynamic>>(sourceRepository, (value) => value.toMap()),
      'status': ?status,
      'timeout': ?timeout,
      'triggerHttp': ?triggerHttp,
      'versionId': ?versionId,
      'vpcConnector': ?vpcConnector,
      'vpcConnectorEgressSettings': ?vpcConnectorEgressSettings,
    };
  }

  factory FunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionState(
      automaticUpdatePolicy: map['automaticUpdatePolicy'] == null ? null : ((map['automaticUpdatePolicy']! as Map).cast<String, dynamic>()).input(),
      availableMemoryMb: map['availableMemoryMb'] == null ? null : (map['availableMemoryMb']! as int).input(),
      buildEnvironmentVariables: map['buildEnvironmentVariables'] == null ? null : ((map['buildEnvironmentVariables']! as Map).cast<String, String>()).input(),
      buildServiceAccount: map['buildServiceAccount'] == null ? null : (map['buildServiceAccount']! as String).input(),
      buildWorkerPool: map['buildWorkerPool'] == null ? null : (map['buildWorkerPool']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dockerRegistry: map['dockerRegistry'] == null ? null : (map['dockerRegistry']! as String).input(),
      dockerRepository: map['dockerRepository'] == null ? null : (map['dockerRepository']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      entryPoint: map['entryPoint'] == null ? null : (map['entryPoint']! as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables']! as Map).cast<String, String>()).input(),
      eventTrigger: map['eventTrigger'] == null ? null : (FunctionEventTrigger.fromMap((map['eventTrigger']! as Map).cast<String, dynamic>())).input(),
      httpsTriggerSecurityLevel: map['httpsTriggerSecurityLevel'] == null ? null : (map['httpsTriggerSecurityLevel']! as String).input(),
      httpsTriggerUrl: map['httpsTriggerUrl'] == null ? null : (map['httpsTriggerUrl']! as String).input(),
      ingressSettings: map['ingressSettings'] == null ? null : (map['ingressSettings']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      maxInstances: map['maxInstances'] == null ? null : (map['maxInstances']! as int).input(),
      minInstances: map['minInstances'] == null ? null : (map['minInstances']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      onDeployUpdatePolicy: map['onDeployUpdatePolicy'] == null ? null : (FunctionOnDeployUpdatePolicy.fromMap((map['onDeployUpdatePolicy']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      runtime: map['runtime'] == null ? null : (map['runtime']! as String).input(),
      secretEnvironmentVariables: map['secretEnvironmentVariables'] == null ? null : (pulumi.Input.decodeList<FunctionSecretEnvironmentVariable>(map['secretEnvironmentVariables']!, (value) => FunctionSecretEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretVolumes: map['secretVolumes'] == null ? null : (pulumi.Input.decodeList<FunctionSecretVolume>(map['secretVolumes']!, (value) => FunctionSecretVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : (map['serviceAccountEmail']! as String).input(),
      sourceArchiveBucket: map['sourceArchiveBucket'] == null ? null : (map['sourceArchiveBucket']! as String).input(),
      sourceArchiveObject: map['sourceArchiveObject'] == null ? null : (map['sourceArchiveObject']! as String).input(),
      sourceRepository: map['sourceRepository'] == null ? null : (FunctionSourceRepository.fromMap((map['sourceRepository']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
      triggerHttp: map['triggerHttp'] == null ? null : (map['triggerHttp']! as bool).input(),
      versionId: map['versionId'] == null ? null : (map['versionId']! as String).input(),
      vpcConnector: map['vpcConnector'] == null ? null : (map['vpcConnector']! as String).input(),
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] == null ? null : (map['vpcConnectorEgressSettings']! as String).input(),
    );
  }
}

