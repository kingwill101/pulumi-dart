// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'debug_options_response.dart';
import 'worker_pool_response.dart';

/// Describes the environment in which a Dataflow Job runs.
class EnvironmentResponse {
  /// The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. "compute.googleapis.com".
  final pulumi.Input<String> clusterManagerApiService;
  /// The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}
  final pulumi.Input<String> dataset;
  /// Any debugging options to be supplied to the job.
  final pulumi.Input<DebugOptionsResponse> debugOptions;
  /// The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.
  final pulumi.Input<List<String>> experiments;
  /// Which Flexible Resource Scheduling mode to run in.
  final pulumi.Input<String> flexResourceSchedulingGoal;
  /// Experimental settings.
  final pulumi.Input<Map<String, String>> internalExperiments;
  /// The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
  final pulumi.Input<Map<String, String>> sdkPipelineOptions;
  /// Identity to run virtual machines as. Defaults to the default account.
  final pulumi.Input<String> serviceAccountEmail;
  /// If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  final pulumi.Input<String> serviceKmsKeyName;
  /// The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).
  final pulumi.Input<List<String>> serviceOptions;
  /// The shuffle mode used for the job.
  final pulumi.Input<String> shuffleMode;
  /// The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String> tempStoragePrefix;
  /// Whether the job uses the new streaming engine billing model based on resource usage.
  final pulumi.Input<bool> useStreamingEngineResourceBasedBilling;
  /// A description of the process that generated the request.
  final pulumi.Input<Map<String, String>> userAgent;
  /// A structure describing which components and their versions of the service are required in order to run the job.
  final pulumi.Input<Map<String, String>> version;
  /// The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  final pulumi.Input<List<WorkerPoolResponse>> workerPools;
  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  final pulumi.Input<String> workerRegion;
  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  final pulumi.Input<String> workerZone;

  /// Creates a new [EnvironmentResponse].
  /// [clusterManagerApiService] The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. "compute.googleapis.com".
  /// [dataset] The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}
  /// [debugOptions] Any debugging options to be supplied to the job.
  /// [experiments] The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.
  /// [flexResourceSchedulingGoal] Which Flexible Resource Scheduling mode to run in.
  /// [internalExperiments] Experimental settings.
  /// [sdkPipelineOptions] The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
  /// [serviceAccountEmail] Identity to run virtual machines as. Defaults to the default account.
  /// [serviceKmsKeyName] If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  /// [serviceOptions] The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).
  /// [shuffleMode] The shuffle mode used for the job.
  /// [tempStoragePrefix] The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [useStreamingEngineResourceBasedBilling] Whether the job uses the new streaming engine billing model based on resource usage.
  /// [userAgent] A description of the process that generated the request.
  /// [version] A structure describing which components and their versions of the service are required in order to run the job.
  /// [workerPools] The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  /// [workerZone] The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  EnvironmentResponse({
    required this.clusterManagerApiService,
    required this.dataset,
    required this.debugOptions,
    required this.experiments,
    required this.flexResourceSchedulingGoal,
    required this.internalExperiments,
    required this.sdkPipelineOptions,
    required this.serviceAccountEmail,
    required this.serviceKmsKeyName,
    required this.serviceOptions,
    required this.shuffleMode,
    required this.tempStoragePrefix,
    required this.useStreamingEngineResourceBasedBilling,
    required this.userAgent,
    required this.version,
    required this.workerPools,
    required this.workerRegion,
    required this.workerZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterManagerApiService': clusterManagerApiService,
      'dataset': dataset,
      'debugOptions': pulumi.Input.mapInputValue<DebugOptionsResponse, Map<String, dynamic>>(debugOptions, (value) => value.toMap()),
      'experiments': experiments,
      'flexResourceSchedulingGoal': flexResourceSchedulingGoal,
      'internalExperiments': internalExperiments,
      'sdkPipelineOptions': sdkPipelineOptions,
      'serviceAccountEmail': serviceAccountEmail,
      'serviceKmsKeyName': serviceKmsKeyName,
      'serviceOptions': serviceOptions,
      'shuffleMode': shuffleMode,
      'tempStoragePrefix': tempStoragePrefix,
      'useStreamingEngineResourceBasedBilling': useStreamingEngineResourceBasedBilling,
      'userAgent': userAgent,
      'version': version,
      'workerPools': pulumi.Input.mapInputValue<List<WorkerPoolResponse>, List<Map<String, dynamic>>>(workerPools, (value) => pulumi.Input.encodeList<WorkerPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerRegion': workerRegion,
      'workerZone': workerZone,
    };
  }

  factory EnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse(
      clusterManagerApiService: (map['clusterManagerApiService'] as String).input(),
      dataset: (map['dataset'] as String).input(),
      debugOptions: (DebugOptionsResponse.fromMap((map['debugOptions'] as Map).cast<String, dynamic>())).input(),
      experiments: ((map['experiments'] as List).cast<String>()).input(),
      flexResourceSchedulingGoal: (map['flexResourceSchedulingGoal'] as String).input(),
      internalExperiments: ((map['internalExperiments'] as Map).cast<String, String>()).input(),
      sdkPipelineOptions: ((map['sdkPipelineOptions'] as Map).cast<String, String>()).input(),
      serviceAccountEmail: (map['serviceAccountEmail'] as String).input(),
      serviceKmsKeyName: (map['serviceKmsKeyName'] as String).input(),
      serviceOptions: ((map['serviceOptions'] as List).cast<String>()).input(),
      shuffleMode: (map['shuffleMode'] as String).input(),
      tempStoragePrefix: (map['tempStoragePrefix'] as String).input(),
      useStreamingEngineResourceBasedBilling: (map['useStreamingEngineResourceBasedBilling'] as bool).input(),
      userAgent: ((map['userAgent'] as Map).cast<String, String>()).input(),
      version: ((map['version'] as Map).cast<String, String>()).input(),
      workerPools: (pulumi.Input.decodeList<WorkerPoolResponse>(map['workerPools'], (value) => WorkerPoolResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workerRegion: (map['workerRegion'] as String).input(),
      workerZone: (map['workerZone'] as String).input(),
    );
  }
}

