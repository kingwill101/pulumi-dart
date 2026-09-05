import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_args.dart';
import 'task_execution_spec.dart';
import 'task_execution_status.dart';
import 'task_notebook.dart';
import 'task_spark.dart';
import 'task_state.dart';
import 'task_trigger_spec.dart';

/// A Dataplex task represents the work that you want Dataplex to do on a schedule. It encapsulates code, parameters, and the schedule.
///
///
/// To get more information about Task, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.lakes.tasks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataplex/docs)
///
/// ## Example Usage
///
/// ### Dataplex Task Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.dataplex.Lake("example", {
///     name: "tf-test-lake_67903",
///     location: "us-central1",
///     project: "my-project-name",
/// });
/// const exampleTask = new gcp.dataplex.Task("example", {
///     taskId: "tf-test-task_40816",
///     location: "us-central1",
///     lake: example.name,
///     description: "Test Task Basic",
///     displayName: "task-basic",
///     labels: {
///         count: "3",
///     },
///     triggerSpec: {
///         type: "RECURRING",
///         disabled: false,
///         maxRetries: 3,
///         startTime: "2023-10-02T15:01:23Z",
///         schedule: "1 * * * *",
///     },
///     executionSpec: {
///         serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///         project: "my-project-name",
///         maxJobExecutionLifetime: "100s",
///         kmsKey: "234jn2kjn42k3n423",
///     },
///     spark: {
///         pythonScriptFile: "gs://dataproc-examples/pyspark/hello-world/hello-world.py",
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.dataplex.Lake("example",
///     name="tf-test-lake_67903",
///     location="us-central1",
///     project="my-project-name")
/// example_task = gcp.dataplex.Task("example",
///     task_id="tf-test-task_40816",
///     location="us-central1",
///     lake=example.name,
///     description="Test Task Basic",
///     display_name="task-basic",
///     labels={
///         "count": "3",
///     },
///     trigger_spec={
///         "type": "RECURRING",
///         "disabled": False,
///         "max_retries": 3,
///         "start_time": "2023-10-02T15:01:23Z",
///         "schedule": "1 * * * *",
///     },
///     execution_spec={
///         "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
///         "project": "my-project-name",
///         "max_job_execution_lifetime": "100s",
///         "kms_key": "234jn2kjn42k3n423",
///     },
///     spark={
///         "python_script_file": "gs://dataproc-examples/pyspark/hello-world/hello-world.py",
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.DataPlex.Lake("example", new()
///     {
///         Name = "tf-test-lake_67903",
///         Location = "us-central1",
///         Project = "my-project-name",
///     });
///
///     var exampleTask = new Gcp.DataPlex.Task("example", new()
///     {
///         TaskId = "tf-test-task_40816",
///         Location = "us-central1",
///         Lake = example.Name,
///         Description = "Test Task Basic",
///         DisplayName = "task-basic",
///         Labels =
///         {
///             { "count", "3" },
///         },
///         TriggerSpec = new Gcp.DataPlex.Inputs.TaskTriggerSpecArgs
///         {
///             Type = "RECURRING",
///             Disabled = false,
///             MaxRetries = 3,
///             StartTime = "2023-10-02T15:01:23Z",
///             Schedule = "1 * * * *",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.TaskExecutionSpecArgs
///         {
///             ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///             Project = "my-project-name",
///             MaxJobExecutionLifetime = "100s",
///             KmsKey = "234jn2kjn42k3n423",
///         },
///         Spark = new Gcp.DataPlex.Inputs.TaskSparkArgs
///         {
///             PythonScriptFile = "gs://dataproc-examples/pyspark/hello-world/hello-world.py",
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := dataplex.NewLake(ctx, "example", &dataplex.LakeArgs{
/// 			Name:     pulumi.String("tf-test-lake_67903"),
/// 			Location: pulumi.String("us-central1"),
/// 			Project:  pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewTask(ctx, "example", &dataplex.TaskArgs{
/// 			TaskId:      pulumi.String("tf-test-task_40816"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Lake:        example.Name,
/// 			Description: pulumi.String("Test Task Basic"),
/// 			DisplayName: pulumi.String("task-basic"),
/// 			Labels: pulumi.StringMap{
/// 				"count": pulumi.String("3"),
/// 			},
/// 			TriggerSpec: &dataplex.TaskTriggerSpecArgs{
/// 				Type:       pulumi.String("RECURRING"),
/// 				Disabled:   pulumi.Bool(false),
/// 				MaxRetries: pulumi.Int(3),
/// 				StartTime:  pulumi.String("2023-10-02T15:01:23Z"),
/// 				Schedule:   pulumi.String("1 * * * *"),
/// 			},
/// 			ExecutionSpec: &dataplex.TaskExecutionSpecArgs{
/// 				ServiceAccount:          pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 				Project:                 pulumi.String("my-project-name"),
/// 				MaxJobExecutionLifetime: pulumi.String("100s"),
/// 				KmsKey:                  pulumi.String("234jn2kjn42k3n423"),
/// 			},
/// 			Spark: &dataplex.TaskSparkArgs{
/// 				PythonScriptFile: pulumi.String("gs://dataproc-examples/pyspark/hello-world/hello-world.py"),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_dataplex_lake" "example" {
///   name     = "tf-test-lake_67903"
///   location = "us-central1"
///   project  = "my-project-name"
/// }
/// resource "gcp_dataplex_task" "example" {
///   task_id      = "tf-test-task_40816"
///   location     = "us-central1"
///   lake         = gcp_dataplex_lake.example.name
///   description  = "Test Task Basic"
///   display_name = "task-basic"
///   labels = {
///     "count" = "3"
///   }
///   trigger_spec = {
///     type        = "RECURRING"
///     disabled    = false
///     max_retries = 3
///     start_time  = "2023-10-02T15:01:23Z"
///     schedule    = "1 * * * *"
///   }
///   execution_spec = {
///     service_account            ="${data.gcp_organizations_getproject.project.number}-compute@developer.gserviceaccount.com"
///     project                    = "my-project-name"
///     max_job_execution_lifetime = "100s"
///     kms_key                    = "234jn2kjn42k3n423"
///   }
///   spark = {
///     python_script_file = "gs://dataproc-examples/pyspark/hello-world/hello-world.py"
///   }
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.dataplex.Lake;
/// import com.pulumi.gcp.dataplex.LakeArgs;
/// import com.pulumi.gcp.dataplex.Task;
/// import com.pulumi.gcp.dataplex.TaskArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskTriggerSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskSparkArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new Lake("example", LakeArgs.builder()
///             .name("tf-test-lake_67903")
///             .location("us-central1")
///             .project("my-project-name")
///             .build());
///
///         var exampleTask = new Task("exampleTask", TaskArgs.builder()
///             .taskId("tf-test-task_40816")
///             .location("us-central1")
///             .lake(example.name())
///             .description("Test Task Basic")
///             .displayName("task-basic")
///             .labels(Map.of("count", "3"))
///             .triggerSpec(TaskTriggerSpecArgs.builder()
///                 .type("RECURRING")
///                 .disabled(false)
///                 .maxRetries(3)
///                 .startTime("2023-10-02T15:01:23Z")
///                 .schedule("1 * * * *")
///                 .build())
///             .executionSpec(TaskExecutionSpecArgs.builder()
///                 .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///                 .project("my-project-name")
///                 .maxJobExecutionLifetime("100s")
///                 .kmsKey("234jn2kjn42k3n423")
///                 .build())
///             .spark(TaskSparkArgs.builder()
///                 .pythonScriptFile("gs://dataproc-examples/pyspark/hello-world/hello-world.py")
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:dataplex:Lake
///     properties:
///       name: tf-test-lake_67903
///       location: us-central1
///       project: my-project-name
///   exampleTask:
///     type: gcp:dataplex:Task
///     name: example
///     properties:
///       taskId: tf-test-task_40816
///       location: us-central1
///       lake: ${example.name}
///       description: Test Task Basic
///       displayName: task-basic
///       labels:
///         count: '3'
///       triggerSpec:
///         type: RECURRING
///         disabled: false
///         maxRetries: 3
///         startTime: 2023-10-02T15:01:23Z
///         schedule: 1 * * * *
///       executionSpec:
///         serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///         project: my-project-name
///         maxJobExecutionLifetime: 100s
///         kmsKey: 234jn2kjn42k3n423
///       spark:
///         pythonScriptFile: gs://dataproc-examples/pyspark/hello-world/hello-world.py
///       project: my-project-name
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Dataplex Task Spark
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // VPC network
/// const _default = new gcp.compute.Network("default", {
///     name: "tf-test-workstation-cluster_94690",
///     autoCreateSubnetworks: true,
/// });
/// const project = gcp.organizations.getProject({});
/// const exampleSpark = new gcp.dataplex.Lake("example_spark", {
///     name: "tf-test-lake_29947",
///     location: "us-central1",
///     project: "my-project-name",
/// });
/// const exampleSparkTask = new gcp.dataplex.Task("example_spark", {
///     taskId: "tf-test-task_28257",
///     location: "us-central1",
///     lake: exampleSpark.name,
///     triggerSpec: {
///         type: "ON_DEMAND",
///     },
///     description: "task-spark-terraform",
///     executionSpec: {
///         serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///         args: {
///             TASK_ARGS: "--output_location,gs://spark-job/task-result, --output_format, json",
///         },
///     },
///     spark: {
///         infrastructureSpec: {
///             batch: {
///                 executorsCount: 2,
///                 maxExecutorsCount: 100,
///             },
///             containerImage: {
///                 image: "test-image",
///                 javaJars: ["test-java-jars.jar"],
///                 pythonPackages: ["gs://bucket-name/my/path/to/lib.tar.gz"],
///                 properties: {
///                     name: "wrench",
///                     mass: "1.3kg",
///                     count: "3",
///                 },
///             },
///             vpcNetwork: {
///                 networkTags: ["test-network-tag"],
///                 subNetwork: _default.id,
///             },
///         },
///         fileUris: ["gs://terrafrom-test/test.csv"],
///         archiveUris: ["gs://terraform-test/test.csv"],
///         sqlScript: "show databases",
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # VPC network
/// default = gcp.compute.Network("default",
///     name="tf-test-workstation-cluster_94690",
///     auto_create_subnetworks=True)
/// project = gcp.organizations.get_project()
/// example_spark = gcp.dataplex.Lake("example_spark",
///     name="tf-test-lake_29947",
///     location="us-central1",
///     project="my-project-name")
/// example_spark_task = gcp.dataplex.Task("example_spark",
///     task_id="tf-test-task_28257",
///     location="us-central1",
///     lake=example_spark.name,
///     trigger_spec={
///         "type": "ON_DEMAND",
///     },
///     description="task-spark-terraform",
///     execution_spec={
///         "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
///         "args": {
///             "TASK_ARGS": "--output_location,gs://spark-job/task-result, --output_format, json",
///         },
///     },
///     spark={
///         "infrastructure_spec": {
///             "batch": {
///                 "executors_count": 2,
///                 "max_executors_count": 100,
///             },
///             "container_image": {
///                 "image": "test-image",
///                 "java_jars": ["test-java-jars.jar"],
///                 "python_packages": ["gs://bucket-name/my/path/to/lib.tar.gz"],
///                 "properties": {
///                     "name": "wrench",
///                     "mass": "1.3kg",
///                     "count": "3",
///                 },
///             },
///             "vpc_network": {
///                 "network_tags": ["test-network-tag"],
///                 "sub_network": default.id,
///             },
///         },
///         "file_uris": ["gs://terrafrom-test/test.csv"],
///         "archive_uris": ["gs://terraform-test/test.csv"],
///         "sql_script": "show databases",
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // VPC network
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "tf-test-workstation-cluster_94690",
///         AutoCreateSubnetworks = true,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var exampleSpark = new Gcp.DataPlex.Lake("example_spark", new()
///     {
///         Name = "tf-test-lake_29947",
///         Location = "us-central1",
///         Project = "my-project-name",
///     });
///
///     var exampleSparkTask = new Gcp.DataPlex.Task("example_spark", new()
///     {
///         TaskId = "tf-test-task_28257",
///         Location = "us-central1",
///         Lake = exampleSpark.Name,
///         TriggerSpec = new Gcp.DataPlex.Inputs.TaskTriggerSpecArgs
///         {
///             Type = "ON_DEMAND",
///         },
///         Description = "task-spark-terraform",
///         ExecutionSpec = new Gcp.DataPlex.Inputs.TaskExecutionSpecArgs
///         {
///             ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///             Args =
///             {
///                 { "TASK_ARGS", "--output_location,gs://spark-job/task-result, --output_format, json" },
///             },
///         },
///         Spark = new Gcp.DataPlex.Inputs.TaskSparkArgs
///         {
///             InfrastructureSpec = new Gcp.DataPlex.Inputs.TaskSparkInfrastructureSpecArgs
///             {
///                 Batch = new Gcp.DataPlex.Inputs.TaskSparkInfrastructureSpecBatchArgs
///                 {
///                     ExecutorsCount = 2,
///                     MaxExecutorsCount = 100,
///                 },
///                 ContainerImage = new Gcp.DataPlex.Inputs.TaskSparkInfrastructureSpecContainerImageArgs
///                 {
///                     Image = "test-image",
///                     JavaJars = new[]
///                     {
///                         "test-java-jars.jar",
///                     },
///                     PythonPackages = new[]
///                     {
///                         "gs://bucket-name/my/path/to/lib.tar.gz",
///                     },
///                     Properties =
///                     {
///                         { "name", "wrench" },
///                         { "mass", "1.3kg" },
///                         { "count", "3" },
///                     },
///                 },
///                 VpcNetwork = new Gcp.DataPlex.Inputs.TaskSparkInfrastructureSpecVpcNetworkArgs
///                 {
///                     NetworkTags = new[]
///                     {
///                         "test-network-tag",
///                     },
///                     SubNetwork = @default.Id,
///                 },
///             },
///             FileUris = new[]
///             {
///                 "gs://terrafrom-test/test.csv",
///             },
///             ArchiveUris = new[]
///             {
///                 "gs://terraform-test/test.csv",
///             },
///             SqlScript = "show databases",
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// VPC network
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("tf-test-workstation-cluster_94690"),
/// 			AutoCreateSubnetworks: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpark, err := dataplex.NewLake(ctx, "example_spark", &dataplex.LakeArgs{
/// 			Name:     pulumi.String("tf-test-lake_29947"),
/// 			Location: pulumi.String("us-central1"),
/// 			Project:  pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewTask(ctx, "example_spark", &dataplex.TaskArgs{
/// 			TaskId:   pulumi.String("tf-test-task_28257"),
/// 			Location: pulumi.String("us-central1"),
/// 			Lake:     exampleSpark.Name,
/// 			TriggerSpec: &dataplex.TaskTriggerSpecArgs{
/// 				Type: pulumi.String("ON_DEMAND"),
/// 			},
/// 			Description: pulumi.String("task-spark-terraform"),
/// 			ExecutionSpec: &dataplex.TaskExecutionSpecArgs{
/// 				ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 				Args: pulumi.StringMap{
/// 					"TASK_ARGS": pulumi.String("--output_location,gs://spark-job/task-result, --output_format, json"),
/// 				},
/// 			},
/// 			Spark: &dataplex.TaskSparkArgs{
/// 				InfrastructureSpec: &dataplex.TaskSparkInfrastructureSpecArgs{
/// 					Batch: &dataplex.TaskSparkInfrastructureSpecBatchArgs{
/// 						ExecutorsCount:    pulumi.Int(2),
/// 						MaxExecutorsCount: pulumi.Int(100),
/// 					},
/// 					ContainerImage: &dataplex.TaskSparkInfrastructureSpecContainerImageArgs{
/// 						Image: pulumi.String("test-image"),
/// 						JavaJars: pulumi.StringArray{
/// 							pulumi.String("test-java-jars.jar"),
/// 						},
/// 						PythonPackages: pulumi.StringArray{
/// 							pulumi.String("gs://bucket-name/my/path/to/lib.tar.gz"),
/// 						},
/// 						Properties: pulumi.StringMap{
/// 							"name":  pulumi.String("wrench"),
/// 							"mass":  pulumi.String("1.3kg"),
/// 							"count": pulumi.String("3"),
/// 						},
/// 					},
/// 					VpcNetwork: &dataplex.TaskSparkInfrastructureSpecVpcNetworkArgs{
/// 						NetworkTags: pulumi.StringArray{
/// 							pulumi.String("test-network-tag"),
/// 						},
/// 						SubNetwork: _default.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 				FileUris: pulumi.StringArray{
/// 					pulumi.String("gs://terrafrom-test/test.csv"),
/// 				},
/// 				ArchiveUris: pulumi.StringArray{
/// 					pulumi.String("gs://terraform-test/test.csv"),
/// 				},
/// 				SqlScript: pulumi.String("show databases"),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// # VPC network
/// resource "gcp_compute_network" "default" {
///   name                    = "tf-test-workstation-cluster_94690"
///   auto_create_subnetworks = true
/// }
/// resource "gcp_dataplex_lake" "example_spark" {
///   name     = "tf-test-lake_29947"
///   location = "us-central1"
///   project  = "my-project-name"
/// }
/// resource "gcp_dataplex_task" "example_spark" {
///   task_id  = "tf-test-task_28257"
///   location = "us-central1"
///   lake     = gcp_dataplex_lake.example_spark.name
///   trigger_spec = {
///     type = "ON_DEMAND"
///   }
///   description = "task-spark-terraform"
///   execution_spec = {
///     service_account ="${data.gcp_organizations_getproject.project.number}-compute@developer.gserviceaccount.com"
///     args = {
///       "TASK_ARGS" = "--output_location,gs://spark-job/task-result, --output_format, json"
///     }
///   }
///   spark = {
///     infrastructure_spec = {
///       batch = {
///         executors_count     = 2
///         max_executors_count = 100
///       }
///       container_image = {
///         image           = "test-image"
///         java_jars       = ["test-java-jars.jar"]
///         python_packages = ["gs://bucket-name/my/path/to/lib.tar.gz"]
///         properties = {
///           "name"  = "wrench"
///           "mass"  = "1.3kg"
///           "count" = "3"
///         }
///       }
///       vpc_network = {
///         network_tags = ["test-network-tag"]
///         sub_network  = gcp_compute_network.default.id
///       }
///     }
///     file_uris    = ["gs://terrafrom-test/test.csv"]
///     archive_uris = ["gs://terraform-test/test.csv"]
///     sql_script   = "show databases"
///   }
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.dataplex.Lake;
/// import com.pulumi.gcp.dataplex.LakeArgs;
/// import com.pulumi.gcp.dataplex.Task;
/// import com.pulumi.gcp.dataplex.TaskArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskTriggerSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskSparkArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskSparkInfrastructureSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskSparkInfrastructureSpecBatchArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskSparkInfrastructureSpecContainerImageArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskSparkInfrastructureSpecVpcNetworkArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         // VPC network
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("tf-test-workstation-cluster_94690")
///             .autoCreateSubnetworks(true)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var exampleSpark = new Lake("exampleSpark", LakeArgs.builder()
///             .name("tf-test-lake_29947")
///             .location("us-central1")
///             .project("my-project-name")
///             .build());
///
///         var exampleSparkTask = new Task("exampleSparkTask", TaskArgs.builder()
///             .taskId("tf-test-task_28257")
///             .location("us-central1")
///             .lake(exampleSpark.name())
///             .triggerSpec(TaskTriggerSpecArgs.builder()
///                 .type("ON_DEMAND")
///                 .build())
///             .description("task-spark-terraform")
///             .executionSpec(TaskExecutionSpecArgs.builder()
///                 .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///                 .args(Map.of("TASK_ARGS", "--output_location,gs://spark-job/task-result, --output_format, json"))
///                 .build())
///             .spark(TaskSparkArgs.builder()
///                 .infrastructureSpec(TaskSparkInfrastructureSpecArgs.builder()
///                     .batch(TaskSparkInfrastructureSpecBatchArgs.builder()
///                         .executorsCount(2)
///                         .maxExecutorsCount(100)
///                         .build())
///                     .containerImage(TaskSparkInfrastructureSpecContainerImageArgs.builder()
///                         .image("test-image")
///                         .javaJars("test-java-jars.jar")
///                         .pythonPackages("gs://bucket-name/my/path/to/lib.tar.gz")
///                         .properties(Map.ofEntries(
///                             Map.entry("name", "wrench"),
///                             Map.entry("mass", "1.3kg"),
///                             Map.entry("count", "3")
///                         ))
///                         .build())
///                     .vpcNetwork(TaskSparkInfrastructureSpecVpcNetworkArgs.builder()
///                         .networkTags("test-network-tag")
///                         .subNetwork(default_.id())
///                         .build())
///                     .build())
///                 .fileUris("gs://terrafrom-test/test.csv")
///                 .archiveUris("gs://terraform-test/test.csv")
///                 .sqlScript("show databases")
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # VPC network
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: tf-test-workstation-cluster_94690
///       autoCreateSubnetworks: true
///   exampleSpark:
///     type: gcp:dataplex:Lake
///     name: example_spark
///     properties:
///       name: tf-test-lake_29947
///       location: us-central1
///       project: my-project-name
///   exampleSparkTask:
///     type: gcp:dataplex:Task
///     name: example_spark
///     properties:
///       taskId: tf-test-task_28257
///       location: us-central1
///       lake: ${exampleSpark.name}
///       triggerSpec:
///         type: ON_DEMAND
///       description: task-spark-terraform
///       executionSpec:
///         serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///         args:
///           TASK_ARGS: --output_location,gs://spark-job/task-result, --output_format, json
///       spark:
///         infrastructureSpec:
///           batch:
///             executorsCount: 2
///             maxExecutorsCount: 100
///           containerImage:
///             image: test-image
///             javaJars:
///               - test-java-jars.jar
///             pythonPackages:
///               - gs://bucket-name/my/path/to/lib.tar.gz
///             properties:
///               name: wrench
///               mass: 1.3kg
///               count: '3'
///           vpcNetwork:
///             networkTags:
///               - test-network-tag
///             subNetwork: ${default.id}
///         fileUris:
///           - gs://terrafrom-test/test.csv
///         archiveUris:
///           - gs://terraform-test/test.csv
///         sqlScript: show databases
///       project: my-project-name
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Dataplex Task Notebook
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // VPC network
/// const _default = new gcp.compute.Network("default", {
///     name: "tf-test-workstation-cluster_49175",
///     autoCreateSubnetworks: true,
/// });
/// const project = gcp.organizations.getProject({});
/// const exampleNotebook = new gcp.dataplex.Lake("example_notebook", {
///     name: "tf-test-lake_79411",
///     location: "us-central1",
///     project: "my-project-name",
/// });
/// const exampleNotebookTask = new gcp.dataplex.Task("example_notebook", {
///     taskId: "tf-test-task_2234",
///     location: "us-central1",
///     lake: exampleNotebook.name,
///     triggerSpec: {
///         type: "RECURRING",
///         schedule: "1 * * * *",
///     },
///     executionSpec: {
///         serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///         args: {
///             TASK_ARGS: "--output_location,gs://spark-job-jars-anrajitha/task-result, --output_format, json",
///         },
///     },
///     notebook: {
///         notebook: "gs://terraform-test/test-notebook.ipynb",
///         infrastructureSpec: {
///             batch: {
///                 executorsCount: 2,
///                 maxExecutorsCount: 100,
///             },
///             containerImage: {
///                 image: "test-image",
///                 javaJars: ["test-java-jars.jar"],
///                 pythonPackages: ["gs://bucket-name/my/path/to/lib.tar.gz"],
///                 properties: {
///                     name: "wrench",
///                     mass: "1.3kg",
///                     count: "3",
///                 },
///             },
///             vpcNetwork: {
///                 networkTags: ["test-network-tag"],
///                 network: _default.id,
///             },
///         },
///         fileUris: ["gs://terraform-test/test.csv"],
///         archiveUris: ["gs://terraform-test/test.csv"],
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # VPC network
/// default = gcp.compute.Network("default",
///     name="tf-test-workstation-cluster_49175",
///     auto_create_subnetworks=True)
/// project = gcp.organizations.get_project()
/// example_notebook = gcp.dataplex.Lake("example_notebook",
///     name="tf-test-lake_79411",
///     location="us-central1",
///     project="my-project-name")
/// example_notebook_task = gcp.dataplex.Task("example_notebook",
///     task_id="tf-test-task_2234",
///     location="us-central1",
///     lake=example_notebook.name,
///     trigger_spec={
///         "type": "RECURRING",
///         "schedule": "1 * * * *",
///     },
///     execution_spec={
///         "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
///         "args": {
///             "TASK_ARGS": "--output_location,gs://spark-job-jars-anrajitha/task-result, --output_format, json",
///         },
///     },
///     notebook={
///         "notebook": "gs://terraform-test/test-notebook.ipynb",
///         "infrastructure_spec": {
///             "batch": {
///                 "executors_count": 2,
///                 "max_executors_count": 100,
///             },
///             "container_image": {
///                 "image": "test-image",
///                 "java_jars": ["test-java-jars.jar"],
///                 "python_packages": ["gs://bucket-name/my/path/to/lib.tar.gz"],
///                 "properties": {
///                     "name": "wrench",
///                     "mass": "1.3kg",
///                     "count": "3",
///                 },
///             },
///             "vpc_network": {
///                 "network_tags": ["test-network-tag"],
///                 "network": default.id,
///             },
///         },
///         "file_uris": ["gs://terraform-test/test.csv"],
///         "archive_uris": ["gs://terraform-test/test.csv"],
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // VPC network
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "tf-test-workstation-cluster_49175",
///         AutoCreateSubnetworks = true,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var exampleNotebook = new Gcp.DataPlex.Lake("example_notebook", new()
///     {
///         Name = "tf-test-lake_79411",
///         Location = "us-central1",
///         Project = "my-project-name",
///     });
///
///     var exampleNotebookTask = new Gcp.DataPlex.Task("example_notebook", new()
///     {
///         TaskId = "tf-test-task_2234",
///         Location = "us-central1",
///         Lake = exampleNotebook.Name,
///         TriggerSpec = new Gcp.DataPlex.Inputs.TaskTriggerSpecArgs
///         {
///             Type = "RECURRING",
///             Schedule = "1 * * * *",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.TaskExecutionSpecArgs
///         {
///             ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///             Args =
///             {
///                 { "TASK_ARGS", "--output_location,gs://spark-job-jars-anrajitha/task-result, --output_format, json" },
///             },
///         },
///         Notebook = new Gcp.DataPlex.Inputs.TaskNotebookArgs
///         {
///             Notebook = "gs://terraform-test/test-notebook.ipynb",
///             InfrastructureSpec = new Gcp.DataPlex.Inputs.TaskNotebookInfrastructureSpecArgs
///             {
///                 Batch = new Gcp.DataPlex.Inputs.TaskNotebookInfrastructureSpecBatchArgs
///                 {
///                     ExecutorsCount = 2,
///                     MaxExecutorsCount = 100,
///                 },
///                 ContainerImage = new Gcp.DataPlex.Inputs.TaskNotebookInfrastructureSpecContainerImageArgs
///                 {
///                     Image = "test-image",
///                     JavaJars = new[]
///                     {
///                         "test-java-jars.jar",
///                     },
///                     PythonPackages = new[]
///                     {
///                         "gs://bucket-name/my/path/to/lib.tar.gz",
///                     },
///                     Properties =
///                     {
///                         { "name", "wrench" },
///                         { "mass", "1.3kg" },
///                         { "count", "3" },
///                     },
///                 },
///                 VpcNetwork = new Gcp.DataPlex.Inputs.TaskNotebookInfrastructureSpecVpcNetworkArgs
///                 {
///                     NetworkTags = new[]
///                     {
///                         "test-network-tag",
///                     },
///                     Network = @default.Id,
///                 },
///             },
///             FileUris = new[]
///             {
///                 "gs://terraform-test/test.csv",
///             },
///             ArchiveUris = new[]
///             {
///                 "gs://terraform-test/test.csv",
///             },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// VPC network
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("tf-test-workstation-cluster_49175"),
/// 			AutoCreateSubnetworks: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNotebook, err := dataplex.NewLake(ctx, "example_notebook", &dataplex.LakeArgs{
/// 			Name:     pulumi.String("tf-test-lake_79411"),
/// 			Location: pulumi.String("us-central1"),
/// 			Project:  pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewTask(ctx, "example_notebook", &dataplex.TaskArgs{
/// 			TaskId:   pulumi.String("tf-test-task_2234"),
/// 			Location: pulumi.String("us-central1"),
/// 			Lake:     exampleNotebook.Name,
/// 			TriggerSpec: &dataplex.TaskTriggerSpecArgs{
/// 				Type:     pulumi.String("RECURRING"),
/// 				Schedule: pulumi.String("1 * * * *"),
/// 			},
/// 			ExecutionSpec: &dataplex.TaskExecutionSpecArgs{
/// 				ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 				Args: pulumi.StringMap{
/// 					"TASK_ARGS": pulumi.String("--output_location,gs://spark-job-jars-anrajitha/task-result, --output_format, json"),
/// 				},
/// 			},
/// 			Notebook: &dataplex.TaskNotebookArgs{
/// 				Notebook: pulumi.String("gs://terraform-test/test-notebook.ipynb"),
/// 				InfrastructureSpec: &dataplex.TaskNotebookInfrastructureSpecArgs{
/// 					Batch: &dataplex.TaskNotebookInfrastructureSpecBatchArgs{
/// 						ExecutorsCount:    pulumi.Int(2),
/// 						MaxExecutorsCount: pulumi.Int(100),
/// 					},
/// 					ContainerImage: &dataplex.TaskNotebookInfrastructureSpecContainerImageArgs{
/// 						Image: pulumi.String("test-image"),
/// 						JavaJars: pulumi.StringArray{
/// 							pulumi.String("test-java-jars.jar"),
/// 						},
/// 						PythonPackages: pulumi.StringArray{
/// 							pulumi.String("gs://bucket-name/my/path/to/lib.tar.gz"),
/// 						},
/// 						Properties: pulumi.StringMap{
/// 							"name":  pulumi.String("wrench"),
/// 							"mass":  pulumi.String("1.3kg"),
/// 							"count": pulumi.String("3"),
/// 						},
/// 					},
/// 					VpcNetwork: &dataplex.TaskNotebookInfrastructureSpecVpcNetworkArgs{
/// 						NetworkTags: pulumi.StringArray{
/// 							pulumi.String("test-network-tag"),
/// 						},
/// 						Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 				FileUris: pulumi.StringArray{
/// 					pulumi.String("gs://terraform-test/test.csv"),
/// 				},
/// 				ArchiveUris: pulumi.StringArray{
/// 					pulumi.String("gs://terraform-test/test.csv"),
/// 				},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// # VPC network
/// resource "gcp_compute_network" "default" {
///   name                    = "tf-test-workstation-cluster_49175"
///   auto_create_subnetworks = true
/// }
/// resource "gcp_dataplex_lake" "example_notebook" {
///   name     = "tf-test-lake_79411"
///   location = "us-central1"
///   project  = "my-project-name"
/// }
/// resource "gcp_dataplex_task" "example_notebook" {
///   task_id  = "tf-test-task_2234"
///   location = "us-central1"
///   lake     = gcp_dataplex_lake.example_notebook.name
///   trigger_spec = {
///     type     = "RECURRING"
///     schedule = "1 * * * *"
///   }
///   execution_spec = {
///     service_account ="${data.gcp_organizations_getproject.project.number}-compute@developer.gserviceaccount.com"
///     args = {
///       "TASK_ARGS" = "--output_location,gs://spark-job-jars-anrajitha/task-result, --output_format, json"
///     }
///   }
///   notebook = {
///     notebook = "gs://terraform-test/test-notebook.ipynb"
///     infrastructure_spec = {
///       batch = {
///         executors_count     = 2
///         max_executors_count = 100
///       }
///       container_image = {
///         image           = "test-image"
///         java_jars       = ["test-java-jars.jar"]
///         python_packages = ["gs://bucket-name/my/path/to/lib.tar.gz"]
///         properties = {
///           "name"  = "wrench"
///           "mass"  = "1.3kg"
///           "count" = "3"
///         }
///       }
///       vpc_network = {
///         network_tags = ["test-network-tag"]
///         network      = gcp_compute_network.default.id
///       }
///     }
///     file_uris    = ["gs://terraform-test/test.csv"]
///     archive_uris = ["gs://terraform-test/test.csv"]
///   }
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.dataplex.Lake;
/// import com.pulumi.gcp.dataplex.LakeArgs;
/// import com.pulumi.gcp.dataplex.Task;
/// import com.pulumi.gcp.dataplex.TaskArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskTriggerSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskNotebookArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskNotebookInfrastructureSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskNotebookInfrastructureSpecBatchArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskNotebookInfrastructureSpecContainerImageArgs;
/// import com.pulumi.gcp.dataplex.inputs.TaskNotebookInfrastructureSpecVpcNetworkArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         // VPC network
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("tf-test-workstation-cluster_49175")
///             .autoCreateSubnetworks(true)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var exampleNotebook = new Lake("exampleNotebook", LakeArgs.builder()
///             .name("tf-test-lake_79411")
///             .location("us-central1")
///             .project("my-project-name")
///             .build());
///
///         var exampleNotebookTask = new Task("exampleNotebookTask", TaskArgs.builder()
///             .taskId("tf-test-task_2234")
///             .location("us-central1")
///             .lake(exampleNotebook.name())
///             .triggerSpec(TaskTriggerSpecArgs.builder()
///                 .type("RECURRING")
///                 .schedule("1 * * * *")
///                 .build())
///             .executionSpec(TaskExecutionSpecArgs.builder()
///                 .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///                 .args(Map.of("TASK_ARGS", "--output_location,gs://spark-job-jars-anrajitha/task-result, --output_format, json"))
///                 .build())
///             .notebook(TaskNotebookArgs.builder()
///                 .notebook("gs://terraform-test/test-notebook.ipynb")
///                 .infrastructureSpec(TaskNotebookInfrastructureSpecArgs.builder()
///                     .batch(TaskNotebookInfrastructureSpecBatchArgs.builder()
///                         .executorsCount(2)
///                         .maxExecutorsCount(100)
///                         .build())
///                     .containerImage(TaskNotebookInfrastructureSpecContainerImageArgs.builder()
///                         .image("test-image")
///                         .javaJars("test-java-jars.jar")
///                         .pythonPackages("gs://bucket-name/my/path/to/lib.tar.gz")
///                         .properties(Map.ofEntries(
///                             Map.entry("name", "wrench"),
///                             Map.entry("mass", "1.3kg"),
///                             Map.entry("count", "3")
///                         ))
///                         .build())
///                     .vpcNetwork(TaskNotebookInfrastructureSpecVpcNetworkArgs.builder()
///                         .networkTags("test-network-tag")
///                         .network(default_.id())
///                         .build())
///                     .build())
///                 .fileUris("gs://terraform-test/test.csv")
///                 .archiveUris("gs://terraform-test/test.csv")
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # VPC network
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: tf-test-workstation-cluster_49175
///       autoCreateSubnetworks: true
///   exampleNotebook:
///     type: gcp:dataplex:Lake
///     name: example_notebook
///     properties:
///       name: tf-test-lake_79411
///       location: us-central1
///       project: my-project-name
///   exampleNotebookTask:
///     type: gcp:dataplex:Task
///     name: example_notebook
///     properties:
///       taskId: tf-test-task_2234
///       location: us-central1
///       lake: ${exampleNotebook.name}
///       triggerSpec:
///         type: RECURRING
///         schedule: 1 * * * *
///       executionSpec:
///         serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///         args:
///           TASK_ARGS: --output_location,gs://spark-job-jars-anrajitha/task-result, --output_format, json
///       notebook:
///         notebook: gs://terraform-test/test-notebook.ipynb
///         infrastructureSpec:
///           batch:
///             executorsCount: 2
///             maxExecutorsCount: 100
///           containerImage:
///             image: test-image
///             javaJars:
///               - test-java-jars.jar
///             pythonPackages:
///               - gs://bucket-name/my/path/to/lib.tar.gz
///             properties:
///               name: wrench
///               mass: 1.3kg
///               count: '3'
///           vpcNetwork:
///             networkTags:
///               - test-network-tag
///             network: ${default.id}
///         fileUris:
///           - gs://terraform-test/test.csv
///         archiveUris:
///           - gs://terraform-test/test.csv
///       project: my-project-name
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Task can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}}`
/// * `{{project}}/{{location}}/{{lake}}/{{task_id}}`
/// * `{{location}}/{{lake}}/{{task_id}}`
///
///
/// When using the `pulumi import` command, Task can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/task:Task default projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}}
/// $ pulumi import gcp:dataplex/task:Task default {{project}}/{{location}}/{{lake}}/{{task_id}}
/// $ pulumi import gcp:dataplex/task:Task default {{location}}/{{lake}}/{{task_id}}
/// ```
class Task extends pulumi.CustomResource {
  /// The time when the task was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-provided description of the task.
  late final pulumi.Output<String?> description;
  /// User friendly display name.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Configuration for the cluster
  /// Structure is documented below.
  late final pulumi.Output<TaskExecutionSpec> executionSpec;
  /// Configuration for the cluster
  /// Structure is documented below.
  late final pulumi.Output<List<TaskExecutionStatus>> executionStatuses;
  /// User-defined labels for the task.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The lake in which the task will be created in.
  late final pulumi.Output<String?> lake;
  /// The location in which the task will be created in.
  late final pulumi.Output<String?> location;
  /// (Output)
  /// The relative resource name of the job, of the form: projects/{project_number}/locations/{locationId}/lakes/{lakeId}/tasks/{taskId}/jobs/{jobId}.
  late final pulumi.Output<String> name;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final pulumi.Output<TaskNotebook?> notebook;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final pulumi.Output<TaskSpark?> spark;
  /// (Output)
  /// Execution state for the job.
  late final pulumi.Output<String> state;
  /// The task Id of the task.
  late final pulumi.Output<String?> taskId;
  /// Configuration for the cluster
  /// Structure is documented below.
  late final pulumi.Output<TaskTriggerSpec> triggerSpec;
  /// (Output)
  /// System generated globally unique ID for the job.
  late final pulumi.Output<String> uid;
  /// (Output)
  /// Last update time of the status.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Task].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Task]. {@macro pulumi_dataplex_task_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Task(
    String name, {
    TaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/task:Task',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    executionSpec = registerOutput<TaskExecutionSpec>('executionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionStatuses = registerOutput<List<TaskExecutionStatus>>('executionStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskExecutionStatus>(guardedValue, (value) => TaskExecutionStatus.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lake = registerOutput<String?>('lake');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notebook = registerOutput<TaskNotebook?>('notebook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskNotebook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    spark = registerOutput<TaskSpark?>('spark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskSpark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    taskId = registerOutput<String?>('taskId');
    triggerSpec = registerOutput<TaskTriggerSpec>('triggerSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskTriggerSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Task] resource's state with the given [name] and [id].
  static Task get(
    String name,
    pulumi.Input<String> id, {
    TaskState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Task._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Task._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/task:Task',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    executionSpec = registerOutput<TaskExecutionSpec>('executionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionStatuses = registerOutput<List<TaskExecutionStatus>>('executionStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskExecutionStatus>(guardedValue, (value) => TaskExecutionStatus.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lake = registerOutput<String?>('lake');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notebook = registerOutput<TaskNotebook?>('notebook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskNotebook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    spark = registerOutput<TaskSpark?>('spark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskSpark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    taskId = registerOutput<String?>('taskId');
    triggerSpec = registerOutput<TaskTriggerSpec>('triggerSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskTriggerSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Task] resource.
  Task.reference(String urn)
    : super(
        'gcp:dataplex/task:Task',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    executionSpec = registerOutput<TaskExecutionSpec>('executionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionStatuses = registerOutput<List<TaskExecutionStatus>>('executionStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskExecutionStatus>(guardedValue, (value) => TaskExecutionStatus.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lake = registerOutput<String?>('lake');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notebook = registerOutput<TaskNotebook?>('notebook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskNotebook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    spark = registerOutput<TaskSpark?>('spark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskSpark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    taskId = registerOutput<String?>('taskId');
    triggerSpec = registerOutput<TaskTriggerSpec>('triggerSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskTriggerSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
