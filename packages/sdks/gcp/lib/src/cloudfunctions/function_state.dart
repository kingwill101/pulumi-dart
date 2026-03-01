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
    pulumi.Output<Map<String, dynamic>>? automaticUpdatePolicy,
    pulumi.Output<int>? availableMemoryMb,
    pulumi.Output<Map<String, String>>? buildEnvironmentVariables,
    pulumi.Output<String>? buildServiceAccount,
    pulumi.Output<String>? buildWorkerPool,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dockerRegistry,
    pulumi.Output<String>? dockerRepository,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entryPoint,
    pulumi.Output<Map<String, String>>? environmentVariables,
    pulumi.Output<FunctionEventTrigger>? eventTrigger,
    pulumi.Output<String>? httpsTriggerSecurityLevel,
    pulumi.Output<String>? httpsTriggerUrl,
    pulumi.Output<String>? ingressSettings,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<int>? maxInstances,
    pulumi.Output<int>? minInstances,
    pulumi.Output<String>? name,
    pulumi.Output<FunctionOnDeployUpdatePolicy>? onDeployUpdatePolicy,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? runtime,
    pulumi.Output<List<FunctionSecretEnvironmentVariable>>? secretEnvironmentVariables,
    pulumi.Output<List<FunctionSecretVolume>>? secretVolumes,
    pulumi.Output<String>? serviceAccountEmail,
    pulumi.Output<String>? sourceArchiveBucket,
    pulumi.Output<String>? sourceArchiveObject,
    pulumi.Output<FunctionSourceRepository>? sourceRepository,
    pulumi.Output<String>? status,
    pulumi.Output<int>? timeout,
    pulumi.Output<bool>? triggerHttp,
    pulumi.Output<String>? versionId,
    pulumi.Output<String>? vpcConnector,
    pulumi.Output<String>? vpcConnectorEgressSettings,
  }) :
      automaticUpdatePolicy = pulumi.Input.asOptionalInput<Map<String, dynamic>>(automaticUpdatePolicy),
      availableMemoryMb = pulumi.Input.asOptionalInput<int>(availableMemoryMb),
      buildEnvironmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(buildEnvironmentVariables),
      buildServiceAccount = pulumi.Input.asOptionalInput<String>(buildServiceAccount),
      buildWorkerPool = pulumi.Input.asOptionalInput<String>(buildWorkerPool),
      description = pulumi.Input.asOptionalInput<String>(description),
      dockerRegistry = pulumi.Input.asOptionalInput<String>(dockerRegistry),
      dockerRepository = pulumi.Input.asOptionalInput<String>(dockerRepository),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entryPoint = pulumi.Input.asOptionalInput<String>(entryPoint),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      eventTrigger = pulumi.Input.asOptionalInput<FunctionEventTrigger>(eventTrigger),
      httpsTriggerSecurityLevel = pulumi.Input.asOptionalInput<String>(httpsTriggerSecurityLevel),
      httpsTriggerUrl = pulumi.Input.asOptionalInput<String>(httpsTriggerUrl),
      ingressSettings = pulumi.Input.asOptionalInput<String>(ingressSettings),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      maxInstances = pulumi.Input.asOptionalInput<int>(maxInstances),
      minInstances = pulumi.Input.asOptionalInput<int>(minInstances),
      name = pulumi.Input.asOptionalInput<String>(name),
      onDeployUpdatePolicy = pulumi.Input.asOptionalInput<FunctionOnDeployUpdatePolicy>(onDeployUpdatePolicy),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      runtime = pulumi.Input.asOptionalInput<String>(runtime),
      secretEnvironmentVariables = pulumi.Input.asOptionalInput<List<FunctionSecretEnvironmentVariable>>(secretEnvironmentVariables),
      secretVolumes = pulumi.Input.asOptionalInput<List<FunctionSecretVolume>>(secretVolumes),
      serviceAccountEmail = pulumi.Input.asOptionalInput<String>(serviceAccountEmail),
      sourceArchiveBucket = pulumi.Input.asOptionalInput<String>(sourceArchiveBucket),
      sourceArchiveObject = pulumi.Input.asOptionalInput<String>(sourceArchiveObject),
      sourceRepository = pulumi.Input.asOptionalInput<FunctionSourceRepository>(sourceRepository),
      status = pulumi.Input.asOptionalInput<String>(status),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      triggerHttp = pulumi.Input.asOptionalInput<bool>(triggerHttp),
      versionId = pulumi.Input.asOptionalInput<String>(versionId),
      vpcConnector = pulumi.Input.asOptionalInput<String>(vpcConnector),
      vpcConnectorEgressSettings = pulumi.Input.asOptionalInput<String>(vpcConnectorEgressSettings);

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
      automaticUpdatePolicy: map['automaticUpdatePolicy'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['automaticUpdatePolicy'] as Map).cast<String, dynamic>()),
      availableMemoryMb: map['availableMemoryMb'] == null ? null : pulumi.Output.create<int>(map['availableMemoryMb'] as int),
      buildEnvironmentVariables: map['buildEnvironmentVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['buildEnvironmentVariables'] as Map).cast<String, String>()),
      buildServiceAccount: map['buildServiceAccount'] == null ? null : pulumi.Output.create<String>(map['buildServiceAccount'] as String),
      buildWorkerPool: map['buildWorkerPool'] == null ? null : pulumi.Output.create<String>(map['buildWorkerPool'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dockerRegistry: map['dockerRegistry'] == null ? null : pulumi.Output.create<String>(map['dockerRegistry'] as String),
      dockerRepository: map['dockerRepository'] == null ? null : pulumi.Output.create<String>(map['dockerRepository'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entryPoint: map['entryPoint'] == null ? null : pulumi.Output.create<String>(map['entryPoint'] as String),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environmentVariables'] as Map).cast<String, String>()),
      eventTrigger: map['eventTrigger'] == null ? null : pulumi.Output.create<FunctionEventTrigger>(FunctionEventTrigger.fromMap((map['eventTrigger'] as Map).cast<String, dynamic>())),
      httpsTriggerSecurityLevel: map['httpsTriggerSecurityLevel'] == null ? null : pulumi.Output.create<String>(map['httpsTriggerSecurityLevel'] as String),
      httpsTriggerUrl: map['httpsTriggerUrl'] == null ? null : pulumi.Output.create<String>(map['httpsTriggerUrl'] as String),
      ingressSettings: map['ingressSettings'] == null ? null : pulumi.Output.create<String>(map['ingressSettings'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      maxInstances: map['maxInstances'] == null ? null : pulumi.Output.create<int>(map['maxInstances'] as int),
      minInstances: map['minInstances'] == null ? null : pulumi.Output.create<int>(map['minInstances'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      onDeployUpdatePolicy: map['onDeployUpdatePolicy'] == null ? null : pulumi.Output.create<FunctionOnDeployUpdatePolicy>(FunctionOnDeployUpdatePolicy.fromMap((map['onDeployUpdatePolicy'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<String>(map['runtime'] as String),
      secretEnvironmentVariables: map['secretEnvironmentVariables'] == null ? null : pulumi.Output.create<List<FunctionSecretEnvironmentVariable>>(pulumi.Input.decodeList<FunctionSecretEnvironmentVariable>(map['secretEnvironmentVariables'], (value) => FunctionSecretEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))),
      secretVolumes: map['secretVolumes'] == null ? null : pulumi.Output.create<List<FunctionSecretVolume>>(pulumi.Input.decodeList<FunctionSecretVolume>(map['secretVolumes'], (value) => FunctionSecretVolume.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : pulumi.Output.create<String>(map['serviceAccountEmail'] as String),
      sourceArchiveBucket: map['sourceArchiveBucket'] == null ? null : pulumi.Output.create<String>(map['sourceArchiveBucket'] as String),
      sourceArchiveObject: map['sourceArchiveObject'] == null ? null : pulumi.Output.create<String>(map['sourceArchiveObject'] as String),
      sourceRepository: map['sourceRepository'] == null ? null : pulumi.Output.create<FunctionSourceRepository>(FunctionSourceRepository.fromMap((map['sourceRepository'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      triggerHttp: map['triggerHttp'] == null ? null : pulumi.Output.create<bool>(map['triggerHttp'] as bool),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
      vpcConnector: map['vpcConnector'] == null ? null : pulumi.Output.create<String>(map['vpcConnector'] as String),
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] == null ? null : pulumi.Output.create<String>(map['vpcConnectorEgressSettings'] as String),
    );
  }
}

