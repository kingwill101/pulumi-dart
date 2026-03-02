// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_encryption_config.dart';
import 'workflow_template_job.dart';
import 'workflow_template_parameter.dart';
import 'workflow_template_placement.dart';

/// Input properties used for looking up and filtering WorkflowTemplate resources.
class WorkflowTemplateState {
  /// Output only. The time template was created.
  final pulumi.Input<String>? createTime;
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  final pulumi.Input<String>? dagTimeout;
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. The encryption configuration for the workflow template.
  final pulumi.Input<WorkflowTemplateEncryptionConfig>? encryptionConfig;
  /// Required. The Directed Acyclic Graph of Jobs to submit.
  final pulumi.Input<List<WorkflowTemplateJob>>? jobs;
  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  final pulumi.Input<String>? name;
  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final pulumi.Input<List<WorkflowTemplateParameter>>? parameters;
  /// Required. WorkflowTemplate scheduling information.
  final pulumi.Input<WorkflowTemplatePlacement>? placement;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. The time template was last updated.
  final pulumi.Input<String>? updateTime;
  /// Output only. The current version of this workflow template.
  final pulumi.Input<int>? version;

  /// Creates a new [WorkflowTemplateState].
  /// [createTime] Output only. The time template was created.
  /// [dagTimeout] Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  /// [effectiveLabels] Optional.
  /// [encryptionConfig] Optional. The encryption configuration for the workflow template.
  /// [jobs] Required. The Directed Acyclic Graph of Jobs to submit.
  /// [labels] Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  /// [location] The location for the resource
  /// [name] Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  /// [parameters] Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  /// [placement] Required. WorkflowTemplate scheduling information.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [updateTime] Output only. The time template was last updated.
  /// [version] Output only. The current version of this workflow template.
  WorkflowTemplateState({
    this.createTime,
    this.dagTimeout,
    this.effectiveLabels,
    this.encryptionConfig,
    this.jobs,
    this.labels,
    this.location,
    this.name,
    this.parameters,
    this.placement,
    this.project,
    this.pulumiLabels,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dagTimeout': ?dagTimeout,
      'effectiveLabels': ?effectiveLabels,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'jobs': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplateJob>, List<Map<String, dynamic>>>(jobs, (value) => pulumi.Input.encodeList<WorkflowTemplateJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplateParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<WorkflowTemplateParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory WorkflowTemplateState.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dagTimeout: map['dagTimeout'] == null ? null : (map['dagTimeout']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (WorkflowTemplateEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      jobs: map['jobs'] == null ? null : (pulumi.Input.decodeList<WorkflowTemplateJob>(map['jobs']!, (value) => WorkflowTemplateJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<WorkflowTemplateParameter>(map['parameters']!, (value) => WorkflowTemplateParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      placement: map['placement'] == null ? null : (WorkflowTemplatePlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

