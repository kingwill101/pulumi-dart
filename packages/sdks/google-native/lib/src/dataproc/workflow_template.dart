import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataproc_v1_workflow_template_encryption_config_response.dart';
import 'workflow_template_args.dart';
import 'workflow_template_placement_response.dart';

/// Creates new workflow template.
/// Auto-naming is currently not supported for this resource.
class WorkflowTemplate extends pulumi.CustomResource {
  /// The time template was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  late final pulumi.Output<String> dagTimeout;

  /// Optional. Encryption settings for the encrypting customer core content.
  late final pulumi.Output<
    GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse
  >
  encryptionConfig;

  /// The Directed Acyclic Graph of Jobs to submit.
  late final pulumi.Output<List<Map<String, dynamic>>> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  late final pulumi.Output<String> name;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  late final pulumi.Output<List<Map<String, dynamic>>> parameters;

  /// WorkflowTemplate scheduling information.
  late final pulumi.Output<WorkflowTemplatePlacementResponse> placement;
  late final pulumi.Output<String> project;

  /// The time template was last updated.
  late final pulumi.Output<String> updateTime;

  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  late final pulumi.Output<int> version;

  /// Creates a new [WorkflowTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowTemplate]. {@macro pulumi_dataproc_v1_workflow_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowTemplate(
    String name, {
    WorkflowTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataproc/v1:WorkflowTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dagTimeout = registerOutput<String>('dagTimeout');
    encryptionConfig =
        registerOutput<
          GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse
        >('encryptionConfig');
    jobs = registerOutput<List<Map<String, dynamic>>>('jobs');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    placement = registerOutput<WorkflowTemplatePlacementResponse>('placement');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<int>('version');
  }
}
