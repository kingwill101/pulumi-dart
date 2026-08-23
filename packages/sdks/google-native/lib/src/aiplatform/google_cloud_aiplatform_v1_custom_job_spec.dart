// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1_scheduling.dart';
import 'google_cloud_aiplatform_v1_worker_pool_spec.dart';

/// Represents the spec of a CustomJob.
class GoogleCloudAiplatformV1CustomJobSpec {
  /// The Cloud Storage location to store the output of this CustomJob or HyperparameterTuningJob. For HyperparameterTuningJob, the baseOutputDirectory of each child CustomJob backing a Trial is set to a subdirectory of name id under its parent HyperparameterTuningJob's baseOutputDirectory. The following Vertex AI environment variables will be passed to containers or python modules when this field is set: For CustomJob: * AIP_MODEL_DIR = `/model/` * AIP_CHECKPOINT_DIR = `/checkpoints/` * AIP_TENSORBOARD_LOG_DIR = `/logs/` For CustomJob backing a Trial of HyperparameterTuningJob: * AIP_MODEL_DIR = `//model/` * AIP_CHECKPOINT_DIR = `//checkpoints/` * AIP_TENSORBOARD_LOG_DIR = `//logs/`
  final pulumi.Input<GoogleCloudAiplatformV1GcsDestination>? baseOutputDirectory;
  /// Optional. Whether you want Vertex AI to enable access to the customized dashboard in training chief container. If set to `true`, you can access the dashboard at the URIs given by CustomJob.web_access_uris or Trial.web_access_uris (within HyperparameterTuningJob.trials).
  final pulumi.Input<bool>? enableDashboardAccess;
  /// Optional. Whether you want Vertex AI to enable [interactive shell access](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) to training containers. If set to `true`, you can access interactive shells at the URIs given by CustomJob.web_access_uris or Trial.web_access_uris (within HyperparameterTuningJob.trials).
  final pulumi.Input<bool>? enableWebAccess;
  /// Optional. The Experiment associated with this job. Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}`
  final pulumi.Input<String>? experiment;
  /// Optional. The Experiment Run associated with this job. Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}-{experiment-run-name}`
  final pulumi.Input<String>? experimentRun;
  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Job should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the job is not peered with any network.
  final pulumi.Input<String>? network;
  /// The ID of the location to store protected artifacts. e.g. us-central1. Populate only when the location is different than CustomJob location. List of supported locations: https://cloud.google.com/vertex-ai/docs/general/locations
  final pulumi.Input<String>? protectedArtifactLocationId;
  /// Optional. A list of names for the reserved ip ranges under the VPC network that can be used for this job. If set, we will deploy the job within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final pulumi.Input<List<String>>? reservedIpRanges;
  /// Scheduling options for a CustomJob.
  final pulumi.Input<GoogleCloudAiplatformV1Scheduling>? scheduling;
  /// Specifies the service account for workload run-as account. Users submitting jobs must have act-as permission on this run-as account. If unspecified, the [Vertex AI Custom Code Service Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents) for the CustomJob's project is used.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. The name of a Vertex AI Tensorboard resource to which this CustomJob will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  final pulumi.Input<String>? tensorboard;
  /// The spec of the worker pools including machine type and Docker image. All worker pools except the first one are optional and can be skipped by providing an empty value.
  final pulumi.Input<List<GoogleCloudAiplatformV1WorkerPoolSpec>> workerPoolSpecs;

