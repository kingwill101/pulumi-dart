// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'debug_options.dart';
import 'environment_flex_resource_scheduling_goal.dart';
import 'worker_pool.dart';

/// Describes the environment in which a Dataflow Job runs.
class Environment {
  /// The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. "compute.googleapis.com".
  final pulumi.Input<String>? clusterManagerApiService;

  /// The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}
  final pulumi.Input<String>? dataset;

  /// Any debugging options to be supplied to the job.
  final pulumi.Input<DebugOptions>? debugOptions;

  /// The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.
  final pulumi.Input<List<String>>? experiments;

  /// Which Flexible Resource Scheduling mode to run in.
  final pulumi.Input<EnvironmentFlexResourceSchedulingGoal>?
  flexResourceSchedulingGoal;

  /// Experimental settings.
  final pulumi.Input<Map<String, String>>? internalExperiments;

  /// The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
  final pulumi.Input<Map<String, String>>? sdkPipelineOptions;

  /// Identity to run virtual machines as. Defaults to the default account.
  final pulumi.Input<String>? serviceAccountEmail;

  /// If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  final pulumi.Input<String>? serviceKmsKeyName;

  /// The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).
  final pulumi.Input<List<String>>? serviceOptions;

  /// The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String>? tempStoragePrefix;

  /// A description of the process that generated the request.
  final pulumi.Input<Map<String, String>>? userAgent;

  /// A structure describing which components and their versions of the service are required in order to run the job.
  final pulumi.Input<Map<String, String>>? version;

  /// The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  final pulumi.Input<List<WorkerPool>>? workerPools;

  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  final pulumi.Input<String>? workerRegion;

  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  final pulumi.Input<String>? workerZone;

  /// Creates a new [Environment].
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
  /// [tempStoragePrefix] The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [userAgent] A description of the process that generated the request.
  /// [version] A structure describing which components and their versions of the service are required in order to run the job.
  /// [workerPools] The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  /// [workerZone] The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  Environment({
    this.clusterManagerApiService,
    this.dataset,
    this.debugOptions,
    this.experiments,
    this.flexResourceSchedulingGoal,
    this.internalExperiments,
    this.sdkPipelineOptions,
    this.serviceAccountEmail,
    this.serviceKmsKeyName,
    this.serviceOptions,
    this.tempStoragePrefix,
    this.userAgent,
    this.version,
    this.workerPools,
    this.workerRegion,
    this.workerZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterManagerApiService': ?clusterManagerApiService,
      'dataset': ?dataset,
      'debugOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DebugOptions,
            Map<String, dynamic>
          >(debugOptions, (value) => value.toMap()),
      'experiments': ?experiments,
      'flexResourceSchedulingGoal':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentFlexResourceSchedulingGoal,
            String
          >(flexResourceSchedulingGoal, (value) => value.wireValue),
      'internalExperiments': ?internalExperiments,
      'sdkPipelineOptions': ?sdkPipelineOptions,
      'serviceAccountEmail': ?serviceAccountEmail,
      'serviceKmsKeyName': ?serviceKmsKeyName,
      'serviceOptions': ?serviceOptions,
      'tempStoragePrefix': ?tempStoragePrefix,
      'userAgent': ?userAgent,
      'version': ?version,
      'workerPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkerPool>,
            List<Map<String, dynamic>>
          >(
            workerPools,
            (value) =>
                pulumi.Input.encodeList<WorkerPool, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'workerRegion': ?workerRegion,
      'workerZone': ?workerZone,
    };
  }

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      clusterManagerApiService: (() {
        final guardedValue = map['clusterManagerApiService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataset: (() {
        final guardedValue = map['dataset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      debugOptions: (() {
        final guardedValue = map['debugOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DebugOptions.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      experiments: (() {
        final guardedValue = map['experiments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      flexResourceSchedulingGoal: (() {
        final guardedValue = map['flexResourceSchedulingGoal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentFlexResourceSchedulingGoal.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      internalExperiments: (() {
        final guardedValue = map['internalExperiments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      sdkPipelineOptions: (() {
        final guardedValue = map['sdkPipelineOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      serviceAccountEmail: (() {
        final guardedValue = map['serviceAccountEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceKmsKeyName: (() {
        final guardedValue = map['serviceKmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceOptions: (() {
        final guardedValue = map['serviceOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tempStoragePrefix: (() {
        final guardedValue = map['tempStoragePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAgent: (() {
        final guardedValue = map['userAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workerPools: (() {
        final guardedValue = map['workerPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkerPool>(
            guardedValue,
            (value) =>
                WorkerPool.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      workerRegion: (() {
        final guardedValue = map['workerRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerZone: (() {
        final guardedValue = map['workerZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
