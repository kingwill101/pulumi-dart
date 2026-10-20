// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_trigger_response.dart';
import 'https_trigger_response.dart';
import 'secret_env_var_response.dart';
import 'secret_volume_response.dart';
import 'source_repository_response.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  /// The amount of memory in MB available for a function. Defaults to 256MB.
  final int? availableMemoryMb;
  /// Build environment variables that shall be available during build time.
  final Map<String, String>? buildEnvironmentVariables;
  /// The Cloud Build ID of the latest successful deployment of the function.
  final String? buildId;
  /// The Cloud Build Name of the function deployment. `projects//locations//builds/`.
  final String? buildName;
  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  final String? buildWorkerPool;
  /// User-provided description of a function.
  final String? description;
  /// Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  final String? dockerRegistry;
  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  final String? dockerRepository;
  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix (ID of the function), if not specified.
  final String? entryPoint;
  /// Environment variables that shall be available during function execution.
  final Map<String, String>? environmentVariables;
  /// A source that fires events in response to a condition in another service.
  final EventTriggerResponse? eventTrigger;
  /// An HTTPS endpoint type of source that can be triggered via URL.
  final HttpsTriggerResponse? httpsTrigger;
  /// The ingress settings for the function, controlling what traffic can reach it.
  final String? ingressSettings;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  final String? kmsKeyName;
  /// Labels associated with this Cloud Function.
  final Map<String, String>? labels;
  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  final int? maxInstances;
  /// A lower bound for the number function instances that may coexist at a given time.
  final int? minInstances;
  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final String? name;
  /// Deprecated: use vpc_connector
  final String? network;
  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  final String? runtime;
  /// Secret environment variables configuration.
  final List<SecretEnvVarResponse>? secretEnvironmentVariables;
  /// Secret volumes configuration.
  final List<SecretVolumeResponse>? secretVolumes;
  /// The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  final String? serviceAccountEmail;
  /// The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  final String? sourceArchiveUrl;
  /// **Beta Feature** The source repository where a function is hosted.
  final SourceRepositoryResponse? sourceRepository;
  /// Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  final String? sourceToken;
  /// The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  final String? sourceUploadUrl;
  /// Status of the function deployment.
  final String? status;
  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  final String? timeout;
  /// The last update timestamp of a Cloud Function.
  final String? updateTime;
  /// The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  final String? versionId;
  /// The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  final String? vpcConnector;
  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final String? vpcConnectorEgressSettings;

  /// Creates a new [GetFunctionResult].
  /// [availableMemoryMb] The amount of memory in MB available for a function. Defaults to 256MB.
  /// [buildEnvironmentVariables] Build environment variables that shall be available during build time.
  /// [buildId] The Cloud Build ID of the latest successful deployment of the function.
  /// [buildName] The Cloud Build Name of the function deployment. `projects//locations//builds/`.
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
  /// [maxInstances] The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  /// [minInstances] A lower bound for the number function instances that may coexist at a given time.
  /// [name] A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  /// [network] Deprecated: use vpc_connector
  /// [runtime] The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [serviceAccountEmail] The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  /// [sourceArchiveUrl] The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  /// [sourceRepository] **Beta Feature** The source repository where a function is hosted.
  /// [sourceToken] Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  /// [sourceUploadUrl] The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  /// [status] Status of the function deployment.
  /// [timeout] The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  /// [updateTime] The last update timestamp of a Cloud Function.
  /// [versionId] The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  /// [vpcConnector] The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  const GetFunctionResult({
    this.availableMemoryMb,
    this.buildEnvironmentVariables,
    this.buildId,
    this.buildName,
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
    this.maxInstances,
    this.minInstances,
    this.name,
    this.network,
    this.runtime,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.serviceAccountEmail,
    this.sourceArchiveUrl,
    this.sourceRepository,
    this.sourceToken,
    this.sourceUploadUrl,
    this.status,
    this.timeout,
    this.updateTime,
    this.versionId,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMemoryMb': ?availableMemoryMb,
      'buildEnvironmentVariables': ?buildEnvironmentVariables,
      'buildId': ?buildId,
      'buildName': ?buildName,
      'buildWorkerPool': ?buildWorkerPool,
      'description': ?description,
      'dockerRegistry': ?dockerRegistry,
      'dockerRepository': ?dockerRepository,
      'entryPoint': ?entryPoint,
      'environmentVariables': ?environmentVariables,
      'eventTrigger': ?eventTrigger?.toMap(),
      'httpsTrigger': ?httpsTrigger?.toMap(),
      'ingressSettings': ?ingressSettings,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'name': ?name,
      'network': ?network,
      'runtime': ?runtime,
      'secretEnvironmentVariables': ?(() { final guardedValue = secretEnvironmentVariables; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecretEnvVarResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretVolumes': ?(() { final guardedValue = secretVolumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecretVolumeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceAccountEmail': ?serviceAccountEmail,
      'sourceArchiveUrl': ?sourceArchiveUrl,
      'sourceRepository': ?sourceRepository?.toMap(),
      'sourceToken': ?sourceToken,
      'sourceUploadUrl': ?sourceUploadUrl,
      'status': ?status,
      'timeout': ?timeout,
      'updateTime': ?updateTime,
      'versionId': ?versionId,
      'vpcConnector': ?vpcConnector,
      'vpcConnectorEgressSettings': ?vpcConnectorEgressSettings,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      availableMemoryMb: (() { final guardedValue = map['availableMemoryMb']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      buildEnvironmentVariables: (() { final guardedValue = map['buildEnvironmentVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      buildId: (() { final guardedValue = map['buildId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buildName: (() { final guardedValue = map['buildName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buildWorkerPool: (() { final guardedValue = map['buildWorkerPool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerRegistry: (() { final guardedValue = map['dockerRegistry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerRepository: (() { final guardedValue = map['dockerRepository']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entryPoint: (() { final guardedValue = map['entryPoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      eventTrigger: (() { final guardedValue = map['eventTrigger']; if (guardedValue == null) return null; return EventTriggerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpsTrigger: (() { final guardedValue = map['httpsTrigger']; if (guardedValue == null) return null; return HttpsTriggerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ingressSettings: (() { final guardedValue = map['ingressSettings']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretEnvironmentVariables: (() { final guardedValue = map['secretEnvironmentVariables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretEnvVarResponse>(guardedValue, (value) => SecretEnvVarResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretVolumes: (() { final guardedValue = map['secretVolumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretVolumeResponse>(guardedValue, (value) => SecretVolumeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceArchiveUrl: (() { final guardedValue = map['sourceArchiveUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRepository: (() { final guardedValue = map['sourceRepository']; if (guardedValue == null) return null; return SourceRepositoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceToken: (() { final guardedValue = map['sourceToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceUploadUrl: (() { final guardedValue = map['sourceUploadUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcConnector: (() { final guardedValue = map['vpcConnector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcConnectorEgressSettings: (() { final guardedValue = map['vpcConnectorEgressSettings']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
