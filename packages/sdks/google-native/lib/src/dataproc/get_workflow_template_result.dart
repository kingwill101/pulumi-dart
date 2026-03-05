// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataproc_v1_workflow_template_encryption_config_response.dart';
import 'ordered_job_response.dart';
import 'template_parameter_response.dart';
import 'workflow_template_placement_response.dart';

/// Result data returned by getWorkflowTemplate.
class GetWorkflowTemplateResult {
  /// The time template was created.
  final String createTime;
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  final String dagTimeout;
  /// Optional. Encryption settings for the encrypting customer core content.
  final GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse encryptionConfig;
  /// The Directed Acyclic Graph of Jobs to submit.
  final List<OrderedJobResponse> jobs;
  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  final Map<String, String> labels;
  /// The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  final String name;
  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final List<TemplateParameterResponse> parameters;
  /// WorkflowTemplate scheduling information.
  final WorkflowTemplatePlacementResponse placement;
  /// The time template was last updated.
  final String updateTime;
  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  final int version;

  /// Creates a new [GetWorkflowTemplateResult].
  /// [createTime] The time template was created.
  /// [dagTimeout] Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  /// [encryptionConfig] Optional. Encryption settings for the encrypting customer core content.
  /// [jobs] The Directed Acyclic Graph of Jobs to submit.
  /// [labels] Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  /// [name] The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// [parameters] Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  /// [placement] WorkflowTemplate scheduling information.
  /// [updateTime] The time template was last updated.
  /// [version] Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  GetWorkflowTemplateResult({
    required this.createTime,
    required this.dagTimeout,
    required this.encryptionConfig,
    required this.jobs,
    required this.labels,
    required this.name,
    required this.parameters,
    required this.placement,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dagTimeout': dagTimeout,
      'encryptionConfig': encryptionConfig.toMap(),
      'jobs': pulumi.Input.encodeList<OrderedJobResponse, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'labels': labels,
      'name': name,
      'parameters': pulumi.Input.encodeList<TemplateParameterResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'placement': placement.toMap(),
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetWorkflowTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateResult(
      createTime: map['createTime'] as String,
      dagTimeout: map['dagTimeout'] as String,
      encryptionConfig: GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>()),
      jobs: pulumi.Input.decodeList<OrderedJobResponse>(map['jobs']!, (value) => OrderedJobResponse.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parameters: pulumi.Input.decodeList<TemplateParameterResponse>(map['parameters']!, (value) => TemplateParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      placement: WorkflowTemplatePlacementResponse.fromMap((map['placement']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      version: map['version'] as int,
    );
  }
}

