// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_job_spec_base_output_directory.dart';
import 'ai_custom_job_job_spec_psc_interface_config.dart';
import 'ai_custom_job_job_spec_scheduling.dart';
import 'ai_custom_job_job_spec_worker_pool_spec.dart';

class AiCustomJobJobSpec {
  /// The Cloud Storage location to store the output of this CustomJob or HyperparameterTuningJob.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecBaseOutputDirectory?>? baseOutputDirectory;
  /// Whether you want Vertex AI to enable access to the customized dashboard in training chief container.
  final pulumi.Input<bool?>? enableDashboardAccess;
  /// Whether you want Vertex AI to enable interactive shell access to training containers.
  final pulumi.Input<bool?>? enableWebAccess;
  /// The Experiment associated with this job.
  /// Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}`
  final pulumi.Input<String?>? experiment;
  /// The Experiment Run associated with this job.
  /// Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}-{experiment-run-name}`
  final pulumi.Input<String?>? experimentRun;
  /// The name of the Model resources for which to generate a mapping to artifact URIs. Applicable only to some of the Google-provided custom jobs.
  /// Format: `projects/{project}/locations/{location}/models/{model}`
  /// In order to retrieve a specific version of the model, also provide the version ID or version alias.
  /// Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden`
  /// If no version ID or alias is specified, the "default" version will be returned.
  final pulumi.Input<List<String>?>? models;
  /// The full name of the Compute Engine network to which the Job should be peered.
  final pulumi.Input<String?>? network;
  /// The ID of the PersistentResource in the same Project and Location which to run.
  /// If this is specified, the job will be run on existing machines held by the PersistentResource instead of on-demand short-live machines.
  /// The network and CMEK configs on the job should be consistent with those on the PersistentResource, otherwise, the job will be rejected.
  final pulumi.Input<String?>? persistentResourceId;
  /// The ID of the location to store protected artifacts. e.g. us-central1. Populate only when the location is different than CustomJob location.
  final pulumi.Input<String?>? protectedArtifactLocationId;
  /// Configuration for PSC-I for CustomJob.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecPscInterfaceConfig?>? pscInterfaceConfig;
  /// A list of names for the reserved ip ranges under the VPC network that can be used for this job.
  final pulumi.Input<List<String>?>? reservedIpRanges;
  /// Scheduling options for a CustomJob.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecScheduling?>? scheduling;
  /// Specifies the service account for workload run-as account.
  final pulumi.Input<String?>? serviceAccount;
  /// The name of a Vertex AI Tensorboard resource to which this CustomJob will upload Tensorboard logs.
  final pulumi.Input<String?>? tensorboard;
  /// The spec of the worker pools including machine type and Docker image.
  /// All worker pools except the first one are optional and can be skipped by providing an empty value.
  /// Structure is documented below.
  final pulumi.Input<List<AiCustomJobJobSpecWorkerPoolSpec>> workerPoolSpecs;

  /// Creates a new [AiCustomJobJobSpec].
  /// [baseOutputDirectory] The Cloud Storage location to store the output of this CustomJob or HyperparameterTuningJob.
  /// [enableDashboardAccess] Whether you want Vertex AI to enable access to the customized dashboard in training chief container.
  /// [enableWebAccess] Whether you want Vertex AI to enable interactive shell access to training containers.
  /// [experiment] The Experiment associated with this job.
  /// [experimentRun] The Experiment Run associated with this job.
  /// [models] The name of the Model resources for which to generate a mapping to artifact URIs. Applicable only to some of the Google-provided custom jobs.
  /// [network] The full name of the Compute Engine network to which the Job should be peered.
  /// [persistentResourceId] The ID of the PersistentResource in the same Project and Location which to run.
  /// [protectedArtifactLocationId] The ID of the location to store protected artifacts. e.g. us-central1. Populate only when the location is different than CustomJob location.
  /// [pscInterfaceConfig] Configuration for PSC-I for CustomJob.
  /// [reservedIpRanges] A list of names for the reserved ip ranges under the VPC network that can be used for this job.
  /// [scheduling] Scheduling options for a CustomJob.
  /// [serviceAccount] Specifies the service account for workload run-as account.
  /// [tensorboard] The name of a Vertex AI Tensorboard resource to which this CustomJob will upload Tensorboard logs.
  /// [workerPoolSpecs] The spec of the worker pools including machine type and Docker image.
  const AiCustomJobJobSpec({
    this.baseOutputDirectory,
    this.enableDashboardAccess,
    this.enableWebAccess,
    this.experiment,
    this.experimentRun,
    this.models,
    this.network,
    this.persistentResourceId,
    this.protectedArtifactLocationId,
    this.pscInterfaceConfig,
    this.reservedIpRanges,
    this.scheduling,
    this.serviceAccount,
    this.tensorboard,
    required this.workerPoolSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseOutputDirectory': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecBaseOutputDirectory, Map<String, dynamic>>(baseOutputDirectory, (value) => value.toMap()),
      'enableDashboardAccess': ?enableDashboardAccess,
      'enableWebAccess': ?enableWebAccess,
      'experiment': ?experiment,
      'experimentRun': ?experimentRun,
      'models': ?models,
      'network': ?network,
      'persistentResourceId': ?persistentResourceId,
      'protectedArtifactLocationId': ?protectedArtifactLocationId,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecPscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'reservedIpRanges': ?reservedIpRanges,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'tensorboard': ?tensorboard,
      'workerPoolSpecs': pulumi.Input.mapInputValue<List<AiCustomJobJobSpecWorkerPoolSpec>, List<Map<String, dynamic>>>(workerPoolSpecs, (value) => pulumi.Input.encodeList<AiCustomJobJobSpecWorkerPoolSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiCustomJobJobSpec.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpec(
      baseOutputDirectory: (() { final guardedValue = map['baseOutputDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecBaseOutputDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableDashboardAccess: (() { final guardedValue = map['enableDashboardAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableWebAccess: (() { final guardedValue = map['enableWebAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      experiment: (() { final guardedValue = map['experiment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentRun: (() { final guardedValue = map['experimentRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistentResourceId: (() { final guardedValue = map['persistentResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedArtifactLocationId: (() { final guardedValue = map['protectedArtifactLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecScheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboard: (() { final guardedValue = map['tensorboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerPoolSpecs: pulumi.Input.fromValue(pulumi.Input.decodeList<AiCustomJobJobSpecWorkerPoolSpec>(map['workerPoolSpecs']!, (value) => AiCustomJobJobSpecWorkerPoolSpec.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
