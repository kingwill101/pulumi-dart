// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_event_trigger.dart';
import 'get_function_on_deploy_update_policy.dart';
import 'get_function_secret_environment_variable.dart';
import 'get_function_secret_volume.dart';
import 'get_function_source_repository.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  final List<Map<String, dynamic>> automaticUpdatePolicies;
  /// Available memory (in MB) to the function.
  final int availableMemoryMb;
  final Map<String, String> buildEnvironmentVariables;
  final String buildServiceAccount;
  final String buildWorkerPool;
  final String deletionPolicy;
  /// Description of the function.
  final String description;
  final String dockerRegistry;
  final String dockerRepository;
  final Map<String, String> effectiveLabels;
  /// Name of a JavaScript function that will be executed when the Google Cloud Function is triggered.
  final String entryPoint;
  final Map<String, String> environmentVariables;
  /// A source that fires events in response to a condition in another service. Structure is documented below.
  final List<GetFunctionEventTrigger> eventTriggers;
  final String httpsTriggerSecurityLevel;
  /// If function is triggered by HTTP, trigger URL is set here.
  final String httpsTriggerUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Controls what traffic can reach the function.
  final String ingressSettings;
  final String kmsKeyName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String> labels;
  /// The limit on the maximum number of function instances that may coexist at a given time. If unset or set to `0`, the API default will be used.
  final int maxInstances;
  final int minInstances;
  /// The name of the Cloud Function.
  final String name;
  final List<GetFunctionOnDeployUpdatePolicy> onDeployUpdatePolicies;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  /// The runtime in which the function is running.
  final String runtime;
  final List<GetFunctionSecretEnvironmentVariable> secretEnvironmentVariables;
  final List<GetFunctionSecretVolume> secretVolumes;
  /// The service account email to be assumed by the cloud function.
  final String serviceAccountEmail;
  /// The GCS bucket containing the zip archive which contains the function.
  final String sourceArchiveBucket;
  /// The source archive object (file) in archive bucket.
  final String sourceArchiveObject;
  /// The URL of the Cloud Source Repository that the function is deployed from. Structure is documented below.
  final List<GetFunctionSourceRepository> sourceRepositories;
  final String status;
  /// Function execution timeout (in seconds).
  final int timeout;
  /// If function is triggered by HTTP, this boolean is set.
  final bool triggerHttp;
  final String versionId;
  /// The VPC Network Connector that this cloud function can connect to.
  final String vpcConnector;
  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final String vpcConnectorEgressSettings;

  /// Creates a new [GetFunctionResult].
  /// [automaticUpdatePolicies] Required.
  /// [availableMemoryMb] Available memory (in MB) to the function.
  /// [buildEnvironmentVariables] Required.
  /// [buildServiceAccount] Required.
  /// [buildWorkerPool] Required.
  /// [deletionPolicy] Required.
  /// [description] Description of the function.
  /// [dockerRegistry] Required.
  /// [dockerRepository] Required.
  /// [effectiveLabels] Required.
  /// [entryPoint] Name of a JavaScript function that will be executed when the Google Cloud Function is triggered.
  /// [environmentVariables] Required.
  /// [eventTriggers] A source that fires events in response to a condition in another service. Structure is documented below.
  /// [httpsTriggerSecurityLevel] Required.
  /// [httpsTriggerUrl] If function is triggered by HTTP, trigger URL is set here.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingressSettings] Controls what traffic can reach the function.
  /// [kmsKeyName] Required.
  /// [labels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [maxInstances] The limit on the maximum number of function instances that may coexist at a given time. If unset or set to `0`, the API default will be used.
  /// [minInstances] Required.
  /// [name] The name of the Cloud Function.
  /// [onDeployUpdatePolicies] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [runtime] The runtime in which the function is running.
  /// [secretEnvironmentVariables] Required.
  /// [secretVolumes] Required.
  /// [serviceAccountEmail] The service account email to be assumed by the cloud function.
  /// [sourceArchiveBucket] The GCS bucket containing the zip archive which contains the function.
  /// [sourceArchiveObject] The source archive object (file) in archive bucket.
  /// [sourceRepositories] The URL of the Cloud Source Repository that the function is deployed from. Structure is documented below.
  /// [status] Required.
  /// [timeout] Function execution timeout (in seconds).
  /// [triggerHttp] If function is triggered by HTTP, this boolean is set.
  /// [versionId] Required.
  /// [vpcConnector] The VPC Network Connector that this cloud function can connect to.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  const GetFunctionResult({
    required this.automaticUpdatePolicies,
    required this.availableMemoryMb,
    required this.buildEnvironmentVariables,
    required this.buildServiceAccount,
    required this.buildWorkerPool,
    required this.deletionPolicy,
    required this.description,
    required this.dockerRegistry,
    required this.dockerRepository,
    required this.effectiveLabels,
    required this.entryPoint,
    required this.environmentVariables,
    required this.eventTriggers,
    required this.httpsTriggerSecurityLevel,
    required this.httpsTriggerUrl,
    required this.id,
    required this.ingressSettings,
    required this.kmsKeyName,
    required this.labels,
    required this.maxInstances,
    required this.minInstances,
    required this.name,
    required this.onDeployUpdatePolicies,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.runtime,
    required this.secretEnvironmentVariables,
    required this.secretVolumes,
    required this.serviceAccountEmail,
    required this.sourceArchiveBucket,
    required this.sourceArchiveObject,
    required this.sourceRepositories,
    required this.status,
    required this.timeout,
    required this.triggerHttp,
    required this.versionId,
    required this.vpcConnector,
    required this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpdatePolicies': automaticUpdatePolicies,
      'availableMemoryMb': availableMemoryMb,
      'buildEnvironmentVariables': buildEnvironmentVariables,
      'buildServiceAccount': buildServiceAccount,
      'buildWorkerPool': buildWorkerPool,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'dockerRegistry': dockerRegistry,
      'dockerRepository': dockerRepository,
      'effectiveLabels': effectiveLabels,
      'entryPoint': entryPoint,
      'environmentVariables': environmentVariables,
      'eventTriggers': pulumi.Input.encodeList<GetFunctionEventTrigger, Map<String, dynamic>>(eventTriggers, (value) => value.toMap()),
      'httpsTriggerSecurityLevel': httpsTriggerSecurityLevel,
      'httpsTriggerUrl': httpsTriggerUrl,
      'id': id,
      'ingressSettings': ingressSettings,
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'maxInstances': maxInstances,
      'minInstances': minInstances,
      'name': name,
      'onDeployUpdatePolicies': pulumi.Input.encodeList<GetFunctionOnDeployUpdatePolicy, Map<String, dynamic>>(onDeployUpdatePolicies, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'region': ?region,
      'runtime': runtime,
      'secretEnvironmentVariables': pulumi.Input.encodeList<GetFunctionSecretEnvironmentVariable, Map<String, dynamic>>(secretEnvironmentVariables, (value) => value.toMap()),
      'secretVolumes': pulumi.Input.encodeList<GetFunctionSecretVolume, Map<String, dynamic>>(secretVolumes, (value) => value.toMap()),
      'serviceAccountEmail': serviceAccountEmail,
      'sourceArchiveBucket': sourceArchiveBucket,
      'sourceArchiveObject': sourceArchiveObject,
      'sourceRepositories': pulumi.Input.encodeList<GetFunctionSourceRepository, Map<String, dynamic>>(sourceRepositories, (value) => value.toMap()),
      'status': status,
      'timeout': timeout,
      'triggerHttp': triggerHttp,
      'versionId': versionId,
      'vpcConnector': vpcConnector,
      'vpcConnectorEgressSettings': vpcConnectorEgressSettings,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      automaticUpdatePolicies: (map['automaticUpdatePolicies'] as List).cast<Map<String, dynamic>>(),
      availableMemoryMb: map['availableMemoryMb'] as int,
      buildEnvironmentVariables: (map['buildEnvironmentVariables'] as Map).cast<String, String>(),
      buildServiceAccount: map['buildServiceAccount'] as String,
      buildWorkerPool: map['buildWorkerPool'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      dockerRegistry: map['dockerRegistry'] as String,
      dockerRepository: map['dockerRepository'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entryPoint: map['entryPoint'] as String,
      environmentVariables: (map['environmentVariables'] as Map).cast<String, String>(),
      eventTriggers: pulumi.Input.decodeList<GetFunctionEventTrigger>(map['eventTriggers']!, (value) => GetFunctionEventTrigger.fromMap((value as Map).cast<String, dynamic>())),
      httpsTriggerSecurityLevel: map['httpsTriggerSecurityLevel'] as String,
      httpsTriggerUrl: map['httpsTriggerUrl'] as String,
      id: map['id'] as String,
      ingressSettings: map['ingressSettings'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxInstances: map['maxInstances'] as int,
      minInstances: map['minInstances'] as int,
      name: map['name'] as String,
      onDeployUpdatePolicies: pulumi.Input.decodeList<GetFunctionOnDeployUpdatePolicy>(map['onDeployUpdatePolicies']!, (value) => GetFunctionOnDeployUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtime: map['runtime'] as String,
      secretEnvironmentVariables: pulumi.Input.decodeList<GetFunctionSecretEnvironmentVariable>(map['secretEnvironmentVariables']!, (value) => GetFunctionSecretEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())),
      secretVolumes: pulumi.Input.decodeList<GetFunctionSecretVolume>(map['secretVolumes']!, (value) => GetFunctionSecretVolume.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      sourceArchiveBucket: map['sourceArchiveBucket'] as String,
      sourceArchiveObject: map['sourceArchiveObject'] as String,
      sourceRepositories: pulumi.Input.decodeList<GetFunctionSourceRepository>(map['sourceRepositories']!, (value) => GetFunctionSourceRepository.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      timeout: map['timeout'] as int,
      triggerHttp: map['triggerHttp'] as bool,
      versionId: map['versionId'] as String,
      vpcConnector: map['vpcConnector'] as String,
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] as String,
    );
  }
}
