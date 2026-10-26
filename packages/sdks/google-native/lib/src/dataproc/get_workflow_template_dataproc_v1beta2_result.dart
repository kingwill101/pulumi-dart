// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ordered_job_response_dataproc_v1beta2.dart';
import 'template_parameter_response_dataproc_v1beta2.dart';
import 'workflow_template_placement_response_dataproc_v1beta2.dart';

/// Result data returned by getWorkflowTemplate.
class GetWorkflowTemplateDataprocV1beta2Result {
  /// The time template was created.
  final String? createTime;
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  final String? dagTimeout;
  /// The Directed Acyclic Graph of Jobs to submit.
  final List<OrderedJobResponseDataprocV1beta2>? jobs;
  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  final Map<String, String>? labels;
  /// The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  final String? name;
  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final List<TemplateParameterResponseDataprocV1beta2>? parameters;
  /// WorkflowTemplate scheduling information.
  final WorkflowTemplatePlacementResponseDataprocV1beta2? placement;
  /// The time template was last updated.
  final String? updateTime;
  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  final int? version;

  /// Creates a new [GetWorkflowTemplateDataprocV1beta2Result].
  /// [createTime] The time template was created.
  /// [dagTimeout] Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  /// [jobs] The Directed Acyclic Graph of Jobs to submit.
  /// [labels] Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  /// [name] The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// [parameters] Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  /// [placement] WorkflowTemplate scheduling information.
  /// [updateTime] The time template was last updated.
  /// [version] Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  const GetWorkflowTemplateDataprocV1beta2Result({
    this.createTime,
    this.dagTimeout,
    this.jobs,
    this.labels,
    this.name,
    this.parameters,
    this.placement,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dagTimeout': ?dagTimeout,
      'jobs': ?(() { final guardedValue = jobs; if (guardedValue == null) return null; return pulumi.Input.encodeList<OrderedJobResponseDataprocV1beta2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<TemplateParameterResponseDataprocV1beta2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'placement': ?placement?.toMap(),
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory GetWorkflowTemplateDataprocV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateDataprocV1beta2Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dagTimeout: (() { final guardedValue = map['dagTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobs: (() { final guardedValue = map['jobs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrderedJobResponseDataprocV1beta2>(guardedValue, (value) => OrderedJobResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TemplateParameterResponseDataprocV1beta2>(guardedValue, (value) => TemplateParameterResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>())); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return WorkflowTemplatePlacementResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
