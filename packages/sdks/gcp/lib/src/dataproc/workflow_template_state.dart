// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_encryption_config.dart';
import 'workflow_template_job.dart';
import 'workflow_template_parameter.dart';
import 'workflow_template_placement.dart';

/// Input properties used for looking up and filtering WorkflowTemplate resources.
class WorkflowTemplateState {
  /// Output only. The time template was created.
  final pulumi.Input<String?>? createTime;
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  final pulumi.Input<String?>? dagTimeout;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Encryption settings for encrypting workflow template job arguments. Structure is documented below
  final pulumi.Input<WorkflowTemplateEncryptionConfig?>? encryptionConfig;
  /// (Required) The Directed Acyclic Graph of Jobs to submit. Structure is documented below
  final pulumi.Input<List<WorkflowTemplateJob>?>? jobs;
  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// (Required) The resource name of the workflow template, as described in https://docs.cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  final pulumi.Input<String?>? name;
  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final pulumi.Input<List<WorkflowTemplateParameter>?>? parameters;
  /// (Required) WorkflowTemplate scheduling information.
  final pulumi.Input<WorkflowTemplatePlacement?>? placement;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Output only. The time template was last updated.
  final pulumi.Input<String?>? updateTime;
  /// Output only. The current version of this workflow template.
  final pulumi.Input<int?>? version;

  /// Creates a new [WorkflowTemplateState].
  /// [createTime] Output only. The time template was created.
  /// [dagTimeout] Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  /// [encryptionConfig] Encryption settings for encrypting workflow template job arguments. Structure is documented below
  /// [jobs] (Required) The Directed Acyclic Graph of Jobs to submit. Structure is documented below
  /// [labels] Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  /// [location] The location for the resource
  /// [name] (Required) The resource name of the workflow template, as described in https://docs.cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  /// [parameters] Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  /// [placement] (Required) WorkflowTemplate scheduling information.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [updateTime] Output only. The time template was last updated.
  /// [version] Output only. The current version of this workflow template.
  const WorkflowTemplateState({
    this.createTime,
    this.dagTimeout,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dagTimeout: (() { final guardedValue = map['dagTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobs: (() { final guardedValue = map['jobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplateJob>(guardedValue, (value) => WorkflowTemplateJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplateParameter>(guardedValue, (value) => WorkflowTemplateParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
