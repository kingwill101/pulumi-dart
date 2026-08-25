// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_event_trigger.dart';
import 'get_function_on_deploy_update_policy.dart';
import 'get_function_secret_environment_variable.dart';
import 'get_function_secret_volume.dart';
import 'get_function_source_repository.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  final List<Map<String, dynamic>>? automaticUpdatePolicies;
  /// Available memory (in MB) to the function.
  final int? availableMemoryMb;
  final Map<String, String>? buildEnvironmentVariables;
  final String? buildServiceAccount;
  final String? buildWorkerPool;
  final String? deletionPolicy;
  /// Description of the function.
  final String? description;
  final String? dockerRegistry;
  final String? dockerRepository;
  final Map<String, String>? effectiveLabels;
  /// Name of a JavaScript function that will be executed when the Google Cloud Function is triggered.
  final String? entryPoint;
  final Map<String, String>? environmentVariables;
  /// A source that fires events in response to a condition in another service. Structure is documented below.
  final List<GetFunctionEventTrigger>? eventTriggers;
  final String? httpsTriggerSecurityLevel;
  /// If function is triggered by HTTP, trigger URL is set here.
  final String? httpsTriggerUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Controls what traffic can reach the function.
  final String? ingressSettings;
  final String? kmsKeyName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String>? labels;
  /// The limit on the maximum number of function instances that may coexist at a given time. If unset or set to `0`, the API default will be used.
  final int? maxInstances;
  final int? minInstances;
  /// The name of the Cloud Function.
  final String? name;
  final List<GetFunctionOnDeployUpdatePolicy>? onDeployUpdatePolicies;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  /// The runtime in which the function is running.
  final String? runtime;
  final List<GetFunctionSecretEnvironmentVariable>? secretEnvironmentVariables;
  final List<GetFunctionSecretVolume>? secretVolumes;
  /// The service account email to be assumed by the cloud function.
  final String? serviceAccountEmail;
  /// The GCS bucket containing the zip archive which contains the function.
  final String? sourceArchiveBucket;
  /// The source archive object (file) in archive bucket.
  final String? sourceArchiveObject;
  /// The URL of the Cloud Source Repository that the function is deployed from. Structure is documented below.
  final List<GetFunctionSourceRepository>? sourceRepositories;
  final String? status;
  /// Function execution timeout (in seconds).
  final int? timeout;
  /// If function is triggered by HTTP, this boolean is set.
  final bool? triggerHttp;
  final String? versionId;
  /// The VPC Network Connector that this cloud function can connect to.
  final String? vpcConnector;
  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final String? vpcConnectorEgressSettings;

  /// Creates a new [GetFunctionResult].
  /// [automaticUpdatePolicies] Optional.
  /// [availableMemoryMb] Available memory (in MB) to the function.
  /// [buildEnvironmentVariables] Optional.
  /// [buildServiceAccount] Optional.
  /// [buildWorkerPool] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Description of the function.
  /// [dockerRegistry] Optional.
  /// [dockerRepository] Optional.
  /// [effectiveLabels] Optional.
  /// [entryPoint] Name of a JavaScript function that will be executed when the Google Cloud Function is triggered.
  /// [environmentVariables] Optional.
  /// [eventTriggers] A source that fires events in response to a condition in another service. Structure is documented below.
  /// [httpsTriggerSecurityLevel] Optional.
  /// [httpsTriggerUrl] If function is triggered by HTTP, trigger URL is set here.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingressSettings] Controls what traffic can reach the function.
  /// [kmsKeyName] Optional.
  /// [labels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [maxInstances] The limit on the maximum number of function instances that may coexist at a given time. If unset or set to `0`, the API default will be used.
  /// [minInstances] Optional.
  /// [name] The name of the Cloud Function.
  /// [onDeployUpdatePolicies] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [runtime] The runtime in which the function is running.
  /// [secretEnvironmentVariables] Optional.
  /// [secretVolumes] Optional.
  /// [serviceAccountEmail] The service account email to be assumed by the cloud function.
  /// [sourceArchiveBucket] The GCS bucket containing the zip archive which contains the function.
  /// [sourceArchiveObject] The source archive object (file) in archive bucket.
  /// [sourceRepositories] The URL of the Cloud Source Repository that the function is deployed from. Structure is documented below.
  /// [status] Optional.
  /// [timeout] Function execution timeout (in seconds).
  /// [triggerHttp] If function is triggered by HTTP, this boolean is set.
  /// [versionId] Optional.
  /// [vpcConnector] The VPC Network Connector that this cloud function can connect to.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  const GetFunctionResult({
    this.automaticUpdatePolicies,
    this.availableMemoryMb,
    this.buildEnvironmentVariables,
    this.buildServiceAccount,
    this.buildWorkerPool,
    this.deletionPolicy,
    this.description,
    this.dockerRegistry,
    this.dockerRepository,
    this.effectiveLabels,
    this.entryPoint,
    this.environmentVariables,
    this.eventTriggers,
    this.httpsTriggerSecurityLevel,
    this.httpsTriggerUrl,
    this.id,
    this.ingressSettings,
    this.kmsKeyName,
    this.labels,
    this.maxInstances,
    this.minInstances,
    this.name,
    this.onDeployUpdatePolicies,
    this.project,
    this.pulumiLabels,
    this.region,
    this.runtime,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.serviceAccountEmail,
    this.sourceArchiveBucket,
    this.sourceArchiveObject,
    this.sourceRepositories,
    this.status,
    this.timeout,
    this.triggerHttp,
    this.versionId,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpdatePolicies': ?automaticUpdatePolicies,
      'availableMemoryMb': ?availableMemoryMb,
      'buildEnvironmentVariables': ?buildEnvironmentVariables,
      'buildServiceAccount': ?buildServiceAccount,
      'buildWorkerPool': ?buildWorkerPool,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dockerRegistry': ?dockerRegistry,
      'dockerRepository': ?dockerRepository,
      'effectiveLabels': ?effectiveLabels,
      'entryPoint': ?entryPoint,
      'environmentVariables': ?environmentVariables,
      'eventTriggers': ?(() { final guardedValue = eventTriggers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionEventTrigger, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'httpsTriggerSecurityLevel': ?httpsTriggerSecurityLevel,
      'httpsTriggerUrl': ?httpsTriggerUrl,
      'id': ?id,
      'ingressSettings': ?ingressSettings,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'name': ?name,
      'onDeployUpdatePolicies': ?(() { final guardedValue = onDeployUpdatePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionOnDeployUpdatePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'runtime': ?runtime,
      'secretEnvironmentVariables': ?(() { final guardedValue = secretEnvironmentVariables; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionSecretEnvironmentVariable, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretVolumes': ?(() { final guardedValue = secretVolumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionSecretVolume, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceAccountEmail': ?serviceAccountEmail,
      'sourceArchiveBucket': ?sourceArchiveBucket,
      'sourceArchiveObject': ?sourceArchiveObject,
      'sourceRepositories': ?(() { final guardedValue = sourceRepositories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionSourceRepository, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'timeout': ?timeout,
      'triggerHttp': ?triggerHttp,
      'versionId': ?versionId,
      'vpcConnector': ?vpcConnector,
      'vpcConnectorEgressSettings': ?vpcConnectorEgressSettings,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      automaticUpdatePolicies: (() { final guardedValue = map['automaticUpdatePolicies']; if (guardedValue == null) return null; return (guardedValue as List).cast<Map<String, dynamic>>(); })(),
      availableMemoryMb: (() { final guardedValue = map['availableMemoryMb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      buildEnvironmentVariables: (() { final guardedValue = map['buildEnvironmentVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      buildServiceAccount: (() { final guardedValue = map['buildServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buildWorkerPool: (() { final guardedValue = map['buildWorkerPool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerRegistry: (() { final guardedValue = map['dockerRegistry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerRepository: (() { final guardedValue = map['dockerRepository']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      entryPoint: (() { final guardedValue = map['entryPoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      eventTriggers: (() { final guardedValue = map['eventTriggers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionEventTrigger>(guardedValue, (value) => GetFunctionEventTrigger.fromMap((value as Map).cast<String, dynamic>())); })(),
      httpsTriggerSecurityLevel: (() { final guardedValue = map['httpsTriggerSecurityLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpsTriggerUrl: (() { final guardedValue = map['httpsTriggerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressSettings: (() { final guardedValue = map['ingressSettings']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onDeployUpdatePolicies: (() { final guardedValue = map['onDeployUpdatePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionOnDeployUpdatePolicy>(guardedValue, (value) => GetFunctionOnDeployUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretEnvironmentVariables: (() { final guardedValue = map['secretEnvironmentVariables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionSecretEnvironmentVariable>(guardedValue, (value) => GetFunctionSecretEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretVolumes: (() { final guardedValue = map['secretVolumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionSecretVolume>(guardedValue, (value) => GetFunctionSecretVolume.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceArchiveBucket: (() { final guardedValue = map['sourceArchiveBucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceArchiveObject: (() { final guardedValue = map['sourceArchiveObject']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRepositories: (() { final guardedValue = map['sourceRepositories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionSourceRepository>(guardedValue, (value) => GetFunctionSourceRepository.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      triggerHttp: (() { final guardedValue = map['triggerHttp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcConnector: (() { final guardedValue = map['vpcConnector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcConnectorEgressSettings: (() { final guardedValue = map['vpcConnectorEgressSettings']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
