// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_job_detail_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_job_runtime_config_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_template_metadata_response.dart';
import 'google_rpc_status_response.dart';

/// Result data returned by getPipelineJob.
class GetPipelineJobResult {
  /// Pipeline creation time.
  final String? createTime;
  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String? displayName;
  /// Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse? encryptionSpec;
  /// Pipeline end time.
  final String? endTime;
  /// The error that occurred during pipeline execution. Only populated when the pipeline's state is FAILED or CANCELLED.
  final GoogleRpcStatusResponse? error;
  /// The details of pipeline run. Not available in the list view.
  final GoogleCloudAiplatformV1PipelineJobDetailResponse? jobDetail;
  /// The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  final Map<String, String>? labels;
  /// The resource name of the PipelineJob.
  final String? name;
  /// The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  final String? network;
  /// The spec of the pipeline.
  final Map<String, String>? pipelineSpec;
  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final List<String>? reservedIpRanges;
  /// Runtime config of the pipeline.
  final GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse? runtimeConfig;
  /// The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  final String? scheduleName;
  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  final String? serviceAccount;
  /// Pipeline start time.
  final String? startTime;
  /// The detailed state of the job.
  final String? state;
  /// Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  final GoogleCloudAiplatformV1PipelineTemplateMetadataResponse? templateMetadata;
  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  final String? templateUri;
  /// Timestamp when this PipelineJob was most recently updated.
  final String? updateTime;

  /// Creates a new [GetPipelineJobResult].
  /// [createTime] Pipeline creation time.
  /// [displayName] The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  /// [endTime] Pipeline end time.
  /// [error] The error that occurred during pipeline execution. Only populated when the pipeline's state is FAILED or CANCELLED.
  /// [jobDetail] The details of pipeline run. Not available in the list view.
  /// [labels] The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  /// [name] The resource name of the PipelineJob.
  /// [network] The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  /// [pipelineSpec] The spec of the pipeline.
  /// [reservedIpRanges] A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  /// [runtimeConfig] Runtime config of the pipeline.
  /// [scheduleName] The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  /// [serviceAccount] The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  /// [startTime] Pipeline start time.
  /// [state] The detailed state of the job.
  /// [templateMetadata] Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  /// [templateUri] A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  /// [updateTime] Timestamp when this PipelineJob was most recently updated.
  const GetPipelineJobResult({
    this.createTime,
    this.displayName,
    this.encryptionSpec,
    this.endTime,
    this.error,
    this.jobDetail,
    this.labels,
    this.name,
    this.network,
    this.pipelineSpec,
    this.reservedIpRanges,
    this.runtimeConfig,
    this.scheduleName,
    this.serviceAccount,
    this.startTime,
    this.state,
    this.templateMetadata,
    this.templateUri,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'jobDetail': ?jobDetail?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'pipelineSpec': ?pipelineSpec,
      'reservedIpRanges': ?reservedIpRanges,
      'runtimeConfig': ?runtimeConfig?.toMap(),
      'scheduleName': ?scheduleName,
      'serviceAccount': ?serviceAccount,
      'startTime': ?startTime,
      'state': ?state,
      'templateMetadata': ?templateMetadata?.toMap(),
      'templateUri': ?templateUri,
      'updateTime': ?updateTime,
    };
  }

  factory GetPipelineJobResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineJobResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return GoogleRpcStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      jobDetail: (() { final guardedValue = map['jobDetail']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1PipelineJobDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pipelineSpec: (() { final guardedValue = map['pipelineSpec']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateMetadata: (() { final guardedValue = map['templateMetadata']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1PipelineTemplateMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      templateUri: (() { final guardedValue = map['templateUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
