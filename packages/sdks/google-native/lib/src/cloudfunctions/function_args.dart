// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_trigger.dart';
import 'function_docker_registry.dart';
import 'function_ingress_settings.dart';
import 'function_vpc_connector_egress_settings.dart';
import 'https_trigger.dart';
import 'secret_env_var.dart';
import 'secret_volume.dart';
import 'source_repository.dart';

/// {@template pulumi_cloudfunctions_v1_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v1_function_args_doc}
class FunctionArgs {
  /// The amount of memory in MB available for a function. Defaults to 256MB.
  final pulumi.Input<int>? availableMemoryMb;

  /// Build environment variables that shall be available during build time.
  final pulumi.Input<Map<String, String>>? buildEnvironmentVariables;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  final pulumi.Input<String>? buildWorkerPool;

  /// User-provided description of a function.
  final pulumi.Input<String>? description;

  /// Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  final pulumi.Input<FunctionDockerRegistry>? dockerRegistry;

  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  final pulumi.Input<String>? dockerRepository;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  final pulumi.Input<String>? entryPoint;

  /// Environment variables that shall be available during function execution.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// A source that fires events in response to a condition in another service.
  final pulumi.Input<EventTrigger>? eventTrigger;

  /// An HTTPS endpoint type of source that can be triggered via URL.
  final pulumi.Input<HttpsTrigger>? httpsTrigger;

  /// The ingress settings for the function, controlling what traffic can reach it.
  final pulumi.Input<FunctionIngressSettings>? ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  final pulumi.Input<String>? kmsKeyName;

  /// Labels associated with this Cloud Function.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  final pulumi.Input<int>? maxInstances;

  /// A lower bound for the number function instances that may coexist at a given time.
  final pulumi.Input<int>? minInstances;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final pulumi.Input<String>? name;

  /// Deprecated: use vpc_connector
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;

  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  final pulumi.Input<String>? runtime;

  /// Secret environment variables configuration.
  final pulumi.Input<List<SecretEnvVar>>? secretEnvironmentVariables;

  /// Secret volumes configuration.
  final pulumi.Input<List<SecretVolume>>? secretVolumes;

  /// The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  final pulumi.Input<String>? serviceAccountEmail;

  /// The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  final pulumi.Input<String>? sourceArchiveUrl;

  /// **Beta Feature** The source repository where a function is hosted.
  final pulumi.Input<SourceRepository>? sourceRepository;

  /// Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  final pulumi.Input<String>? sourceToken;

  /// The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  final pulumi.Input<String>? sourceUploadUrl;

  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  final pulumi.Input<String>? timeout;

  /// The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  final pulumi.Input<String>? vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<FunctionVpcConnectorEgressSettings>?
  vpcConnectorEgressSettings;