  /// Creates a new [GoogleCloudAiplatformV1CustomJobSpec].
  /// [baseOutputDirectory] The Cloud Storage location to store the output of this CustomJob or HyperparameterTuningJob. For HyperparameterTuningJob, the baseOutputDirectory of each child CustomJob backing a Trial is set to a subdirectory of name id under its parent HyperparameterTuningJob's baseOutputDirectory. The following Vertex AI environment variables will be passed to containers or python modules when this field is set: For CustomJob: * AIP_MODEL_DIR = `/model/` * AIP_CHECKPOINT_DIR = `/checkpoints/` * AIP_TENSORBOARD_LOG_DIR = `/logs/` For CustomJob backing a Trial of HyperparameterTuningJob: * AIP_MODEL_DIR = `//model/` * AIP_CHECKPOINT_DIR = `//checkpoints/` * AIP_TENSORBOARD_LOG_DIR = `//logs/`
  /// [enableDashboardAccess] Optional. Whether you want Vertex AI to enable access to the customized dashboard in training chief container. If set to `true`, you can access the dashboard at the URIs given by CustomJob.web_access_uris or Trial.web_access_uris (within HyperparameterTuningJob.trials).
  /// [enableWebAccess] Optional. Whether you want Vertex AI to enable [interactive shell access](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) to training containers. If set to `true`, you can access interactive shells at the URIs given by CustomJob.web_access_uris or Trial.web_access_uris (within HyperparameterTuningJob.trials).
  /// [experiment] Optional. The Experiment associated with this job. Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}`
  /// [experimentRun] Optional. The Experiment Run associated with this job. Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}-{experiment-run-name}`
  /// [network] Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Job should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the job is not peered with any network.
  /// [protectedArtifactLocationId] The ID of the location to store protected artifacts. e.g. us-central1. Populate only when the location is different than CustomJob location. List of supported locations: https://cloud.google.com/vertex-ai/docs/general/locations
  /// [reservedIpRanges] Optional. A list of names for the reserved ip ranges under the VPC network that can be used for this job. If set, we will deploy the job within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  /// [scheduling] Scheduling options for a CustomJob.
  /// [serviceAccount] Specifies the service account for workload run-as account. Users submitting jobs must have act-as permission on this run-as account. If unspecified, the [Vertex AI Custom Code Service Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents) for the CustomJob's project is used.
  /// [tensorboard] Optional. The name of a Vertex AI Tensorboard resource to which this CustomJob will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  /// [workerPoolSpecs] The spec of the worker pools including machine type and Docker image. All worker pools except the first one are optional and can be skipped by providing an empty value.
  const GoogleCloudAiplatformV1CustomJobSpec({
    this.baseOutputDirectory,
    this.enableDashboardAccess,
    this.enableWebAccess,
    this.experiment,
    this.experimentRun,
    this.network,
    this.protectedArtifactLocationId,
    this.reservedIpRanges,
    this.scheduling,
    this.serviceAccount,
    this.tensorboard,
    required this.workerPoolSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseOutputDirectory': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1GcsDestination, Map<String, dynamic>>(baseOutputDirectory, (value) => value.toMap()),
      'enableDashboardAccess': ?enableDashboardAccess,
      'enableWebAccess': ?enableWebAccess,
      'experiment': ?experiment,
      'experimentRun': ?experimentRun,
      'network': ?network,
      'protectedArtifactLocationId': ?protectedArtifactLocationId,
      'reservedIpRanges': ?reservedIpRanges,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1Scheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'tensorboard': ?tensorboard,
      'workerPoolSpecs': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1WorkerPoolSpec>, List<Map<String, dynamic>>>(workerPoolSpecs, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1WorkerPoolSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudAiplatformV1CustomJobSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1CustomJobSpec(
      baseOutputDirectory: (() { final guardedValue = map['baseOutputDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1GcsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableDashboardAccess: (() { final guardedValue = map['enableDashboardAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableWebAccess: (() { final guardedValue = map['enableWebAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      experiment: (() { final guardedValue = map['experiment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentRun: (() { final guardedValue = map['experimentRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedArtifactLocationId: (() { final guardedValue = map['protectedArtifactLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1Scheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboard: (() { final guardedValue = map['tensorboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerPoolSpecs: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1WorkerPoolSpec>(map['workerPoolSpecs']!, (value) => GoogleCloudAiplatformV1WorkerPoolSpec.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
