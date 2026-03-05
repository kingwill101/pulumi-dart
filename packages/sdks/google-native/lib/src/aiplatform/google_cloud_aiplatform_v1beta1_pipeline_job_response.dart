// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_job_detail_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_job_runtime_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_template_metadata_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// An instance of a machine learning PipelineJob.
class GoogleCloudAiplatformV1beta1PipelineJobResponse {
  /// Pipeline creation time.
  final pulumi.Input<String> createTime;
  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpecResponse> encryptionSpec;
  /// Pipeline end time.
  final pulumi.Input<String> endTime;
  /// The error that occurred during pipeline execution. Only populated when the pipeline's state is FAILED or CANCELLED.
  final pulumi.Input<GoogleRpcStatusResponseAiplatformV1beta1> error;
  /// The details of pipeline run. Not available in the list view.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PipelineJobDetailResponse> jobDetail;
  /// The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  final pulumi.Input<Map<String, String>> labels;
  /// The resource name of the PipelineJob.
  final pulumi.Input<String> name;
  /// The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  final pulumi.Input<String> network;
  /// The spec of the pipeline.
  final pulumi.Input<Map<String, String>> pipelineSpec;
  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final pulumi.Input<List<String>> reservedIpRanges;
  /// Runtime config of the pipeline.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfigResponse> runtimeConfig;
  /// The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  final pulumi.Input<String> scheduleName;
  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  final pulumi.Input<String> serviceAccount;
  /// Pipeline start time.
  final pulumi.Input<String> startTime;
  /// The detailed state of the job.
  final pulumi.Input<String> state;
  /// Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse> templateMetadata;
  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  final pulumi.Input<String> templateUri;
  /// Timestamp when this PipelineJob was most recently updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineJobResponse].
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
  GoogleCloudAiplatformV1beta1PipelineJobResponse({
    required this.createTime,
    required this.displayName,
    required this.encryptionSpec,
    required this.endTime,
    required this.error,
    required this.jobDetail,
    required this.labels,
    required this.name,
    required this.network,
    required this.pipelineSpec,
    required this.reservedIpRanges,
    required this.runtimeConfig,
    required this.scheduleName,
    required this.serviceAccount,
    required this.startTime,
    required this.state,
    required this.templateMetadata,
    required this.templateUri,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'encryptionSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1EncryptionSpecResponse, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'endTime': endTime,
      'error': pulumi.Input.mapInputValue<GoogleRpcStatusResponseAiplatformV1beta1, Map<String, dynamic>>(error, (value) => value.toMap()),
      'jobDetail': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1PipelineJobDetailResponse, Map<String, dynamic>>(jobDetail, (value) => value.toMap()),
      'labels': labels,
      'name': name,
      'network': network,
      'pipelineSpec': pipelineSpec,
      'reservedIpRanges': reservedIpRanges,
      'runtimeConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfigResponse, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'scheduleName': scheduleName,
      'serviceAccount': serviceAccount,
      'startTime': startTime,
      'state': state,
      'templateMetadata': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse, Map<String, dynamic>>(templateMetadata, (value) => value.toMap()),
      'templateUri': templateUri,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudAiplatformV1beta1PipelineJobResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineJobResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      error: pulumi.Input.fromValue(GoogleRpcStatusResponseAiplatformV1beta1.fromMap((map['error']! as Map).cast<String, dynamic>())),
      jobDetail: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PipelineJobDetailResponse.fromMap((map['jobDetail']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      pipelineSpec: pulumi.Input.fromValue((map['pipelineSpec'] as Map).cast<String, String>()),
      reservedIpRanges: pulumi.Input.fromValue((map['reservedIpRanges'] as List).cast<String>()),
      runtimeConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfigResponse.fromMap((map['runtimeConfig']! as Map).cast<String, dynamic>())),
      scheduleName: pulumi.Input.fromValue(map['scheduleName'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      templateMetadata: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse.fromMap((map['templateMetadata']! as Map).cast<String, dynamic>())),
      templateUri: pulumi.Input.fromValue(map['templateUri'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

