// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_encryption_spec.dart';
import 'ai_pipeline_job_error.dart';
import 'ai_pipeline_job_job_detail.dart';
import 'ai_pipeline_job_psc_interface_config.dart';
import 'ai_pipeline_job_runtime_config.dart';
import 'ai_pipeline_job_template_metadata.dart';

/// Input properties used for looking up and filtering AiPipelineJob resources.
class AiPipelineJobState {
  /// (Output)
  /// Task create time.
  final pulumi.Input<String?>? createTime;
  /// The deletion policy for the pipeline job. Setting `FORCE` will cancel the pipeline
  /// job if it is in an active state before deleting it. Defaults to `DELETE`.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", Terraform will attempt to delete the pipeline job without
  /// cancelling it first, which will fail if the pipeline job is still in an active state.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Customer-managed encryption key options for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiPipelineJobEncryptionSpec?>? encryptionSpec;
  /// (Output)
  /// Task end time.
  final pulumi.Input<String?>? endTime;
  /// (Output)
  /// The error that occurred during task execution. Only populated when the task's state is FAILED or CANCELLED.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobError>?>? errors;
  /// The details of pipeline run. Not available in the list view.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobJobDetail>?>? jobDetails;
  /// The labels with user-defined metadata to organize PipelineJob.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// (Output)
  /// The resource name of the Context.
  final pulumi.Input<String?>? name;
  /// The full name of the Compute Engine network to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. Format is of the form `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  final pulumi.Input<String?>? network;
  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated.
  /// This value should be less than 128 characters, and valid characters are `/[a-z][0-9]-/`.
  final pulumi.Input<String?>? pipelineJobId;
  /// The spec of the pipeline. This is a JSON object that describes the pipeline.
  final pulumi.Input<String?>? pipelineSpec;
  /// Whether to do component level validations before job creation.
  final pulumi.Input<bool?>? preflightValidations;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Configuration for PSC-I for PipelineJob.
  /// Structure is documented below.
  final pulumi.Input<AiPipelineJobPscInterfaceConfig?>? pscInterfaceConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The region of the pipeline job. eg us-central1
  final pulumi.Input<String?>? region;
  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network.
  final pulumi.Input<List<String>?>? reservedIpRanges;
  /// Runtime config of the pipeline.
  /// Structure is documented below.
  final pulumi.Input<AiPipelineJobRuntimeConfig?>? runtimeConfig;
  /// The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  final pulumi.Input<String?>? scheduleName;
  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. Users starting the pipeline must have the iam.serviceAccounts.actAs permission on this service account.
  final pulumi.Input<String?>? serviceAccount;
  /// (Output)
  /// Task start time.
  final pulumi.Input<String?>? startTime;
  /// (Output)
  /// The detailed state of the task.
  final pulumi.Input<String?>? state;
  /// Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobTemplateMetadata>?>? templateMetadatas;
  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported.
  final pulumi.Input<String?>? templateUri;
  /// (Output)
  /// Timestamp when this Context was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiPipelineJobState].
  /// [createTime] (Output)
  /// [deletionPolicy] The deletion policy for the pipeline job. Setting `FORCE` will cancel the pipeline
  /// [displayName] The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Customer-managed encryption key options for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  /// [endTime] (Output)
  /// [errors] (Output)
  /// [jobDetails] The details of pipeline run. Not available in the list view.
  /// [labels] The labels with user-defined metadata to organize PipelineJob.
  /// [name] (Output)
  /// [network] The full name of the Compute Engine network to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. Format is of the form `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  /// [pipelineJobId] The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated.
  /// [pipelineSpec] The spec of the pipeline. This is a JSON object that describes the pipeline.
  /// [preflightValidations] Whether to do component level validations before job creation.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] Configuration for PSC-I for PipelineJob.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the pipeline job. eg us-central1
  /// [reservedIpRanges] A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network.
  /// [runtimeConfig] Runtime config of the pipeline.
  /// [scheduleName] The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  /// [serviceAccount] The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. Users starting the pipeline must have the iam.serviceAccounts.actAs permission on this service account.
  /// [startTime] (Output)
  /// [state] (Output)
  /// [templateMetadatas] Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  /// [templateUri] A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported.
  /// [updateTime] (Output)
  const AiPipelineJobState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.endTime,
    this.errors,
    this.jobDetails,
    this.labels,
    this.name,
    this.network,
    this.pipelineJobId,
    this.pipelineSpec,
    this.preflightValidations,
    this.project,
    this.pscInterfaceConfig,
    this.pulumiLabels,
    this.region,
    this.reservedIpRanges,
    this.runtimeConfig,
    this.scheduleName,
    this.serviceAccount,
    this.startTime,
    this.state,
    this.templateMetadatas,
    this.templateUri,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'endTime': ?endTime,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiPipelineJobError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobDetails': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobJobDetail>, List<Map<String, dynamic>>>(jobDetails, (value) => pulumi.Input.encodeList<AiPipelineJobJobDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'pipelineJobId': ?pipelineJobId,
      'pipelineSpec': ?pipelineSpec,
      'preflightValidations': ?preflightValidations,
      'project': ?project,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobPscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'reservedIpRanges': ?reservedIpRanges,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'scheduleName': ?scheduleName,
      'serviceAccount': ?serviceAccount,
      'startTime': ?startTime,
      'state': ?state,
      'templateMetadatas': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobTemplateMetadata>, List<Map<String, dynamic>>>(templateMetadatas, (value) => pulumi.Input.encodeList<AiPipelineJobTemplateMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateUri': ?templateUri,
      'updateTime': ?updateTime,
    };
  }

  factory AiPipelineJobState.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobError>(guardedValue, (value) => AiPipelineJobError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jobDetails: (() { final guardedValue = map['jobDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobJobDetail>(guardedValue, (value) => AiPipelineJobJobDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineJobId: (() { final guardedValue = map['pipelineJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineSpec: (() { final guardedValue = map['pipelineSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preflightValidations: (() { final guardedValue = map['preflightValidations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateMetadatas: (() { final guardedValue = map['templateMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobTemplateMetadata>(guardedValue, (value) => AiPipelineJobTemplateMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateUri: (() { final guardedValue = map['templateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
