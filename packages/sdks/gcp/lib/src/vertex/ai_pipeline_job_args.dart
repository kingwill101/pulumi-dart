// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_encryption_spec.dart';
import 'ai_pipeline_job_psc_interface_config.dart';
import 'ai_pipeline_job_runtime_config.dart';

/// {@template pulumi_vertex_ai_pipeline_job_ai_pipeline_job_args_doc}
/// The set of arguments for AiPipelineJob.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_pipeline_job_ai_pipeline_job_args_doc}
class AiPipelineJobArgs {
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
  /// Customer-managed encryption key options for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiPipelineJobEncryptionSpec?>? encryptionSpec;
  /// The labels with user-defined metadata to organize PipelineJob.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
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
  /// The region of the pipeline job. eg us-central1
  final pulumi.Input<String?>? region;
  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network.
  final pulumi.Input<List<String>?>? reservedIpRanges;
  /// Runtime config of the pipeline.
  /// Structure is documented below.
  final pulumi.Input<AiPipelineJobRuntimeConfig?>? runtimeConfig;
  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. Users starting the pipeline must have the iam.serviceAccounts.actAs permission on this service account.
  final pulumi.Input<String?>? serviceAccount;
  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported.
  final pulumi.Input<String?>? templateUri;

  /// Creates a new [AiPipelineJobArgs].
  /// [deletionPolicy] The deletion policy for the pipeline job. Setting `FORCE` will cancel the pipeline
  /// [displayName] The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key options for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize PipelineJob.
  /// [network] The full name of the Compute Engine network to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. Format is of the form `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  /// [pipelineJobId] The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated.
  /// [pipelineSpec] The spec of the pipeline. This is a JSON object that describes the pipeline.
  /// [preflightValidations] Whether to do component level validations before job creation.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] Configuration for PSC-I for PipelineJob.
  /// [region] The region of the pipeline job. eg us-central1
  /// [reservedIpRanges] A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network.
  /// [runtimeConfig] Runtime config of the pipeline.
  /// [serviceAccount] The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. Users starting the pipeline must have the iam.serviceAccounts.actAs permission on this service account.
  /// [templateUri] A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported.
  const AiPipelineJobArgs({
    this.deletionPolicy,
    this.displayName,
    this.encryptionSpec,
    this.labels,
    this.network,
    this.pipelineJobId,
    this.pipelineSpec,
    this.preflightValidations,
    this.project,
    this.pscInterfaceConfig,
    this.region,
    this.reservedIpRanges,
    this.runtimeConfig,
    this.serviceAccount,
    this.templateUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'network': ?network,
      'pipelineJobId': ?pipelineJobId,
      'pipelineSpec': ?pipelineSpec,
      'preflightValidations': ?preflightValidations,
      'project': ?project,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobPscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'region': ?region,
      'reservedIpRanges': ?reservedIpRanges,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'templateUri': ?templateUri,
    };
  }

  factory AiPipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineJobId: (() { final guardedValue = map['pipelineJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineSpec: (() { final guardedValue = map['pipelineSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preflightValidations: (() { final guardedValue = map['preflightValidations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateUri: (() { final guardedValue = map['templateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