  /// Creates a new [FunctionArgs].
  /// [availableMemoryMb] The amount of memory in MB available for a function. Defaults to 256MB.
  /// [buildEnvironmentVariables] Build environment variables that shall be available during build time.
  /// [buildWorkerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  /// [description] User-provided description of a function.
  /// [dockerRegistry] Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  /// [dockerRepository] User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  /// [entryPoint] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  /// [environmentVariables] Environment variables that shall be available during function execution.
  /// [eventTrigger] A source that fires events in response to a condition in another service.
  /// [httpsTrigger] An HTTPS endpoint type of source that can be triggered via URL.
  /// [ingressSettings] The ingress settings for the function, controlling what traffic can reach it.
  /// [kmsKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  /// [labels] Labels associated with this Cloud Function.
  /// [location] Optional.
  /// [maxInstances] The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  /// [minInstances] A lower bound for the number function instances that may coexist at a given time.
  /// [name] A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  /// [network] Deprecated: use vpc_connector
  /// [project] Optional.
  /// [runtime] The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [serviceAccountEmail] The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  /// [sourceArchiveUrl] The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  /// [sourceRepository] **Beta Feature** The source repository where a function is hosted.
  /// [sourceToken] Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  /// [sourceUploadUrl] The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  /// [timeout] The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  /// [vpcConnector] The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  FunctionArgs({
    this.availableMemoryMb,
    this.buildEnvironmentVariables,
    this.buildWorkerPool,
    this.description,
    this.dockerRegistry,
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.eventTrigger,
    this.httpsTrigger,
    this.ingressSettings,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.maxInstances,
    this.minInstances,
    this.name,
    this.network,
    this.project,
    this.runtime,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.serviceAccountEmail,
    this.sourceArchiveUrl,
    this.sourceRepository,
    this.sourceToken,
    this.sourceUploadUrl,
    this.timeout,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMemoryMb': ?availableMemoryMb,
      'buildEnvironmentVariables': ?buildEnvironmentVariables,
      'buildWorkerPool': ?buildWorkerPool,
      'description': ?description,
      'dockerRegistry':
          ?pulumi.Input.mapOptionalInputValue<FunctionDockerRegistry, String>(
            dockerRegistry,
            (value) => value.wireValue,
          ),
      'dockerRepository': ?dockerRepository,
      'entryPoint': ?entryPoint,
      'environmentVariables': ?environmentVariables,
      'eventTrigger':
          ?pulumi.Input.mapOptionalInputValue<
            EventTrigger,
            Map<String, dynamic>
          >(eventTrigger, (value) => value.toMap()),
      'httpsTrigger':
          ?pulumi.Input.mapOptionalInputValue<
            HttpsTrigger,
            Map<String, dynamic>
          >(httpsTrigger, (value) => value.toMap()),
      'ingressSettings':
          ?pulumi.Input.mapOptionalInputValue<FunctionIngressSettings, String>(
            ingressSettings,
            (value) => value.wireValue,
          ),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'runtime': ?runtime,
      'secretEnvironmentVariables':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecretEnvVar>,
            List<Map<String, dynamic>>
          >(
            secretEnvironmentVariables,
            (value) =>
                pulumi.Input.encodeList<SecretEnvVar, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'secretVolumes':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecretVolume>,
            List<Map<String, dynamic>>
          >(
            secretVolumes,
            (value) =>
                pulumi.Input.encodeList<SecretVolume, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'serviceAccountEmail': ?serviceAccountEmail,
      'sourceArchiveUrl': ?sourceArchiveUrl,
      'sourceRepository':
          ?pulumi.Input.mapOptionalInputValue<
            SourceRepository,
            Map<String, dynamic>
          >(sourceRepository, (value) => value.toMap()),
      'sourceToken': ?sourceToken,
      'sourceUploadUrl': ?sourceUploadUrl,
      'timeout': ?timeout,
      'vpcConnector': ?vpcConnector,
      'vpcConnectorEgressSettings':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionVpcConnectorEgressSettings,
            String
          >(vpcConnectorEgressSettings, (value) => value.wireValue),
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      availableMemoryMb: (() {
        final guardedValue = map['availableMemoryMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      buildEnvironmentVariables: (() {
        final guardedValue = map['buildEnvironmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      buildWorkerPool: (() {
        final guardedValue = map['buildWorkerPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerRegistry: (() {
        final guardedValue = map['dockerRegistry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionDockerRegistry.fromValue(guardedValue as String),
        );
      })(),
      dockerRepository: (() {
        final guardedValue = map['dockerRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entryPoint: (() {
        final guardedValue = map['entryPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      eventTrigger: (() {
        final guardedValue = map['eventTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      httpsTrigger: (() {
        final guardedValue = map['httpsTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpsTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      ingressSettings: (() {
        final guardedValue = map['ingressSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionIngressSettings.fromValue(guardedValue as String),
        );
      })(),
      kmsKeyName: (() {
        final guardedValue = map['kmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxInstances: (() {
        final guardedValue = map['maxInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minInstances: (() {
        final guardedValue = map['minInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtime: (() {
        final guardedValue = map['runtime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretEnvironmentVariables: (() {
        final guardedValue = map['secretEnvironmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SecretEnvVar>(
            guardedValue,
            (value) =>
                SecretEnvVar.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      secretVolumes: (() {
        final guardedValue = map['secretVolumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SecretVolume>(
            guardedValue,
            (value) =>
                SecretVolume.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      serviceAccountEmail: (() {
        final guardedValue = map['serviceAccountEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceArchiveUrl: (() {
        final guardedValue = map['sourceArchiveUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceRepository: (() {
        final guardedValue = map['sourceRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SourceRepository.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceToken: (() {
        final guardedValue = map['sourceToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceUploadUrl: (() {
        final guardedValue = map['sourceUploadUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcConnector: (() {
        final guardedValue = map['vpcConnector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcConnectorEgressSettings: (() {
        final guardedValue = map['vpcConnectorEgressSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionVpcConnectorEgressSettings.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
