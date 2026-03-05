import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_args.dart';
import 'workflow_template_encryption_config.dart';
import 'workflow_template_placement.dart';
import 'workflow_template_state.dart';

/// A Workflow Template is a reusable workflow configuration. It defines a graph of jobs with information on where to run those jobs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template = new gcp.dataproc.WorkflowTemplate("template", {
///     name: "template-example",
///     location: "us-central1",
///     placement: {
///         managedCluster: {
///             clusterName: "my-cluster",
///             config: {
///                 gceClusterConfig: {
///                     zone: "us-central1-a",
///                     tags: [
///                         "foo",
///                         "bar",
///                     ],
///                 },
///                 masterConfig: {
///                     numInstances: 1,
///                     machineType: "n1-standard-1",
///                     diskConfig: {
///                         bootDiskType: "pd-ssd",
///                         bootDiskSizeGb: 15,
///                     },
///                 },
///                 workerConfig: {
///                     numInstances: 3,
///                     machineType: "n1-standard-2",
///                     diskConfig: {
///                         bootDiskSizeGb: 10,
///                         numLocalSsds: 2,
///                     },
///                 },
///                 secondaryWorkerConfig: {
///                     numInstances: 2,
///                 },
///                 softwareConfig: {
///                     imageVersion: "2.0.35-debian10",
///                 },
///             },
///         },
///     },
///     jobs: [
///         {
///             stepId: "someJob",
///             sparkJob: {
///                 mainClass: "SomeClass",
///             },
///         },
///         {
///             stepId: "otherJob",
///             prerequisiteStepIds: ["someJob"],
///             prestoJob: {
///                 queryFileUri: "someuri",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template = gcp.dataproc.WorkflowTemplate("template",
///     name="template-example",
///     location="us-central1",
///     placement={
///         "managed_cluster": {
///             "cluster_name": "my-cluster",
///             "config": {
///                 "gce_cluster_config": {
///                     "zone": "us-central1-a",
///                     "tags": [
///                         "foo",
///                         "bar",
///                     ],
///                 },
///                 "master_config": {
///                     "num_instances": 1,
///                     "machine_type": "n1-standard-1",
///                     "disk_config": {
///                         "boot_disk_type": "pd-ssd",
///                         "boot_disk_size_gb": 15,
///                     },
///                 },
///                 "worker_config": {
///                     "num_instances": 3,
///                     "machine_type": "n1-standard-2",
///                     "disk_config": {
///                         "boot_disk_size_gb": 10,
///                         "num_local_ssds": 2,
///                     },
///                 },
///                 "secondary_worker_config": {
///                     "num_instances": 2,
///                 },
///                 "software_config": {
///                     "image_version": "2.0.35-debian10",
///                 },
///             },
///         },
///     },
///     jobs=[
///         {
///             "step_id": "someJob",
///             "spark_job": {
///                 "main_class": "SomeClass",
///             },
///         },
///         {
///             "step_id": "otherJob",
///             "prerequisite_step_ids": ["someJob"],
///             "presto_job": {
///                 "query_file_uri": "someuri",
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template = new Gcp.Dataproc.WorkflowTemplate("template", new()
///     {
///         Name = "template-example",
///         Location = "us-central1",
///         Placement = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementArgs
///         {
///             ManagedCluster = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterArgs
///             {
///                 ClusterName = "my-cluster",
///                 Config = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigArgs
///                 {
///                     GceClusterConfig = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigArgs
///                     {
///                         Zone = "us-central1-a",
///                         Tags = new[]
///                         {
///                             "foo",
///                             "bar",
///                         },
///                     },
///                     MasterConfig = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigMasterConfigArgs
///                     {
///                         NumInstances = 1,
///                         MachineType = "n1-standard-1",
///                         DiskConfig = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigArgs
///                         {
///                             BootDiskType = "pd-ssd",
///                             BootDiskSizeGb = 15,
///                         },
///                     },
///                     WorkerConfig = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigWorkerConfigArgs
///                     {
///                         NumInstances = 3,
///                         MachineType = "n1-standard-2",
///                         DiskConfig = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfigArgs
///                         {
///                             BootDiskSizeGb = 10,
///                             NumLocalSsds = 2,
///                         },
///                     },
///                     SecondaryWorkerConfig = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigArgs
///                     {
///                         NumInstances = 2,
///                     },
///                     SoftwareConfig = new Gcp.Dataproc.Inputs.WorkflowTemplatePlacementManagedClusterConfigSoftwareConfigArgs
///                     {
///                         ImageVersion = "2.0.35-debian10",
///                     },
///                 },
///             },
///         },
///         Jobs = new[]
///         {
///             new Gcp.Dataproc.Inputs.WorkflowTemplateJobArgs
///             {
///                 StepId = "someJob",
///                 SparkJob = new Gcp.Dataproc.Inputs.WorkflowTemplateJobSparkJobArgs
///                 {
///                     MainClass = "SomeClass",
///                 },
///             },
///             new Gcp.Dataproc.Inputs.WorkflowTemplateJobArgs
///             {
///                 StepId = "otherJob",
///                 PrerequisiteStepIds = new[]
///                 {
///                     "someJob",
///                 },
///                 PrestoJob = new Gcp.Dataproc.Inputs.WorkflowTemplateJobPrestoJobArgs
///                 {
///                     QueryFileUri = "someuri",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewWorkflowTemplate(ctx, "template", &dataproc.WorkflowTemplateArgs{
/// 			Name:     pulumi.String("template-example"),
/// 			Location: pulumi.String("us-central1"),
/// 			Placement: &dataproc.WorkflowTemplatePlacementArgs{
/// 				ManagedCluster: &dataproc.WorkflowTemplatePlacementManagedClusterArgs{
/// 					ClusterName: pulumi.String("my-cluster"),
/// 					Config: &dataproc.WorkflowTemplatePlacementManagedClusterConfigArgs{
/// 						GceClusterConfig: &dataproc.WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigArgs{
/// 							Zone: pulumi.String("us-central1-a"),
/// 							Tags: pulumi.StringArray{
/// 								pulumi.String("foo"),
/// 								pulumi.String("bar"),
/// 							},
/// 						},
/// 						MasterConfig: &dataproc.WorkflowTemplatePlacementManagedClusterConfigMasterConfigArgs{
/// 							NumInstances: pulumi.Int(1),
/// 							MachineType:  pulumi.String("n1-standard-1"),
/// 							DiskConfig: &dataproc.WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigArgs{
/// 								BootDiskType:   pulumi.String("pd-ssd"),
/// 								BootDiskSizeGb: pulumi.Int(15),
/// 							},
/// 						},
/// 						WorkerConfig: &dataproc.WorkflowTemplatePlacementManagedClusterConfigWorkerConfigArgs{
/// 							NumInstances: pulumi.Int(3),
/// 							MachineType:  pulumi.String("n1-standard-2"),
/// 							DiskConfig: &dataproc.WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfigArgs{
/// 								BootDiskSizeGb: pulumi.Int(10),
/// 								NumLocalSsds:   pulumi.Int(2),
/// 							},
/// 						},
/// 						SecondaryWorkerConfig: &dataproc.WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigArgs{
/// 							NumInstances: pulumi.Int(2),
/// 						},
/// 						SoftwareConfig: &dataproc.WorkflowTemplatePlacementManagedClusterConfigSoftwareConfigArgs{
/// 							ImageVersion: pulumi.String("2.0.35-debian10"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Jobs: dataproc.WorkflowTemplateJobArray{
/// 				&dataproc.WorkflowTemplateJobArgs{
/// 					StepId: pulumi.String("someJob"),
/// 					SparkJob: &dataproc.WorkflowTemplateJobSparkJobArgs{
/// 						MainClass: pulumi.String("SomeClass"),
/// 					},
/// 				},
/// 				&dataproc.WorkflowTemplateJobArgs{
/// 					StepId: pulumi.String("otherJob"),
/// 					PrerequisiteStepIds: pulumi.StringArray{
/// 						pulumi.String("someJob"),
/// 					},
/// 					PrestoJob: &dataproc.WorkflowTemplateJobPrestoJobArgs{
/// 						QueryFileUri: pulumi.String("someuri"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.WorkflowTemplate;
/// import com.pulumi.gcp.dataproc.WorkflowTemplateArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigMasterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigWorkerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplatePlacementManagedClusterConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplateJobArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplateJobSparkJobArgs;
/// import com.pulumi.gcp.dataproc.inputs.WorkflowTemplateJobPrestoJobArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var template = new WorkflowTemplate("template", WorkflowTemplateArgs.builder()
///             .name("template-example")
///             .location("us-central1")
///             .placement(WorkflowTemplatePlacementArgs.builder()
///                 .managedCluster(WorkflowTemplatePlacementManagedClusterArgs.builder()
///                     .clusterName("my-cluster")
///                     .config(WorkflowTemplatePlacementManagedClusterConfigArgs.builder()
///                         .gceClusterConfig(WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigArgs.builder()
///                             .zone("us-central1-a")
///                             .tags(
///                                 "foo",
///                                 "bar")
///                             .build())
///                         .masterConfig(WorkflowTemplatePlacementManagedClusterConfigMasterConfigArgs.builder()
///                             .numInstances(1)
///                             .machineType("n1-standard-1")
///                             .diskConfig(WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigArgs.builder()
///                                 .bootDiskType("pd-ssd")
///                                 .bootDiskSizeGb(15)
///                                 .build())
///                             .build())
///                         .workerConfig(WorkflowTemplatePlacementManagedClusterConfigWorkerConfigArgs.builder()
///                             .numInstances(3)
///                             .machineType("n1-standard-2")
///                             .diskConfig(WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfigArgs.builder()
///                                 .bootDiskSizeGb(10)
///                                 .numLocalSsds(2)
///                                 .build())
///                             .build())
///                         .secondaryWorkerConfig(WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigArgs.builder()
///                             .numInstances(2)
///                             .build())
///                         .softwareConfig(WorkflowTemplatePlacementManagedClusterConfigSoftwareConfigArgs.builder()
///                             .imageVersion("2.0.35-debian10")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .jobs(
///                 WorkflowTemplateJobArgs.builder()
///                     .stepId("someJob")
///                     .sparkJob(WorkflowTemplateJobSparkJobArgs.builder()
///                         .mainClass("SomeClass")
///                         .build())
///                     .build(),
///                 WorkflowTemplateJobArgs.builder()
///                     .stepId("otherJob")
///                     .prerequisiteStepIds("someJob")
///                     .prestoJob(WorkflowTemplateJobPrestoJobArgs.builder()
///                         .queryFileUri("someuri")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template:
///     type: gcp:dataproc:WorkflowTemplate
///     properties:
///       name: template-example
///       location: us-central1
///       placement:
///         managedCluster:
///           clusterName: my-cluster
///           config:
///             gceClusterConfig:
///               zone: us-central1-a
///               tags:
///                 - foo
///                 - bar
///             masterConfig:
///               numInstances: 1
///               machineType: n1-standard-1
///               diskConfig:
///                 bootDiskType: pd-ssd
///                 bootDiskSizeGb: 15
///             workerConfig:
///               numInstances: 3
///               machineType: n1-standard-2
///               diskConfig:
///                 bootDiskSizeGb: 10
///                 numLocalSsds: 2
///             secondaryWorkerConfig:
///               numInstances: 2
///             softwareConfig:
///               imageVersion: 2.0.35-debian10
///       jobs:
///         - stepId: someJob
///           sparkJob:
///             mainClass: SomeClass
///         - stepId: otherJob
///           prerequisiteStepIds:
///             - someJob
///           prestoJob:
///             queryFileUri: someuri
/// ```
///
///
/// ## Import
///
/// WorkflowTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workflowTemplates/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, WorkflowTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/workflowTemplate:WorkflowTemplate default projects/{{project}}/locations/{{location}}/workflowTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/workflowTemplate:WorkflowTemplate default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/workflowTemplate:WorkflowTemplate default {{location}}/{{name}}
/// ```
class WorkflowTemplate extends pulumi.CustomResource {
  /// Output only. The time template was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  late final pulumi.Output<String?> dagTimeout;
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. The encryption configuration for the workflow template.
  late final pulumi.Output<WorkflowTemplateEncryptionConfig?> encryptionConfig;
  /// Required. The Directed Acyclic Graph of Jobs to submit.
  late final pulumi.Output<List<Map<String, dynamic>>> jobs;
  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  late final pulumi.Output<String> name;
  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// Required. WorkflowTemplate scheduling information.
  late final pulumi.Output<WorkflowTemplatePlacement> placement;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. The time template was last updated.
  late final pulumi.Output<String> updateTime;
  /// Output only. The current version of this workflow template.
  late final pulumi.Output<int> version;

  /// Creates a new [WorkflowTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowTemplate]. {@macro pulumi_dataproc_workflow_template_workflow_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowTemplate(
    String name, {
    WorkflowTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/workflowTemplate:WorkflowTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dagTimeout = registerOutput<String?>('dagTimeout');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionConfig = registerOutput<WorkflowTemplateEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowTemplateEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobs = registerOutput<List<Map<String, dynamic>>>('jobs');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    placement = registerOutput<WorkflowTemplatePlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowTemplatePlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [WorkflowTemplate] resource's state with the given [name] and [id].
  static WorkflowTemplate get(
    String name,
    pulumi.Input<String> id, {
    WorkflowTemplateState? state,
  }) {
    return WorkflowTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkflowTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/workflowTemplate:WorkflowTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dagTimeout = registerOutput<String?>('dagTimeout');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionConfig = registerOutput<WorkflowTemplateEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowTemplateEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobs = registerOutput<List<Map<String, dynamic>>>('jobs');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    placement = registerOutput<WorkflowTemplatePlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowTemplatePlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<int>('version');
  }
}
