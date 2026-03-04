// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_encryption_config.dart';
import 'workflow_template_job.dart';
import 'workflow_template_parameter.dart';
import 'workflow_template_placement.dart';

/// {@template pulumi_dataproc_workflow_template_workflow_template_args_doc}
/// The set of arguments for WorkflowTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_workflow_template_workflow_template_args_doc}
class WorkflowTemplateArgs {
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  final pulumi.Input<String>? dagTimeout;

  /// Optional. The encryption configuration for the workflow template.
  final pulumi.Input<WorkflowTemplateEncryptionConfig>? encryptionConfig;

  /// Required. The Directed Acyclic Graph of Jobs to submit.
  final pulumi.Input<List<WorkflowTemplateJob>> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  final pulumi.Input<String>? name;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final pulumi.Input<List<WorkflowTemplateParameter>>? parameters;

  /// Required. WorkflowTemplate scheduling information.
  final pulumi.Input<WorkflowTemplatePlacement> placement;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Output only. The current version of this workflow template.
  final pulumi.Input<int>? version;

  /// Creates a new [WorkflowTemplateArgs].
  /// [dagTimeout] Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  /// [encryptionConfig] Optional. The encryption configuration for the workflow template.
  /// [jobs] Required. The Directed Acyclic Graph of Jobs to submit.
  /// [labels] Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  /// [location] The location for the resource
  /// [name] Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  /// [parameters] Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  /// [placement] Required. WorkflowTemplate scheduling information.
  /// [project] The project for the resource
  /// [version] Output only. The current version of this workflow template.
  WorkflowTemplateArgs({
    this.dagTimeout,
    this.encryptionConfig,
    required this.jobs,
    this.labels,
    required this.location,
    this.name,
    this.parameters,
    required this.placement,
    this.project,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagTimeout': ?dagTimeout,
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowTemplateEncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'jobs':
          pulumi.Input.mapInputValue<
            List<WorkflowTemplateJob>,
            List<Map<String, dynamic>>
          >(
            jobs,
            (value) =>
                pulumi.Input.encodeList<
                  WorkflowTemplateJob,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkflowTemplateParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  WorkflowTemplateParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'placement':
          pulumi.Input.mapInputValue<
            WorkflowTemplatePlacement,
            Map<String, dynamic>
          >(placement, (value) => value.toMap()),
      'project': ?project,
      'version': ?version,
    };
  }

  factory WorkflowTemplateArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateArgs(
      dagTimeout: (() {
        final guardedValue = map['dagTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionConfig: (() {
        final guardedValue = map['encryptionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowTemplateEncryptionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jobs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<WorkflowTemplateJob>(
          map['jobs']!,
          (value) => WorkflowTemplateJob.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkflowTemplateParameter>(
            guardedValue,
            (value) => WorkflowTemplateParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      placement: pulumi.Input.fromValue(
        WorkflowTemplatePlacement.fromMap(
          (map['placement']! as Map).cast<String, dynamic>(),
        ),
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
