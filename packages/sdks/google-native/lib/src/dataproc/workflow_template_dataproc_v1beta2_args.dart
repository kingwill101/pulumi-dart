// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ordered_job_dataproc_v1beta2.dart';
import 'template_parameter_dataproc_v1beta2.dart';
import 'workflow_template_placement_dataproc_v1beta2.dart';

/// {@template pulumi_dataproc_v1beta2_workflow_template_dataproc_v1beta2_args_doc}
/// The set of arguments for WorkflowTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_workflow_template_dataproc_v1beta2_args_doc}
class WorkflowTemplateDataprocV1beta2Args {
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  final pulumi.Input<String>? dagTimeout;
  /// The template id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters..
  final pulumi.Input<String> id;
  /// The Directed Acyclic Graph of Jobs to submit.
  final pulumi.Input<List<OrderedJobDataprocV1beta2>> jobs;
  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final pulumi.Input<List<TemplateParameterDataprocV1beta2>>? parameters;
  /// WorkflowTemplate scheduling information.
  final pulumi.Input<WorkflowTemplatePlacementDataprocV1beta2> placement;
  final pulumi.Input<String>? project;
  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  final pulumi.Input<int>? version;

  /// Creates a new [WorkflowTemplateDataprocV1beta2Args].
  /// [dagTimeout] Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  /// [id] The template id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters..
  /// [jobs] The Directed Acyclic Graph of Jobs to submit.
  /// [labels] Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  /// [location] Optional.
  /// [parameters] Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  /// [placement] WorkflowTemplate scheduling information.
  /// [project] Optional.
  /// [version] Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  WorkflowTemplateDataprocV1beta2Args({
    this.dagTimeout,
    required this.id,
    required this.jobs,
    this.labels,
    this.location,
    this.parameters,
    required this.placement,
    this.project,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagTimeout': ?dagTimeout,
      'id': id,
      'jobs': pulumi.Input.mapInputValue<List<OrderedJobDataprocV1beta2>, List<Map<String, dynamic>>>(jobs, (value) => pulumi.Input.encodeList<OrderedJobDataprocV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<TemplateParameterDataprocV1beta2>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<TemplateParameterDataprocV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': pulumi.Input.mapInputValue<WorkflowTemplatePlacementDataprocV1beta2, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'project': ?project,
      'version': ?version,
    };
  }

  factory WorkflowTemplateDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateDataprocV1beta2Args(
      dagTimeout: map['dagTimeout'] == null ? null : (map['dagTimeout']! as String).input(),
      id: (map['id'] as String).input(),
      jobs: (pulumi.Input.decodeList<OrderedJobDataprocV1beta2>(map['jobs'], (value) => OrderedJobDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<TemplateParameterDataprocV1beta2>(map['parameters']!, (value) => TemplateParameterDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      placement: (WorkflowTemplatePlacementDataprocV1beta2.fromMap((map['placement'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

