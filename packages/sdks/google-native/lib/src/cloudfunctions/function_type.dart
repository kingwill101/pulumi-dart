import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_trigger_response.dart';
import 'function_args.dart';
import 'https_trigger_response.dart';
import 'source_repository_response.dart';

/// Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.
class FunctionType extends pulumi.CustomResource {
  /// The amount of memory in MB available for a function. Defaults to 256MB.
  late final pulumi.Output<int> availableMemoryMb;

  /// Build environment variables that shall be available during build time.
  late final pulumi.Output<Map<String, String>> buildEnvironmentVariables;

  /// The Cloud Build ID of the latest successful deployment of the function.
  late final pulumi.Output<String> buildId;

  /// The Cloud Build Name of the function deployment. `projects//locations//builds/`.
  late final pulumi.Output<String> buildName;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  late final pulumi.Output<String> buildWorkerPool;

  /// User-provided description of a function.
  late final pulumi.Output<String> description;

  /// Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  late final pulumi.Output<String> dockerRegistry;

  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  late final pulumi.Output<String> dockerRepository;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  late final pulumi.Output<String> entryPoint;

  /// Environment variables that shall be available during function execution.
  late final pulumi.Output<Map<String, String>> environmentVariables;

  /// A source that fires events in response to a condition in another service.
  late final pulumi.Output<EventTriggerResponse> eventTrigger;

  /// An HTTPS endpoint type of source that can be triggered via URL.
  late final pulumi.Output<HttpsTriggerResponse> httpsTrigger;

  /// The ingress settings for the function, controlling what traffic can reach it.
  late final pulumi.Output<String> ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  late final pulumi.Output<String> kmsKeyName;

  /// Labels associated with this Cloud Function.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  late final pulumi.Output<int> maxInstances;

  /// A lower bound for the number function instances that may coexist at a given time.
  late final pulumi.Output<int> minInstances;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  late final pulumi.Output<String> name;

  /// Deprecated: use vpc_connector
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;

  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  late final pulumi.Output<String> runtime;

  /// Secret environment variables configuration.
  late final pulumi.Output<List<Map<String, dynamic>>>
  secretEnvironmentVariables;

  /// Secret volumes configuration.
  late final pulumi.Output<List<Map<String, dynamic>>> secretVolumes;

  /// The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  late final pulumi.Output<String> serviceAccountEmail;

  /// The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  late final pulumi.Output<String> sourceArchiveUrl;

  /// **Beta Feature** The source repository where a function is hosted.
  late final pulumi.Output<SourceRepositoryResponse> sourceRepository;

  /// Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  late final pulumi.Output<String> sourceToken;

  /// The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  late final pulumi.Output<String> sourceUploadUrl;

  /// Status of the function deployment.
  late final pulumi.Output<String> status;

  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  late final pulumi.Output<String> timeout;

  /// The last update timestamp of a Cloud Function.
  late final pulumi.Output<String> updateTime;

  /// The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  late final pulumi.Output<String> versionId;

  /// The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  late final pulumi.Output<String> vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it.
  late final pulumi.Output<String> vpcConnectorEgressSettings;

  /// Creates a new [FunctionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionType]. {@macro pulumi_cloudfunctions_v1_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionType(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudfunctions/v1:Function',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availableMemoryMb = registerOutput<int>('availableMemoryMb');
    buildEnvironmentVariables = registerOutput<Map<String, String>>(
      'buildEnvironmentVariables',
    );
    buildId = registerOutput<String>('buildId');
    buildName = registerOutput<String>('buildName');
    buildWorkerPool = registerOutput<String>('buildWorkerPool');
    description = registerOutput<String>('description');
    dockerRegistry = registerOutput<String>('dockerRegistry');
    dockerRepository = registerOutput<String>('dockerRepository');
    entryPoint = registerOutput<String>('entryPoint');
    environmentVariables = registerOutput<Map<String, String>>(
      'environmentVariables',
    );
    eventTrigger = registerOutput<EventTriggerResponse>(
      'eventTrigger',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventTriggerResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    httpsTrigger = registerOutput<HttpsTriggerResponse>(
      'httpsTrigger',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HttpsTriggerResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ingressSettings = registerOutput<String>('ingressSettings');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    maxInstances = registerOutput<int>('maxInstances');
    minInstances = registerOutput<int>('minInstances');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    runtime = registerOutput<String>('runtime');
    secretEnvironmentVariables = registerOutput<List<Map<String, dynamic>>>(
      'secretEnvironmentVariables',
    );
    secretVolumes = registerOutput<List<Map<String, dynamic>>>('secretVolumes');
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    sourceArchiveUrl = registerOutput<String>('sourceArchiveUrl');
    sourceRepository = registerOutput<SourceRepositoryResponse>(
      'sourceRepository',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SourceRepositoryResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceToken = registerOutput<String>('sourceToken');
    sourceUploadUrl = registerOutput<String>('sourceUploadUrl');
    status = registerOutput<String>('status');
    timeout = registerOutput<String>('timeout');
    updateTime = registerOutput<String>('updateTime');
    versionId = registerOutput<String>('versionId');
    vpcConnector = registerOutput<String>('vpcConnector');
    vpcConnectorEgressSettings = registerOutput<String>(
      'vpcConnectorEgressSettings',
    );
  }
}
