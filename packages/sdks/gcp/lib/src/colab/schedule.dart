import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'schedule_create_notebook_execution_job_request.dart';
import 'schedule_create_pipeline_job_request.dart';
import 'schedule_last_scheduled_run_response.dart';
import 'schedule_state.dart';

/// 'Colab Enterprise Notebook Execution Schedules.'
///
///
/// To get more information about Schedule, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.schedules)
/// * How-to Guides
/// * [Schedule a notebook run](https://cloud.google.com/colab/docs/schedule-notebook-run)
///
/// ## Example Usage
///
/// ### Colab Schedule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
///     name: "runtime-template",
///     displayName: "Runtime template",
///     location: "us-central1",
///     machineSpec: {
///         machineType: "e2-standard-4",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
/// });
/// const outputBucket = new gcp.storage.Bucket("output_bucket", {
///     name: "my_bucket",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const notebook = new gcp.storage.BucketObject("notebook", {
///     name: "hello_world.ipynb",
///     bucket: outputBucket.name,
///     content: `    {
///       \\"cells\\": [
///         {
///           \\"cell_type\\": \\"code\\",
///           \\"execution_count\\": null,
///           \\"metadata\\": {},
///           \\"outputs\\": [],
///           \\"source\\": [
///             \\"print(\\\\\\"Hello, World!\\\\\\")\\"
///           ]
///         }
///       ],
///       \\"metadata\\": {
///         \\"kernelspec\\": {
///           \\"display_name\\": \\"Python 3\\",
///           \\"language\\": \\"python\\",
///           \\"name\\": \\"python3\\"
///         },
///         \\"language_info\\": {
///           \\"codemirror_mode\\": {
///             \\"name\\": \\"ipython\\",
///             \\"version\\": 3
///           },
///           \\"file_extension\\": \\".py\\",
///           \\"mimetype\\": \\"text/x-python\\",
///           \\"name\\": \\"python\\",
///           \\"nbconvert_exporter\\": \\"python\\",
///           \\"pygments_lexer\\": \\"ipython3\\",
///           \\"version\\": \\"3.8.5\\"
///         }
///       },
///       \\"nbformat\\": 4,
///       \\"nbformat_minor\\": 4
///     }
/// `,
/// });
/// const schedule = new gcp.colab.Schedule("schedule", {
///     displayName: "basic-schedule",
///     location: "us-west1",
///     maxConcurrentRunCount: "2",
///     cron: "TZ=America/Los_Angeles * * * * *",
///     createNotebookExecutionJobRequest: {
///         notebookExecutionJob: {
///             displayName: "Notebook execution",
///             gcsNotebookSource: {
///                 uri: pulumi.interpolate`gs://${notebook.bucket}/${notebook.name}`,
///                 generation: notebook.generation.apply(x =>String(x)),
///             },
///             notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
///             gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
///             serviceAccount: "my@service-account.com",
///         },
///     },
/// }, {
///     dependsOn: [
///         myRuntimeTemplate,
///         outputBucket,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
///     name="runtime-template",
///     display_name="Runtime template",
///     location="us-central1",
///     machine_spec={
///         "machine_type": "e2-standard-4",
///     },
///     network_spec={
///         "enable_internet_access": True,
///     })
/// output_bucket = gcp.storage.Bucket("output_bucket",
///     name="my_bucket",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// notebook = gcp.storage.BucketObject("notebook",
///     name="hello_world.ipynb",
///     bucket=output_bucket.name,
///     content="""    {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
/// """)
/// schedule = gcp.colab.Schedule("schedule",
///     display_name="basic-schedule",
///     location="us-west1",
///     max_concurrent_run_count="2",
///     cron="TZ=America/Los_Angeles * * * * *",
///     create_notebook_execution_job_request={
///         "notebook_execution_job": {
///             "display_name": "Notebook execution",
///             "gcs_notebook_source": {
///                 "uri": pulumi.Output.all(
///                     bucket=notebook.bucket,
///                     name=notebook.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ,
///                 "generation": notebook.generation.apply(lambda x: str(x)),
///             },
///             "notebook_runtime_template_resource_name": pulumi.Output.all(
///                 project=my_runtime_template.project,
///                 location=my_runtime_template.location,
///                 name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
///             "gcs_output_uri": output_bucket.name.apply(lambda name: f"gs://{name}"),
///             "service_account": "my@service-account.com",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             my_runtime_template,
///             output_bucket,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
///     {
///         Name = "runtime-template",
///         DisplayName = "Runtime template",
///         Location = "us-central1",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "e2-standard-4",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///     });
///
///     var outputBucket = new Gcp.Storage.Bucket("output_bucket", new()
///     {
///         Name = "my_bucket",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var notebook = new Gcp.Storage.BucketObject("notebook", new()
///     {
///         Name = "hello_world.ipynb",
///         Bucket = outputBucket.Name,
///         Content = @"    {
///       \""cells\"": [
///         {
///           \""cell_type\"": \""code\"",
///           \""execution_count\"": null,
///           \""metadata\"": {},
///           \""outputs\"": [],
///           \""source\"": [
///             \""print(\\\""Hello, World!\\\"")\""
///           ]
///         }
///       ],
///       \""metadata\"": {
///         \""kernelspec\"": {
///           \""display_name\"": \""Python 3\"",
///           \""language\"": \""python\"",
///           \""name\"": \""python3\""
///         },
///         \""language_info\"": {
///           \""codemirror_mode\"": {
///             \""name\"": \""ipython\"",
///             \""version\"": 3
///           },
///           \""file_extension\"": \"".py\"",
///           \""mimetype\"": \""text/x-python\"",
///           \""name\"": \""python\"",
///           \""nbconvert_exporter\"": \""python\"",
///           \""pygments_lexer\"": \""ipython3\"",
///           \""version\"": \""3.8.5\""
///         }
///       },
///       \""nbformat\"": 4,
///       \""nbformat_minor\"": 4
///     }
/// ",
///     });
///
///     var schedule = new Gcp.Colab.Schedule("schedule", new()
///     {
///         DisplayName = "basic-schedule",
///         Location = "us-west1",
///         MaxConcurrentRunCount = "2",
///         Cron = "TZ=America/Los_Angeles * * * * *",
///         CreateNotebookExecutionJobRequest = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestArgs
///         {
///             NotebookExecutionJob = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
///             {
///                 DisplayName = "Notebook execution",
///                 GcsNotebookSource = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs
///                 {
///                     Uri = Output.Tuple(notebook.Bucket, notebook.Name).Apply(values =>
///                     {
///                         var bucket = values.Item1;
///                         var name = values.Item2;
///                         return $"gs://{bucket}/{name}";
///                     }),
///                     Generation = notebook.Generation.Apply(x => x.ToString(System.Globalization.CultureInfo.InvariantCulture)),
///                 },
///                 NotebookRuntimeTemplateResourceName = Output.Tuple(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var location = values.Item2;
///                     var name = values.Item3;
///                     return $"projects/{project}/locations/{location}/notebookRuntimeTemplates/{name}";
///                 }),
///                 GcsOutputUri = outputBucket.Name.Apply(name => $"gs://{name}"),
///                 ServiceAccount = "my@service-account.com",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myRuntimeTemplate,
///             outputBucket,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("runtime-template"),
/// 			DisplayName: pulumi.String("Runtime template"),
/// 			Location:    pulumi.String("us-central1"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		outputBucket, err := storage.NewBucket(ctx, "output_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notebook, err := storage.NewBucketObject(ctx, "notebook", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("hello_world.ipynb"),
/// 			Bucket: outputBucket.Name,
/// 			Content: pulumi.String(`    {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// 			DisplayName:           pulumi.String("basic-schedule"),
/// 			Location:              pulumi.String("us-west1"),
/// 			MaxConcurrentRunCount: pulumi.String("2"),
/// 			Cron:                  pulumi.String("TZ=America/Los_Angeles * * * * *"),
/// 			CreateNotebookExecutionJobRequest: &colab.ScheduleCreateNotebookExecutionJobRequestArgs{
/// 				NotebookExecutionJob: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// 					DisplayName: pulumi.String("Notebook execution"),
/// 					GcsNotebookSource: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs{
/// 						Uri: pulumi.All(notebook.Bucket, notebook.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucket := _args[0].(string)
/// 							name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// 						}).(pulumi.StringOutput),
/// 						Generation: notebook.Generation,
/// 					},
/// 					NotebookRuntimeTemplateResourceName: pulumi.All(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						location := _args[1].(string)
/// 						name := _args[2].(string)
/// 						return fmt.Sprintf("projects/%v/locations/%v/notebookRuntimeTemplates/%v", project, location, name), nil
/// 					}).(pulumi.StringOutput),
/// 					GcsOutputUri: outputBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					ServiceAccount: pulumi.String("my@service-account.com"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myRuntimeTemplate,
/// 			outputBucket,
/// 		}))
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
/// resource "gcp_colab_runtimetemplate" "my_runtime_template" {
///   name         = "runtime-template"
///   display_name = "Runtime template"
///   location     = "us-central1"
///   machine_spec = {
///     machine_type = "e2-standard-4"
///   }
///   network_spec = {
///     enable_internet_access = true
///   }
/// }
/// resource "gcp_storage_bucket" "output_bucket" {
///   name                        = "my_bucket"
///   location                    = "US"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_storage_bucketobject" "notebook" {
///   name    = "hello_world.ipynb"
///   bucket  = gcp_storage_bucket.output_bucket.name
///   content = "    {\n      \\\"cells\\\": [\n        {\n          \\\"cell_type\\\": \\\"code\\\",\n          \\\"execution_count\\\": null,\n          \\\"metadata\\\": {},\n          \\\"outputs\\\": [],\n          \\\"source\\\": [\n            \\\"print(\\\\\\\"Hello, World!\\\\\\\")\\\"\n          ]\n        }\n      ],\n      \\\"metadata\\\": {\n        \\\"kernelspec\\\": {\n          \\\"display_name\\\": \\\"Python 3\\\",\n          \\\"language\\\": \\\"python\\\",\n          \\\"name\\\": \\\"python3\\\"\n        },\n        \\\"language_info\\\": {\n          \\\"codemirror_mode\\\": {\n            \\\"name\\\": \\\"ipython\\\",\n            \\\"version\\\": 3\n          },\n          \\\"file_extension\\\": \\\".py\\\",\n          \\\"mimetype\\\": \\\"text/x-python\\\",\n          \\\"name\\\": \\\"python\\\",\n          \\\"nbconvert_exporter\\\": \\\"python\\\",\n          \\\"pygments_lexer\\\": \\\"ipython3\\\",\n          \\\"version\\\": \\\"3.8.5\\\"\n        }\n      },\n      \\\"nbformat\\\": 4,\n      \\\"nbformat_minor\\\": 4\n    }\n"
/// }
/// resource "gcp_colab_schedule" "schedule" {
///   depends_on               = [gcp_colab_runtimetemplate.my_runtime_template, gcp_storage_bucket.output_bucket]
///   display_name             = "basic-schedule"
///   location                 = "us-west1"
///   max_concurrent_run_count = 2
///   cron                     = "TZ=America/Los_Angeles * * * * *"
///   create_notebook_execution_job_request = {
///     notebook_execution_job = {
///       display_name = "Notebook execution"
///       gcs_notebook_source = {
///         uri        ="gs://${gcp_storage_bucketobject.notebook.bucket}/${gcp_storage_bucketobject.notebook.name}"
///         generation = gcp_storage_bucketobject.notebook.generation
///       }
///       notebook_runtime_template_resource_name ="projects/${gcp_colab_runtimetemplate.my_runtime_template.project}/locations/${gcp_colab_runtimetemplate.my_runtime_template.location}/notebookRuntimeTemplates/${gcp_colab_runtimetemplate.my_runtime_template.name}"
///       gcs_output_uri                          ="gs://${gcp_storage_bucket.output_bucket.name}"
///       service_account                         = "my@service-account.com"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myRuntimeTemplate = new RuntimeTemplate("myRuntimeTemplate", RuntimeTemplateArgs.builder()
///             .name("runtime-template")
///             .displayName("Runtime template")
///             .location("us-central1")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("e2-standard-4")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .build());
///
///         var outputBucket = new Bucket("outputBucket", BucketArgs.builder()
///             .name("my_bucket")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var notebook = new BucketObject("notebook", BucketObjectArgs.builder()
///             .name("hello_world.ipynb")
///             .bucket(outputBucket.name())
///             .content("""
///     {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
///             """)
///             .build());
///
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .displayName("basic-schedule")
///             .location("us-west1")
///             .maxConcurrentRunCount("2")
///             .cron("TZ=America/Los_Angeles * * * * *")
///             .createNotebookExecutionJobRequest(ScheduleCreateNotebookExecutionJobRequestArgs.builder()
///                 .notebookExecutionJob(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
///                     .displayName("Notebook execution")
///                     .gcsNotebookSource(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs.builder()
///                         .uri(Output.tuple(notebook.bucket(), notebook.name()).applyValue(values -> {
///                             var bucket = values.t1;
///                             var name = values.t2;
///                             return String.format("gs://%s/%s", bucket,name);
///                         }))
///                         .generation(notebook.generation())
///                         .build())
///                     .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
///                         var project = values.t1;
///                         var location = values.t2;
///                         var name = values.t3;
///                         return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
///                     }))
///                     .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                     .serviceAccount("my@service-account.com")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     myRuntimeTemplate,
///                     outputBucket)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myRuntimeTemplate:
///     type: gcp:colab:RuntimeTemplate
///     name: my_runtime_template
///     properties:
///       name: runtime-template
///       displayName: Runtime template
///       location: us-central1
///       machineSpec:
///         machineType: e2-standard-4
///       networkSpec:
///         enableInternetAccess: true
///   outputBucket:
///     type: gcp:storage:Bucket
///     name: output_bucket
///     properties:
///       name: my_bucket
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   notebook:
///     type: gcp:storage:BucketObject
///     properties:
///       name: hello_world.ipynb
///       bucket: ${outputBucket.name}
///       content: |2
///             {
///               \"cells\": [
///                 {
///                   \"cell_type\": \"code\",
///                   \"execution_count\": null,
///                   \"metadata\": {},
///                   \"outputs\": [],
///                   \"source\": [
///                     \"print(\\\"Hello, World!\\\")\"
///                   ]
///                 }
///               ],
///               \"metadata\": {
///                 \"kernelspec\": {
///                   \"display_name\": \"Python 3\",
///                   \"language\": \"python\",
///                   \"name\": \"python3\"
///                 },
///                 \"language_info\": {
///                   \"codemirror_mode\": {
///                     \"name\": \"ipython\",
///                     \"version\": 3
///                   },
///                   \"file_extension\": \".py\",
///                   \"mimetype\": \"text/x-python\",
///                   \"name\": \"python\",
///                   \"nbconvert_exporter\": \"python\",
///                   \"pygments_lexer\": \"ipython3\",
///                   \"version\": \"3.8.5\"
///                 }
///               },
///               \"nbformat\": 4,
///               \"nbformat_minor\": 4
///             }
///   schedule:
///     type: gcp:colab:Schedule
///     properties:
///       displayName: basic-schedule
///       location: us-west1
///       maxConcurrentRunCount: 2
///       cron: TZ=America/Los_Angeles * * * * *
///       createNotebookExecutionJobRequest:
///         notebookExecutionJob:
///           displayName: Notebook execution
///           gcsNotebookSource:
///             uri: gs://${notebook.bucket}/${notebook.name}
///             generation: ${notebook.generation}
///           notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
///           gcsOutputUri: gs://${outputBucket.name}
///           serviceAccount: my@service-account.com
///     options:
///       dependsOn:
///         - ${myRuntimeTemplate}
///         - ${outputBucket}
/// ```
///
/// ### Colab Schedule Paused
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
///     name: "runtime-template",
///     displayName: "Runtime template",
///     location: "us-central1",
///     machineSpec: {
///         machineType: "e2-standard-4",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
/// });
/// const outputBucket = new gcp.storage.Bucket("output_bucket", {
///     name: "my_bucket",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const notebook = new gcp.storage.BucketObject("notebook", {
///     name: "hello_world.ipynb",
///     bucket: outputBucket.name,
///     content: `    {
///       \\"cells\\": [
///         {
///           \\"cell_type\\": \\"code\\",
///           \\"execution_count\\": null,
///           \\"metadata\\": {},
///           \\"outputs\\": [],
///           \\"source\\": [
///             \\"print(\\\\\\"Hello, World!\\\\\\")\\"
///           ]
///         }
///       ],
///       \\"metadata\\": {
///         \\"kernelspec\\": {
///           \\"display_name\\": \\"Python 3\\",
///           \\"language\\": \\"python\\",
///           \\"name\\": \\"python3\\"
///         },
///         \\"language_info\\": {
///           \\"codemirror_mode\\": {
///             \\"name\\": \\"ipython\\",
///             \\"version\\": 3
///           },
///           \\"file_extension\\": \\".py\\",
///           \\"mimetype\\": \\"text/x-python\\",
///           \\"name\\": \\"python\\",
///           \\"nbconvert_exporter\\": \\"python\\",
///           \\"pygments_lexer\\": \\"ipython3\\",
///           \\"version\\": \\"3.8.5\\"
///         }
///       },
///       \\"nbformat\\": 4,
///       \\"nbformat_minor\\": 4
///     }
/// `,
/// });
/// const schedule = new gcp.colab.Schedule("schedule", {
///     displayName: "paused-schedule",
///     location: "us-west1",
///     maxConcurrentRunCount: "2",
///     cron: "TZ=America/Los_Angeles * * * * *",
///     desiredState: "PAUSED",
///     createNotebookExecutionJobRequest: {
///         notebookExecutionJob: {
///             displayName: "Notebook execution",
///             gcsNotebookSource: {
///                 uri: pulumi.interpolate`gs://${notebook.bucket}/${notebook.name}`,
///                 generation: notebook.generation.apply(x =>String(x)),
///             },
///             notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
///             gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
///             serviceAccount: "my@service-account.com",
///         },
///     },
/// }, {
///     dependsOn: [
///         myRuntimeTemplate,
///         outputBucket,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
///     name="runtime-template",
///     display_name="Runtime template",
///     location="us-central1",
///     machine_spec={
///         "machine_type": "e2-standard-4",
///     },
///     network_spec={
///         "enable_internet_access": True,
///     })
/// output_bucket = gcp.storage.Bucket("output_bucket",
///     name="my_bucket",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// notebook = gcp.storage.BucketObject("notebook",
///     name="hello_world.ipynb",
///     bucket=output_bucket.name,
///     content="""    {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
/// """)
/// schedule = gcp.colab.Schedule("schedule",
///     display_name="paused-schedule",
///     location="us-west1",
///     max_concurrent_run_count="2",
///     cron="TZ=America/Los_Angeles * * * * *",
///     desired_state="PAUSED",
///     create_notebook_execution_job_request={
///         "notebook_execution_job": {
///             "display_name": "Notebook execution",
///             "gcs_notebook_source": {
///                 "uri": pulumi.Output.all(
///                     bucket=notebook.bucket,
///                     name=notebook.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ,
///                 "generation": notebook.generation.apply(lambda x: str(x)),
///             },
///             "notebook_runtime_template_resource_name": pulumi.Output.all(
///                 project=my_runtime_template.project,
///                 location=my_runtime_template.location,
///                 name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
///             "gcs_output_uri": output_bucket.name.apply(lambda name: f"gs://{name}"),
///             "service_account": "my@service-account.com",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             my_runtime_template,
///             output_bucket,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
///     {
///         Name = "runtime-template",
///         DisplayName = "Runtime template",
///         Location = "us-central1",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "e2-standard-4",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///     });
///
///     var outputBucket = new Gcp.Storage.Bucket("output_bucket", new()
///     {
///         Name = "my_bucket",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var notebook = new Gcp.Storage.BucketObject("notebook", new()
///     {
///         Name = "hello_world.ipynb",
///         Bucket = outputBucket.Name,
///         Content = @"    {
///       \""cells\"": [
///         {
///           \""cell_type\"": \""code\"",
///           \""execution_count\"": null,
///           \""metadata\"": {},
///           \""outputs\"": [],
///           \""source\"": [
///             \""print(\\\""Hello, World!\\\"")\""
///           ]
///         }
///       ],
///       \""metadata\"": {
///         \""kernelspec\"": {
///           \""display_name\"": \""Python 3\"",
///           \""language\"": \""python\"",
///           \""name\"": \""python3\""
///         },
///         \""language_info\"": {
///           \""codemirror_mode\"": {
///             \""name\"": \""ipython\"",
///             \""version\"": 3
///           },
///           \""file_extension\"": \"".py\"",
///           \""mimetype\"": \""text/x-python\"",
///           \""name\"": \""python\"",
///           \""nbconvert_exporter\"": \""python\"",
///           \""pygments_lexer\"": \""ipython3\"",
///           \""version\"": \""3.8.5\""
///         }
///       },
///       \""nbformat\"": 4,
///       \""nbformat_minor\"": 4
///     }
/// ",
///     });
///
///     var schedule = new Gcp.Colab.Schedule("schedule", new()
///     {
///         DisplayName = "paused-schedule",
///         Location = "us-west1",
///         MaxConcurrentRunCount = "2",
///         Cron = "TZ=America/Los_Angeles * * * * *",
///         DesiredState = "PAUSED",
///         CreateNotebookExecutionJobRequest = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestArgs
///         {
///             NotebookExecutionJob = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
///             {
///                 DisplayName = "Notebook execution",
///                 GcsNotebookSource = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs
///                 {
///                     Uri = Output.Tuple(notebook.Bucket, notebook.Name).Apply(values =>
///                     {
///                         var bucket = values.Item1;
///                         var name = values.Item2;
///                         return $"gs://{bucket}/{name}";
///                     }),
///                     Generation = notebook.Generation.Apply(x => x.ToString(System.Globalization.CultureInfo.InvariantCulture)),
///                 },
///                 NotebookRuntimeTemplateResourceName = Output.Tuple(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var location = values.Item2;
///                     var name = values.Item3;
///                     return $"projects/{project}/locations/{location}/notebookRuntimeTemplates/{name}";
///                 }),
///                 GcsOutputUri = outputBucket.Name.Apply(name => $"gs://{name}"),
///                 ServiceAccount = "my@service-account.com",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myRuntimeTemplate,
///             outputBucket,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("runtime-template"),
/// 			DisplayName: pulumi.String("Runtime template"),
/// 			Location:    pulumi.String("us-central1"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		outputBucket, err := storage.NewBucket(ctx, "output_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notebook, err := storage.NewBucketObject(ctx, "notebook", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("hello_world.ipynb"),
/// 			Bucket: outputBucket.Name,
/// 			Content: pulumi.String(`    {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// 			DisplayName:           pulumi.String("paused-schedule"),
/// 			Location:              pulumi.String("us-west1"),
/// 			MaxConcurrentRunCount: pulumi.String("2"),
/// 			Cron:                  pulumi.String("TZ=America/Los_Angeles * * * * *"),
/// 			DesiredState:          pulumi.String("PAUSED"),
/// 			CreateNotebookExecutionJobRequest: &colab.ScheduleCreateNotebookExecutionJobRequestArgs{
/// 				NotebookExecutionJob: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// 					DisplayName: pulumi.String("Notebook execution"),
/// 					GcsNotebookSource: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs{
/// 						Uri: pulumi.All(notebook.Bucket, notebook.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucket := _args[0].(string)
/// 							name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// 						}).(pulumi.StringOutput),
/// 						Generation: notebook.Generation,
/// 					},
/// 					NotebookRuntimeTemplateResourceName: pulumi.All(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						location := _args[1].(string)
/// 						name := _args[2].(string)
/// 						return fmt.Sprintf("projects/%v/locations/%v/notebookRuntimeTemplates/%v", project, location, name), nil
/// 					}).(pulumi.StringOutput),
/// 					GcsOutputUri: outputBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					ServiceAccount: pulumi.String("my@service-account.com"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myRuntimeTemplate,
/// 			outputBucket,
/// 		}))
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
/// resource "gcp_colab_runtimetemplate" "my_runtime_template" {
///   name         = "runtime-template"
///   display_name = "Runtime template"
///   location     = "us-central1"
///   machine_spec = {
///     machine_type = "e2-standard-4"
///   }
///   network_spec = {
///     enable_internet_access = true
///   }
/// }
/// resource "gcp_storage_bucket" "output_bucket" {
///   name                        = "my_bucket"
///   location                    = "US"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_storage_bucketobject" "notebook" {
///   name    = "hello_world.ipynb"
///   bucket  = gcp_storage_bucket.output_bucket.name
///   content = "    {\n      \\\"cells\\\": [\n        {\n          \\\"cell_type\\\": \\\"code\\\",\n          \\\"execution_count\\\": null,\n          \\\"metadata\\\": {},\n          \\\"outputs\\\": [],\n          \\\"source\\\": [\n            \\\"print(\\\\\\\"Hello, World!\\\\\\\")\\\"\n          ]\n        }\n      ],\n      \\\"metadata\\\": {\n        \\\"kernelspec\\\": {\n          \\\"display_name\\\": \\\"Python 3\\\",\n          \\\"language\\\": \\\"python\\\",\n          \\\"name\\\": \\\"python3\\\"\n        },\n        \\\"language_info\\\": {\n          \\\"codemirror_mode\\\": {\n            \\\"name\\\": \\\"ipython\\\",\n            \\\"version\\\": 3\n          },\n          \\\"file_extension\\\": \\\".py\\\",\n          \\\"mimetype\\\": \\\"text/x-python\\\",\n          \\\"name\\\": \\\"python\\\",\n          \\\"nbconvert_exporter\\\": \\\"python\\\",\n          \\\"pygments_lexer\\\": \\\"ipython3\\\",\n          \\\"version\\\": \\\"3.8.5\\\"\n        }\n      },\n      \\\"nbformat\\\": 4,\n      \\\"nbformat_minor\\\": 4\n    }\n"
/// }
/// resource "gcp_colab_schedule" "schedule" {
///   depends_on               = [gcp_colab_runtimetemplate.my_runtime_template, gcp_storage_bucket.output_bucket]
///   display_name             = "paused-schedule"
///   location                 = "us-west1"
///   max_concurrent_run_count = 2
///   cron                     = "TZ=America/Los_Angeles * * * * *"
///   desired_state            = "PAUSED"
///   create_notebook_execution_job_request = {
///     notebook_execution_job = {
///       display_name = "Notebook execution"
///       gcs_notebook_source = {
///         uri        ="gs://${gcp_storage_bucketobject.notebook.bucket}/${gcp_storage_bucketobject.notebook.name}"
///         generation = gcp_storage_bucketobject.notebook.generation
///       }
///       notebook_runtime_template_resource_name ="projects/${gcp_colab_runtimetemplate.my_runtime_template.project}/locations/${gcp_colab_runtimetemplate.my_runtime_template.location}/notebookRuntimeTemplates/${gcp_colab_runtimetemplate.my_runtime_template.name}"
///       gcs_output_uri                          ="gs://${gcp_storage_bucket.output_bucket.name}"
///       service_account                         = "my@service-account.com"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myRuntimeTemplate = new RuntimeTemplate("myRuntimeTemplate", RuntimeTemplateArgs.builder()
///             .name("runtime-template")
///             .displayName("Runtime template")
///             .location("us-central1")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("e2-standard-4")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .build());
///
///         var outputBucket = new Bucket("outputBucket", BucketArgs.builder()
///             .name("my_bucket")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var notebook = new BucketObject("notebook", BucketObjectArgs.builder()
///             .name("hello_world.ipynb")
///             .bucket(outputBucket.name())
///             .content("""
///     {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
///             """)
///             .build());
///
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .displayName("paused-schedule")
///             .location("us-west1")
///             .maxConcurrentRunCount("2")
///             .cron("TZ=America/Los_Angeles * * * * *")
///             .desiredState("PAUSED")
///             .createNotebookExecutionJobRequest(ScheduleCreateNotebookExecutionJobRequestArgs.builder()
///                 .notebookExecutionJob(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
///                     .displayName("Notebook execution")
///                     .gcsNotebookSource(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs.builder()
///                         .uri(Output.tuple(notebook.bucket(), notebook.name()).applyValue(values -> {
///                             var bucket = values.t1;
///                             var name = values.t2;
///                             return String.format("gs://%s/%s", bucket,name);
///                         }))
///                         .generation(notebook.generation())
///                         .build())
///                     .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
///                         var project = values.t1;
///                         var location = values.t2;
///                         var name = values.t3;
///                         return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
///                     }))
///                     .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                     .serviceAccount("my@service-account.com")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     myRuntimeTemplate,
///                     outputBucket)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myRuntimeTemplate:
///     type: gcp:colab:RuntimeTemplate
///     name: my_runtime_template
///     properties:
///       name: runtime-template
///       displayName: Runtime template
///       location: us-central1
///       machineSpec:
///         machineType: e2-standard-4
///       networkSpec:
///         enableInternetAccess: true
///   outputBucket:
///     type: gcp:storage:Bucket
///     name: output_bucket
///     properties:
///       name: my_bucket
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   notebook:
///     type: gcp:storage:BucketObject
///     properties:
///       name: hello_world.ipynb
///       bucket: ${outputBucket.name}
///       content: |2
///             {
///               \"cells\": [
///                 {
///                   \"cell_type\": \"code\",
///                   \"execution_count\": null,
///                   \"metadata\": {},
///                   \"outputs\": [],
///                   \"source\": [
///                     \"print(\\\"Hello, World!\\\")\"
///                   ]
///                 }
///               ],
///               \"metadata\": {
///                 \"kernelspec\": {
///                   \"display_name\": \"Python 3\",
///                   \"language\": \"python\",
///                   \"name\": \"python3\"
///                 },
///                 \"language_info\": {
///                   \"codemirror_mode\": {
///                     \"name\": \"ipython\",
///                     \"version\": 3
///                   },
///                   \"file_extension\": \".py\",
///                   \"mimetype\": \"text/x-python\",
///                   \"name\": \"python\",
///                   \"nbconvert_exporter\": \"python\",
///                   \"pygments_lexer\": \"ipython3\",
///                   \"version\": \"3.8.5\"
///                 }
///               },
///               \"nbformat\": 4,
///               \"nbformat_minor\": 4
///             }
///   schedule:
///     type: gcp:colab:Schedule
///     properties:
///       displayName: paused-schedule
///       location: us-west1
///       maxConcurrentRunCount: 2
///       cron: TZ=America/Los_Angeles * * * * *
///       desiredState: PAUSED
///       createNotebookExecutionJobRequest:
///         notebookExecutionJob:
///           displayName: Notebook execution
///           gcsNotebookSource:
///             uri: gs://${notebook.bucket}/${notebook.name}
///             generation: ${notebook.generation}
///           notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
///           gcsOutputUri: gs://${outputBucket.name}
///           serviceAccount: my@service-account.com
///     options:
///       dependsOn:
///         - ${myRuntimeTemplate}
///         - ${outputBucket}
/// ```
///
/// ### Colab Schedule Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
///     name: "runtime-template",
///     displayName: "Runtime template",
///     location: "us-central1",
///     machineSpec: {
///         machineType: "e2-standard-4",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
/// });
/// const outputBucket = new gcp.storage.Bucket("output_bucket", {
///     name: "my_bucket",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
///     secret: secret.id,
///     secretData: "secret-data",
/// });
/// const dataformRepository = new gcp.dataform.Repository("dataform_repository", {
///     name: "dataform-repository",
///     displayName: "dataform_repository",
///     npmrcEnvironmentVariablesSecretVersion: secretVersion.id,
///     kmsKeyName: "my-key",
///     labels: {
///         label_foo1: "label-bar1",
///     },
///     gitRemoteSettings: {
///         url: "https://github.com/OWNER/REPOSITORY.git",
///         defaultBranch: "main",
///         authenticationTokenSecretVersion: secretVersion.id,
///     },
///     workspaceCompilationOverrides: {
///         defaultDatabase: "database",
///         schemaSuffix: "_suffix",
///         tablePrefix: "prefix_",
///     },
/// });
/// const schedule = new gcp.colab.Schedule("schedule", {
///     displayName: "full-schedule",
///     location: "us-west1",
///     allowQueueing: true,
///     maxConcurrentRunCount: "2",
///     cron: "TZ=America/Los_Angeles * * * * *",
///     maxRunCount: "5",
///     startTime: "2014-10-02T15:01:23Z",
///     endTime: "2014-10-10T15:01:23Z",
///     desiredState: "ACTIVE",
///     createNotebookExecutionJobRequest: {
///         notebookExecutionJob: {
///             displayName: "Notebook execution",
///             executionTimeout: "86400s",
///             dataformRepositorySource: {
///                 commitSha: "randomsha123",
///                 dataformRepositoryResourceName: pulumi.interpolate`projects/my-project-name/locations/us-west1/repositories/${dataformRepository.name}`,
///             },
///             notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
///             gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
///             serviceAccount: "my@service-account.com",
///         },
///     },
/// }, {
///     dependsOn: [
///         myRuntimeTemplate,
///         outputBucket,
///         secretVersion,
///         dataformRepository,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
///     name="runtime-template",
///     display_name="Runtime template",
///     location="us-central1",
///     machine_spec={
///         "machine_type": "e2-standard-4",
///     },
///     network_spec={
///         "enable_internet_access": True,
///     })
/// output_bucket = gcp.storage.Bucket("output_bucket",
///     name="my_bucket",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret",
///     replication={
///         "auto": {},
///     })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
///     secret=secret.id,
///     secret_data="secret-data")
/// dataform_repository = gcp.dataform.Repository("dataform_repository",
///     name="dataform-repository",
///     display_name="dataform_repository",
///     npmrc_environment_variables_secret_version=secret_version.id,
///     kms_key_name="my-key",
///     labels={
///         "label_foo1": "label-bar1",
///     },
///     git_remote_settings={
///         "url": "https://github.com/OWNER/REPOSITORY.git",
///         "default_branch": "main",
///         "authentication_token_secret_version": secret_version.id,
///     },
///     workspace_compilation_overrides={
///         "default_database": "database",
///         "schema_suffix": "_suffix",
///         "table_prefix": "prefix_",
///     })
/// schedule = gcp.colab.Schedule("schedule",
///     display_name="full-schedule",
///     location="us-west1",
///     allow_queueing=True,
///     max_concurrent_run_count="2",
///     cron="TZ=America/Los_Angeles * * * * *",
///     max_run_count="5",
///     start_time="2014-10-02T15:01:23Z",
///     end_time="2014-10-10T15:01:23Z",
///     desired_state="ACTIVE",
///     create_notebook_execution_job_request={
///         "notebook_execution_job": {
///             "display_name": "Notebook execution",
///             "execution_timeout": "86400s",
///             "dataform_repository_source": {
///                 "commit_sha": "randomsha123",
///                 "dataform_repository_resource_name": dataform_repository.name.apply(lambda name: f"projects/my-project-name/locations/us-west1/repositories/{name}"),
///             },
///             "notebook_runtime_template_resource_name": pulumi.Output.all(
///                 project=my_runtime_template.project,
///                 location=my_runtime_template.location,
///                 name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
///             "gcs_output_uri": output_bucket.name.apply(lambda name: f"gs://{name}"),
///             "service_account": "my@service-account.com",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             my_runtime_template,
///             output_bucket,
///             secret_version,
///             dataform_repository,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
///     {
///         Name = "runtime-template",
///         DisplayName = "Runtime template",
///         Location = "us-central1",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "e2-standard-4",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///     });
///
///     var outputBucket = new Gcp.Storage.Bucket("output_bucket", new()
///     {
///         Name = "my_bucket",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secretVersion = new Gcp.SecretManager.SecretVersion("secret_version", new()
///     {
///         Secret = secret.Id,
///         SecretData = "secret-data",
///     });
///
///     var dataformRepository = new Gcp.Dataform.Repository("dataform_repository", new()
///     {
///         Name = "dataform-repository",
///         DisplayName = "dataform_repository",
///         NpmrcEnvironmentVariablesSecretVersion = secretVersion.Id,
///         KmsKeyName = "my-key",
///         Labels =
///         {
///             { "label_foo1", "label-bar1" },
///         },
///         GitRemoteSettings = new Gcp.Dataform.Inputs.RepositoryGitRemoteSettingsArgs
///         {
///             Url = "https://github.com/OWNER/REPOSITORY.git",
///             DefaultBranch = "main",
///             AuthenticationTokenSecretVersion = secretVersion.Id,
///         },
///         WorkspaceCompilationOverrides = new Gcp.Dataform.Inputs.RepositoryWorkspaceCompilationOverridesArgs
///         {
///             DefaultDatabase = "database",
///             SchemaSuffix = "_suffix",
///             TablePrefix = "prefix_",
///         },
///     });
///
///     var schedule = new Gcp.Colab.Schedule("schedule", new()
///     {
///         DisplayName = "full-schedule",
///         Location = "us-west1",
///         AllowQueueing = true,
///         MaxConcurrentRunCount = "2",
///         Cron = "TZ=America/Los_Angeles * * * * *",
///         MaxRunCount = "5",
///         StartTime = "2014-10-02T15:01:23Z",
///         EndTime = "2014-10-10T15:01:23Z",
///         DesiredState = "ACTIVE",
///         CreateNotebookExecutionJobRequest = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestArgs
///         {
///             NotebookExecutionJob = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
///             {
///                 DisplayName = "Notebook execution",
///                 ExecutionTimeout = "86400s",
///                 DataformRepositorySource = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs
///                 {
///                     CommitSha = "randomsha123",
///                     DataformRepositoryResourceName = dataformRepository.Name.Apply(name => $"projects/my-project-name/locations/us-west1/repositories/{name}"),
///                 },
///                 NotebookRuntimeTemplateResourceName = Output.Tuple(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var location = values.Item2;
///                     var name = values.Item3;
///                     return $"projects/{project}/locations/{location}/notebookRuntimeTemplates/{name}";
///                 }),
///                 GcsOutputUri = outputBucket.Name.Apply(name => $"gs://{name}"),
///                 ServiceAccount = "my@service-account.com",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myRuntimeTemplate,
///             outputBucket,
///             secretVersion,
///             dataformRepository,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("runtime-template"),
/// 			DisplayName: pulumi.String("Runtime template"),
/// 			Location:    pulumi.String("us-central1"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		outputBucket, err := storage.NewBucket(ctx, "output_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretVersion, err := secretmanager.NewSecretVersion(ctx, "secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataformRepository, err := dataform.NewRepository(ctx, "dataform_repository", &dataform.RepositoryArgs{
/// 			Name:                                   pulumi.String("dataform-repository"),
/// 			DisplayName:                            pulumi.String("dataform_repository"),
/// 			NpmrcEnvironmentVariablesSecretVersion: secretVersion.ID().ToIDOutput().ToStringOutput(),
/// 			KmsKeyName:                             pulumi.String("my-key"),
/// 			Labels: pulumi.StringMap{
/// 				"label_foo1": pulumi.String("label-bar1"),
/// 			},
/// 			GitRemoteSettings: &dataform.RepositoryGitRemoteSettingsArgs{
/// 				Url:                              pulumi.String("https://github.com/OWNER/REPOSITORY.git"),
/// 				DefaultBranch:                    pulumi.String("main"),
/// 				AuthenticationTokenSecretVersion: secretVersion.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			WorkspaceCompilationOverrides: &dataform.RepositoryWorkspaceCompilationOverridesArgs{
/// 				DefaultDatabase: pulumi.String("database"),
/// 				SchemaSuffix:    pulumi.String("_suffix"),
/// 				TablePrefix:     pulumi.String("prefix_"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// 			DisplayName:           pulumi.String("full-schedule"),
/// 			Location:              pulumi.String("us-west1"),
/// 			AllowQueueing:         pulumi.Bool(true),
/// 			MaxConcurrentRunCount: pulumi.String("2"),
/// 			Cron:                  pulumi.String("TZ=America/Los_Angeles * * * * *"),
/// 			MaxRunCount:           pulumi.String("5"),
/// 			StartTime:             pulumi.String("2014-10-02T15:01:23Z"),
/// 			EndTime:               pulumi.String("2014-10-10T15:01:23Z"),
/// 			DesiredState:          pulumi.String("ACTIVE"),
/// 			CreateNotebookExecutionJobRequest: &colab.ScheduleCreateNotebookExecutionJobRequestArgs{
/// 				NotebookExecutionJob: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// 					DisplayName:      pulumi.String("Notebook execution"),
/// 					ExecutionTimeout: pulumi.String("86400s"),
/// 					DataformRepositorySource: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs{
/// 						CommitSha: pulumi.String("randomsha123"),
/// 						DataformRepositoryResourceName: dataformRepository.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("projects/my-project-name/locations/us-west1/repositories/%v", name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					NotebookRuntimeTemplateResourceName: pulumi.All(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						location := _args[1].(string)
/// 						name := _args[2].(string)
/// 						return fmt.Sprintf("projects/%v/locations/%v/notebookRuntimeTemplates/%v", project, location, name), nil
/// 					}).(pulumi.StringOutput),
/// 					GcsOutputUri: outputBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					ServiceAccount: pulumi.String("my@service-account.com"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myRuntimeTemplate,
/// 			outputBucket,
/// 			secretVersion,
/// 			dataformRepository,
/// 		}))
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
/// resource "gcp_colab_runtimetemplate" "my_runtime_template" {
///   name         = "runtime-template"
///   display_name = "Runtime template"
///   location     = "us-central1"
///   machine_spec = {
///     machine_type = "e2-standard-4"
///   }
///   network_spec = {
///     enable_internet_access = true
///   }
/// }
/// resource "gcp_storage_bucket" "output_bucket" {
///   name                        = "my_bucket"
///   location                    = "US"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_secretmanager_secret" "secret" {
///   secret_id = "secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "secret_version" {
///   secret      = gcp_secretmanager_secret.secret.id
///   secret_data = "secret-data"
/// }
/// resource "gcp_dataform_repository" "dataform_repository" {
///   name                                       = "dataform-repository"
///   display_name                               = "dataform_repository"
///   npmrc_environment_variables_secret_version = gcp_secretmanager_secretversion.secret_version.id
///   kms_key_name                               = "my-key"
///   labels = {
///     "label_foo1" = "label-bar1"
///   }
///   git_remote_settings = {
///     url                                 = "https://github.com/OWNER/REPOSITORY.git"
///     default_branch                      = "main"
///     authentication_token_secret_version = gcp_secretmanager_secretversion.secret_version.id
///   }
///   workspace_compilation_overrides = {
///     default_database = "database"
///     schema_suffix    = "_suffix"
///     table_prefix     = "prefix_"
///   }
/// }
/// resource "gcp_colab_schedule" "schedule" {
///   depends_on               = [gcp_colab_runtimetemplate.my_runtime_template, gcp_storage_bucket.output_bucket, gcp_secretmanager_secretversion.secret_version, gcp_dataform_repository.dataform_repository]
///   display_name             = "full-schedule"
///   location                 = "us-west1"
///   allow_queueing           = true
///   max_concurrent_run_count = 2
///   cron                     = "TZ=America/Los_Angeles * * * * *"
///   max_run_count            = 5
///   start_time               = "2014-10-02T15:01:23Z"
///   end_time                 = "2014-10-10T15:01:23Z"
///   desired_state            = "ACTIVE"
///   create_notebook_execution_job_request = {
///     notebook_execution_job = {
///       display_name      = "Notebook execution"
///       execution_timeout = "86400s"
///       dataform_repository_source = {
///         commit_sha                        = "randomsha123"
///         dataform_repository_resource_name ="projects/my-project-name/locations/us-west1/repositories/${gcp_dataform_repository.dataform_repository.name}"
///       }
///       notebook_runtime_template_resource_name ="projects/${gcp_colab_runtimetemplate.my_runtime_template.project}/locations/${gcp_colab_runtimetemplate.my_runtime_template.location}/notebookRuntimeTemplates/${gcp_colab_runtimetemplate.my_runtime_template.name}"
///       gcs_output_uri                          ="gs://${gcp_storage_bucket.output_bucket.name}"
///       service_account                         = "my@service-account.com"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.dataform.Repository;
/// import com.pulumi.gcp.dataform.RepositoryArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryGitRemoteSettingsArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryWorkspaceCompilationOverridesArgs;
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myRuntimeTemplate = new RuntimeTemplate("myRuntimeTemplate", RuntimeTemplateArgs.builder()
///             .name("runtime-template")
///             .displayName("Runtime template")
///             .location("us-central1")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("e2-standard-4")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .build());
///
///         var outputBucket = new Bucket("outputBucket", BucketArgs.builder()
///             .name("my_bucket")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secretVersion = new SecretVersion("secretVersion", SecretVersionArgs.builder()
///             .secret(secret.id())
///             .secretData("secret-data")
///             .build());
///
///         var dataformRepository = new Repository("dataformRepository", RepositoryArgs.builder()
///             .name("dataform-repository")
///             .displayName("dataform_repository")
///             .npmrcEnvironmentVariablesSecretVersion(secretVersion.id())
///             .kmsKeyName("my-key")
///             .labels(Map.of("label_foo1", "label-bar1"))
///             .gitRemoteSettings(RepositoryGitRemoteSettingsArgs.builder()
///                 .url("https://github.com/OWNER/REPOSITORY.git")
///                 .defaultBranch("main")
///                 .authenticationTokenSecretVersion(secretVersion.id())
///                 .build())
///             .workspaceCompilationOverrides(RepositoryWorkspaceCompilationOverridesArgs.builder()
///                 .defaultDatabase("database")
///                 .schemaSuffix("_suffix")
///                 .tablePrefix("prefix_")
///                 .build())
///             .build());
///
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .displayName("full-schedule")
///             .location("us-west1")
///             .allowQueueing(true)
///             .maxConcurrentRunCount("2")
///             .cron("TZ=America/Los_Angeles * * * * *")
///             .maxRunCount("5")
///             .startTime("2014-10-02T15:01:23Z")
///             .endTime("2014-10-10T15:01:23Z")
///             .desiredState("ACTIVE")
///             .createNotebookExecutionJobRequest(ScheduleCreateNotebookExecutionJobRequestArgs.builder()
///                 .notebookExecutionJob(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
///                     .displayName("Notebook execution")
///                     .executionTimeout("86400s")
///                     .dataformRepositorySource(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs.builder()
///                         .commitSha("randomsha123")
///                         .dataformRepositoryResourceName(dataformRepository.name().applyValue(_name -> String.format("projects/my-project-name/locations/us-west1/repositories/%s", _name)))
///                         .build())
///                     .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
///                         var project = values.t1;
///                         var location = values.t2;
///                         var name = values.t3;
///                         return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
///                     }))
///                     .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                     .serviceAccount("my@service-account.com")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     myRuntimeTemplate,
///                     outputBucket,
///                     secretVersion,
///                     dataformRepository)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myRuntimeTemplate:
///     type: gcp:colab:RuntimeTemplate
///     name: my_runtime_template
///     properties:
///       name: runtime-template
///       displayName: Runtime template
///       location: us-central1
///       machineSpec:
///         machineType: e2-standard-4
///       networkSpec:
///         enableInternetAccess: true
///   outputBucket:
///     type: gcp:storage:Bucket
///     name: output_bucket
///     properties:
///       name: my_bucket
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       replication:
///         auto: {}
///   secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: secret_version
///     properties:
///       secret: ${secret.id}
///       secretData: secret-data
///   dataformRepository:
///     type: gcp:dataform:Repository
///     name: dataform_repository
///     properties:
///       name: dataform-repository
///       displayName: dataform_repository
///       npmrcEnvironmentVariablesSecretVersion: ${secretVersion.id}
///       kmsKeyName: my-key
///       labels:
///         label_foo1: label-bar1
///       gitRemoteSettings:
///         url: https://github.com/OWNER/REPOSITORY.git
///         defaultBranch: main
///         authenticationTokenSecretVersion: ${secretVersion.id}
///       workspaceCompilationOverrides:
///         defaultDatabase: database
///         schemaSuffix: _suffix
///         tablePrefix: prefix_
///   schedule:
///     type: gcp:colab:Schedule
///     properties:
///       displayName: full-schedule
///       location: us-west1
///       allowQueueing: true
///       maxConcurrentRunCount: 2
///       cron: TZ=America/Los_Angeles * * * * *
///       maxRunCount: 5
///       startTime: 2014-10-02T15:01:23Z
///       endTime: 2014-10-10T15:01:23Z
///       desiredState: ACTIVE
///       createNotebookExecutionJobRequest:
///         notebookExecutionJob:
///           displayName: Notebook execution
///           executionTimeout: 86400s
///           dataformRepositorySource:
///             commitSha: randomsha123
///             dataformRepositoryResourceName: projects/my-project-name/locations/us-west1/repositories/${dataformRepository.name}
///           notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
///           gcsOutputUri: gs://${outputBucket.name}
///           serviceAccount: my@service-account.com
///     options:
///       dependsOn:
///         - ${myRuntimeTemplate}
///         - ${outputBucket}
///         - ${secretVersion}
///         - ${dataformRepository}
/// ```
///
/// ### Colab Schedule Notebook Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my_bucket",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const notebook = new gcp.storage.BucketObject("notebook", {
///     name: "hello_world.ipynb",
///     bucket: bucket.name,
///     content: `    {
///       \\"cells\\": [
///         {
///           \\"cell_type\\": \\"code\\",
///           \\"execution_count\\": null,
///           \\"metadata\\": {},
///           \\"outputs\\": [],
///           \\"source\\": [
///             \\"print(\\\\\\"Hello, World!\\\\\\")\\"
///           ]
///         }
///       ],
///       \\"metadata\\": {
///         \\"kernelspec\\": {
///           \\"display_name\\": \\"Python 3\\",
///           \\"language\\": \\"python\\",
///           \\"name\\": \\"python3\\"
///         },
///         \\"language_info\\": {
///           \\"codemirror_mode\\": {
///             \\"name\\": \\"ipython\\",
///             \\"version\\": 3
///           },
///           \\"file_extension\\": \\".py\\",
///           \\"mimetype\\": \\"text/x-python\\",
///           \\"name\\": \\"python\\",
///           \\"nbconvert_exporter\\": \\"python\\",
///           \\"pygments_lexer\\": \\"ipython3\\",
///           \\"version\\": \\"3.8.5\\"
///         }
///       },
///       \\"nbformat\\": 4,
///       \\"nbformat_minor\\": 4
///     }
/// `,
/// });
/// const myNetwork = new gcp.compute.Network("my_network", {
///     name: "colab-test-default",
///     autoCreateSubnetworks: false,
/// });
/// const mySubnetwork = new gcp.compute.Subnetwork("my_subnetwork", {
///     name: "colab-test-default",
///     network: myNetwork.id,
///     region: "us-central1",
///     ipCidrRange: "10.0.1.0/24",
/// });
/// const schedule = new gcp.colab.Schedule("schedule", {
///     displayName: "full-notebook-schedule",
///     location: "us-central1",
///     maxConcurrentRunCount: "2",
///     cron: "*/5 * * * *",
///     startTime: "2030-01-01T00:00:00Z",
///     createNotebookExecutionJobRequest: {
///         parent: project.then(project => `projects/${project.projectId}/locations/us-central1`),
///         notebookExecutionJob: {
///             displayName: "test-notebook-execution-job",
///             gcsOutputUri: pulumi.interpolate`gs://${bucket.name}`,
///             serviceAccount: "my@service-account.com",
///             kernelName: "python3",
///             gcsNotebookSource: {
///                 uri: pulumi.interpolate`gs://${notebook.bucket}/${notebook.name}`,
///                 generation: notebook.generation.apply(x =>String(x)),
///             },
///             customEnvironmentSpec: {
///                 machineSpec: {
///                     machineType: "n1-standard-4",
///                     acceleratorType: "NVIDIA_TESLA_T4",
///                     acceleratorCount: 1,
///                     gpuPartitionSize: "1g.10gb",
///                     tpuTopology: "2x2",
///                 },
///                 persistentDiskSpec: {
///                     diskSizeGb: "100",
///                     diskType: "pd-standard",
///                 },
///                 networkSpec: {
///                     enableInternetAccess: true,
///                     network: myNetwork.id,
///                     subnetwork: mySubnetwork.id,
///                 },
///             },
///             encryptionSpec: {
///                 kmsKeyName: "my-key",
///             },
///             labels: {
///                 test: "value",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// bucket = gcp.storage.Bucket("bucket",
///     name="my_bucket",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// notebook = gcp.storage.BucketObject("notebook",
///     name="hello_world.ipynb",
///     bucket=bucket.name,
///     content="""    {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
/// """)
/// my_network = gcp.compute.Network("my_network",
///     name="colab-test-default",
///     auto_create_subnetworks=False)
/// my_subnetwork = gcp.compute.Subnetwork("my_subnetwork",
///     name="colab-test-default",
///     network=my_network.id,
///     region="us-central1",
///     ip_cidr_range="10.0.1.0/24")
/// schedule = gcp.colab.Schedule("schedule",
///     display_name="full-notebook-schedule",
///     location="us-central1",
///     max_concurrent_run_count="2",
///     cron="*/5 * * * *",
///     start_time="2030-01-01T00:00:00Z",
///     create_notebook_execution_job_request={
///         "parent": f"projects/{project.project_id}/locations/us-central1",
///         "notebook_execution_job": {
///             "display_name": "test-notebook-execution-job",
///             "gcs_output_uri": bucket.name.apply(lambda name: f"gs://{name}"),
///             "service_account": "my@service-account.com",
///             "kernel_name": "python3",
///             "gcs_notebook_source": {
///                 "uri": pulumi.Output.all(
///                     bucket=notebook.bucket,
///                     name=notebook.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ,
///                 "generation": notebook.generation.apply(lambda x: str(x)),
///             },
///             "custom_environment_spec": {
///                 "machine_spec": {
///                     "machine_type": "n1-standard-4",
///                     "accelerator_type": "NVIDIA_TESLA_T4",
///                     "accelerator_count": 1,
///                     "gpu_partition_size": "1g.10gb",
///                     "tpu_topology": "2x2",
///                 },
///                 "persistent_disk_spec": {
///                     "disk_size_gb": "100",
///                     "disk_type": "pd-standard",
///                 },
///                 "network_spec": {
///                     "enable_internet_access": True,
///                     "network": my_network.id,
///                     "subnetwork": my_subnetwork.id,
///                 },
///             },
///             "encryption_spec": {
///                 "kms_key_name": "my-key",
///             },
///             "labels": {
///                 "test": "value",
///             },
///         },
///     })
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my_bucket",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var notebook = new Gcp.Storage.BucketObject("notebook", new()
///     {
///         Name = "hello_world.ipynb",
///         Bucket = bucket.Name,
///         Content = @"    {
///       \""cells\"": [
///         {
///           \""cell_type\"": \""code\"",
///           \""execution_count\"": null,
///           \""metadata\"": {},
///           \""outputs\"": [],
///           \""source\"": [
///             \""print(\\\""Hello, World!\\\"")\""
///           ]
///         }
///       ],
///       \""metadata\"": {
///         \""kernelspec\"": {
///           \""display_name\"": \""Python 3\"",
///           \""language\"": \""python\"",
///           \""name\"": \""python3\""
///         },
///         \""language_info\"": {
///           \""codemirror_mode\"": {
///             \""name\"": \""ipython\"",
///             \""version\"": 3
///           },
///           \""file_extension\"": \"".py\"",
///           \""mimetype\"": \""text/x-python\"",
///           \""name\"": \""python\"",
///           \""nbconvert_exporter\"": \""python\"",
///           \""pygments_lexer\"": \""ipython3\"",
///           \""version\"": \""3.8.5\""
///         }
///       },
///       \""nbformat\"": 4,
///       \""nbformat_minor\"": 4
///     }
/// ",
///     });
///
///     var myNetwork = new Gcp.Compute.Network("my_network", new()
///     {
///         Name = "colab-test-default",
///         AutoCreateSubnetworks = false,
///     });
///
///     var mySubnetwork = new Gcp.Compute.Subnetwork("my_subnetwork", new()
///     {
///         Name = "colab-test-default",
///         Network = myNetwork.Id,
///         Region = "us-central1",
///         IpCidrRange = "10.0.1.0/24",
///     });
///
///     var schedule = new Gcp.Colab.Schedule("schedule", new()
///     {
///         DisplayName = "full-notebook-schedule",
///         Location = "us-central1",
///         MaxConcurrentRunCount = "2",
///         Cron = "*/5 * * * *",
///         StartTime = "2030-01-01T00:00:00Z",
///         CreateNotebookExecutionJobRequest = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestArgs
///         {
///             Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1",
///             NotebookExecutionJob = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
///             {
///                 DisplayName = "test-notebook-execution-job",
///                 GcsOutputUri = bucket.Name.Apply(name => $"gs://{name}"),
///                 ServiceAccount = "my@service-account.com",
///                 KernelName = "python3",
///                 GcsNotebookSource = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs
///                 {
///                     Uri = Output.Tuple(notebook.Bucket, notebook.Name).Apply(values =>
///                     {
///                         var bucket = values.Item1;
///                         var name = values.Item2;
///                         return $"gs://{bucket}/{name}";
///                     }),
///                     Generation = notebook.Generation.Apply(x => x.ToString(System.Globalization.CultureInfo.InvariantCulture)),
///                 },
///                 CustomEnvironmentSpec = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs
///                 {
///                     MachineSpec = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs
///                     {
///                         MachineType = "n1-standard-4",
///                         AcceleratorType = "NVIDIA_TESLA_T4",
///                         AcceleratorCount = 1,
///                         GpuPartitionSize = "1g.10gb",
///                         TpuTopology = "2x2",
///                     },
///                     PersistentDiskSpec = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs
///                     {
///                         DiskSizeGb = "100",
///                         DiskType = "pd-standard",
///                     },
///                     NetworkSpec = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs
///                     {
///                         EnableInternetAccess = true,
///                         Network = myNetwork.Id,
///                         Subnetwork = mySubnetwork.Id,
///                     },
///                 },
///                 EncryptionSpec = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpecArgs
///                 {
///                     KmsKeyName = "my-key",
///                 },
///                 Labels =
///                 {
///                     { "test", "value" },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notebook, err := storage.NewBucketObject(ctx, "notebook", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("hello_world.ipynb"),
/// 			Bucket: bucket.Name,
/// 			Content: pulumi.String(`    {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("colab-test-default"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySubnetwork, err := compute.NewSubnetwork(ctx, "my_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("colab-test-default"),
/// 			Network:     myNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Region:      pulumi.String("us-central1"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// 			DisplayName:           pulumi.String("full-notebook-schedule"),
/// 			Location:              pulumi.String("us-central1"),
/// 			MaxConcurrentRunCount: pulumi.String("2"),
/// 			Cron:                  pulumi.String("*/5 * * * *"),
/// 			StartTime:             pulumi.String("2030-01-01T00:00:00Z"),
/// 			CreateNotebookExecutionJobRequest: &colab.ScheduleCreateNotebookExecutionJobRequestArgs{
/// 				Parent: pulumi.Sprintf("projects/%v/locations/us-central1", project.ProjectId),
/// 				NotebookExecutionJob: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// 					DisplayName: pulumi.String("test-notebook-execution-job"),
/// 					GcsOutputUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					ServiceAccount: pulumi.String("my@service-account.com"),
/// 					KernelName:     pulumi.String("python3"),
/// 					GcsNotebookSource: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs{
/// 						Uri: pulumi.All(notebook.Bucket, notebook.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucket := _args[0].(string)
/// 							name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// 						}).(pulumi.StringOutput),
/// 						Generation: notebook.Generation,
/// 					},
/// 					CustomEnvironmentSpec: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs{
/// 						MachineSpec: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs{
/// 							MachineType:      pulumi.String("n1-standard-4"),
/// 							AcceleratorType:  pulumi.String("NVIDIA_TESLA_T4"),
/// 							AcceleratorCount: pulumi.Int(1),
/// 							GpuPartitionSize: pulumi.String("1g.10gb"),
/// 							TpuTopology:      pulumi.String("2x2"),
/// 						},
/// 						PersistentDiskSpec: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs{
/// 							DiskSizeGb: pulumi.String("100"),
/// 							DiskType:   pulumi.String("pd-standard"),
/// 						},
/// 						NetworkSpec: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs{
/// 							EnableInternetAccess: pulumi.Bool(true),
/// 							Network:              myNetwork.ID().ToIDOutput().ToStringOutput(),
/// 							Subnetwork:           mySubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 					EncryptionSpec: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpecArgs{
/// 						KmsKeyName: pulumi.String("my-key"),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"test": pulumi.String("value"),
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
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "my_bucket"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucketobject" "notebook" {
///   name    = "hello_world.ipynb"
///   bucket  = gcp_storage_bucket.bucket.name
///   content = "    {\n      \\\"cells\\\": [\n        {\n          \\\"cell_type\\\": \\\"code\\\",\n          \\\"execution_count\\\": null,\n          \\\"metadata\\\": {},\n          \\\"outputs\\\": [],\n          \\\"source\\\": [\n            \\\"print(\\\\\\\"Hello, World!\\\\\\\")\\\"\n          ]\n        }\n      ],\n      \\\"metadata\\\": {\n        \\\"kernelspec\\\": {\n          \\\"display_name\\\": \\\"Python 3\\\",\n          \\\"language\\\": \\\"python\\\",\n          \\\"name\\\": \\\"python3\\\"\n        },\n        \\\"language_info\\\": {\n          \\\"codemirror_mode\\\": {\n            \\\"name\\\": \\\"ipython\\\",\n            \\\"version\\\": 3\n          },\n          \\\"file_extension\\\": \\\".py\\\",\n          \\\"mimetype\\\": \\\"text/x-python\\\",\n          \\\"name\\\": \\\"python\\\",\n          \\\"nbconvert_exporter\\\": \\\"python\\\",\n          \\\"pygments_lexer\\\": \\\"ipython3\\\",\n          \\\"version\\\": \\\"3.8.5\\\"\n        }\n      },\n      \\\"nbformat\\\": 4,\n      \\\"nbformat_minor\\\": 4\n    }\n"
/// }
/// resource "gcp_compute_network" "my_network" {
///   name                    = "colab-test-default"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "my_subnetwork" {
///   name          = "colab-test-default"
///   network       = gcp_compute_network.my_network.id
///   region        = "us-central1"
///   ip_cidr_range = "10.0.1.0/24"
/// }
/// resource "gcp_colab_schedule" "schedule" {
///   display_name             = "full-notebook-schedule"
///   location                 = "us-central1"
///   max_concurrent_run_count = 2
///   cron                     = "*/5 * * * *"
///   start_time               = "2030-01-01T00:00:00Z"
///   create_notebook_execution_job_request = {
///     parent ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1"
///     notebook_execution_job = {
///       display_name    = "test-notebook-execution-job"
///       gcs_output_uri  ="gs://${gcp_storage_bucket.bucket.name}"
///       service_account = "my@service-account.com"
///       kernel_name     = "python3"
///       gcs_notebook_source = {
///         uri        ="gs://${gcp_storage_bucketobject.notebook.bucket}/${gcp_storage_bucketobject.notebook.name}"
///         generation = gcp_storage_bucketobject.notebook.generation
///       }
///       custom_environment_spec = {
///         machine_spec = {
///           machine_type       = "n1-standard-4"
///           accelerator_type   = "NVIDIA_TESLA_T4"
///           accelerator_count  = 1
///           gpu_partition_size = "1g.10gb"
///           tpu_topology       = "2x2"
///         }
///         persistent_disk_spec = {
///           disk_size_gb = "100"
///           disk_type    = "pd-standard"
///         }
///         network_spec = {
///           enable_internet_access = true
///           network                = gcp_compute_network.my_network.id
///           subnetwork             = gcp_compute_subnetwork.my_subnetwork.id
///         }
///       }
///       encryption_spec = {
///         kms_key_name = "my-key"
///       }
///       labels = {
///         "test" = "value"
///       }
///     }
///   }
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpecArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my_bucket")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var notebook = new BucketObject("notebook", BucketObjectArgs.builder()
///             .name("hello_world.ipynb")
///             .bucket(bucket.name())
///             .content("""
///     {
///       \"cells\": [
///         {
///           \"cell_type\": \"code\",
///           \"execution_count\": null,
///           \"metadata\": {},
///           \"outputs\": [],
///           \"source\": [
///             \"print(\\\"Hello, World!\\\")\"
///           ]
///         }
///       ],
///       \"metadata\": {
///         \"kernelspec\": {
///           \"display_name\": \"Python 3\",
///           \"language\": \"python\",
///           \"name\": \"python3\"
///         },
///         \"language_info\": {
///           \"codemirror_mode\": {
///             \"name\": \"ipython\",
///             \"version\": 3
///           },
///           \"file_extension\": \".py\",
///           \"mimetype\": \"text/x-python\",
///           \"name\": \"python\",
///           \"nbconvert_exporter\": \"python\",
///           \"pygments_lexer\": \"ipython3\",
///           \"version\": \"3.8.5\"
///         }
///       },
///       \"nbformat\": 4,
///       \"nbformat_minor\": 4
///     }
///             """)
///             .build());
///
///         var myNetwork = new Network("myNetwork", NetworkArgs.builder()
///             .name("colab-test-default")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var mySubnetwork = new Subnetwork("mySubnetwork", SubnetworkArgs.builder()
///             .name("colab-test-default")
///             .network(myNetwork.id())
///             .region("us-central1")
///             .ipCidrRange("10.0.1.0/24")
///             .build());
///
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .displayName("full-notebook-schedule")
///             .location("us-central1")
///             .maxConcurrentRunCount("2")
///             .cron("*/5 * * * *")
///             .startTime("2030-01-01T00:00:00Z")
///             .createNotebookExecutionJobRequest(ScheduleCreateNotebookExecutionJobRequestArgs.builder()
///                 .parent(String.format("projects/%s/locations/us-central1", project.projectId()))
///                 .notebookExecutionJob(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
///                     .displayName("test-notebook-execution-job")
///                     .gcsOutputUri(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                     .serviceAccount("my@service-account.com")
///                     .kernelName("python3")
///                     .gcsNotebookSource(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs.builder()
///                         .uri(Output.tuple(notebook.bucket(), notebook.name()).applyValue(values -> {
///                             var bucket = values.t1;
///                             var name = values.t2;
///                             return String.format("gs://%s/%s", bucket,name);
///                         }))
///                         .generation(notebook.generation())
///                         .build())
///                     .customEnvironmentSpec(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecArgs.builder()
///                         .machineSpec(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecArgs.builder()
///                             .machineType("n1-standard-4")
///                             .acceleratorType("NVIDIA_TESLA_T4")
///                             .acceleratorCount(1)
///                             .gpuPartitionSize("1g.10gb")
///                             .tpuTopology("2x2")
///                             .build())
///                         .persistentDiskSpec(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpecArgs.builder()
///                             .diskSizeGb("100")
///                             .diskType("pd-standard")
///                             .build())
///                         .networkSpec(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpecArgs.builder()
///                             .enableInternetAccess(true)
///                             .network(myNetwork.id())
///                             .subnetwork(mySubnetwork.id())
///                             .build())
///                         .build())
///                     .encryptionSpec(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpecArgs.builder()
///                         .kmsKeyName("my-key")
///                         .build())
///                     .labels(Map.of("test", "value"))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my_bucket
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   notebook:
///     type: gcp:storage:BucketObject
///     properties:
///       name: hello_world.ipynb
///       bucket: ${bucket.name}
///       content: |2
///             {
///               \"cells\": [
///                 {
///                   \"cell_type\": \"code\",
///                   \"execution_count\": null,
///                   \"metadata\": {},
///                   \"outputs\": [],
///                   \"source\": [
///                     \"print(\\\"Hello, World!\\\")\"
///                   ]
///                 }
///               ],
///               \"metadata\": {
///                 \"kernelspec\": {
///                   \"display_name\": \"Python 3\",
///                   \"language\": \"python\",
///                   \"name\": \"python3\"
///                 },
///                 \"language_info\": {
///                   \"codemirror_mode\": {
///                     \"name\": \"ipython\",
///                     \"version\": 3
///                   },
///                   \"file_extension\": \".py\",
///                   \"mimetype\": \"text/x-python\",
///                   \"name\": \"python\",
///                   \"nbconvert_exporter\": \"python\",
///                   \"pygments_lexer\": \"ipython3\",
///                   \"version\": \"3.8.5\"
///                 }
///               },
///               \"nbformat\": 4,
///               \"nbformat_minor\": 4
///             }
///   myNetwork:
///     type: gcp:compute:Network
///     name: my_network
///     properties:
///       name: colab-test-default
///       autoCreateSubnetworks: false
///   mySubnetwork:
///     type: gcp:compute:Subnetwork
///     name: my_subnetwork
///     properties:
///       name: colab-test-default
///       network: ${myNetwork.id}
///       region: us-central1
///       ipCidrRange: 10.0.1.0/24
///   schedule:
///     type: gcp:colab:Schedule
///     properties:
///       displayName: full-notebook-schedule
///       location: us-central1
///       maxConcurrentRunCount: 2
///       cron: '*/5 * * * *'
///       startTime: 2030-01-01T00:00:00Z
///       createNotebookExecutionJobRequest:
///         parent: projects/${project.projectId}/locations/us-central1
///         notebookExecutionJob:
///           displayName: test-notebook-execution-job
///           gcsOutputUri: gs://${bucket.name}
///           serviceAccount: my@service-account.com
///           kernelName: python3
///           gcsNotebookSource:
///             uri: gs://${notebook.bucket}/${notebook.name}
///             generation: ${notebook.generation}
///           customEnvironmentSpec:
///             machineSpec:
///               machineType: n1-standard-4
///               acceleratorType: NVIDIA_TESLA_T4
///               acceleratorCount: 1
///               gpuPartitionSize: 1g.10gb
///               tpuTopology: 2x2
///             persistentDiskSpec:
///               diskSizeGb: '100'
///               diskType: pd-standard
///             networkSpec:
///               enableInternetAccess: true
///               network: ${myNetwork.id}
///               subnetwork: ${mySubnetwork.id}
///           encryptionSpec:
///             kmsKeyName: my-key
///           labels:
///             test: value
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Colab Schedule Pipeline
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "pipeline-job",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const myNetwork = new gcp.compute.Network("my_network", {
///     name: "colab-test-default",
///     autoCreateSubnetworks: false,
/// });
/// const schedule = new gcp.colab.Schedule("schedule", {
///     displayName: "test-schedule",
///     location: "us-central1",
///     maxConcurrentRunCount: "2",
///     cron: "*/5 * * * *",
///     allowQueueing: true,
///     maxConcurrentActiveRunCount: "2",
///     maxRunCount: "10",
///     startTime: "2030-01-01T00:00:00Z",
///     endTime: "2030-01-02T00:00:00Z",
///     createPipelineJobRequest: {
///         parent: project.then(project => `projects/${project.projectId}/locations/us-central1`),
///         pipelineJob: {
///             displayName: "test-pipeline-job",
///             preflightValidations: true,
///             network: myNetwork.id,
///             serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///             templateUri: "https://us-kfp.pkg.dev/proj/repo/template/v1",
///             reservedIpRanges: ["vertex-ai-ip-range"],
///             labels: {
///                 key: "value-one",
///             },
///             encryptionSpec: {
///                 kmsKeyName: "my-key",
///             },
///             pscInterfaceConfig: {
///                 networkAttachment: project.then(project => `projects/${project.projectId}/regions/us-central1/networkAttachments/my-attachment`),
///                 dnsPeeringConfigs: [{
///                     domain: "my-internal-domain.corp.",
///                     targetNetwork: myNetwork.id,
///                     targetProject: project.then(project => project.projectId),
///                 }],
///             },
///             pipelineSpec: JSON.stringify({
///                 pipelineInfo: {
///                     name: "hello-world",
///                 },
///                 root: {
///                     dag: {
///                         tasks: {},
///                     },
///                 },
///                 schemaVersion: "2.1.0",
///                 sdkVersion: "kfp-2.0.0",
///             }),
///             runtimeConfig: {
///                 gcsOutputDirectory: pulumi.interpolate`gs://${bucket.name}/pipeline_root`,
///                 failurePolicy: "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///                 parameterValues: {
///                     param1: "val1",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// bucket = gcp.storage.Bucket("bucket",
///     name="pipeline-job",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// my_network = gcp.compute.Network("my_network",
///     name="colab-test-default",
///     auto_create_subnetworks=False)
/// schedule = gcp.colab.Schedule("schedule",
///     display_name="test-schedule",
///     location="us-central1",
///     max_concurrent_run_count="2",
///     cron="*/5 * * * *",
///     allow_queueing=True,
///     max_concurrent_active_run_count="2",
///     max_run_count="10",
///     start_time="2030-01-01T00:00:00Z",
///     end_time="2030-01-02T00:00:00Z",
///     create_pipeline_job_request={
///         "parent": f"projects/{project.project_id}/locations/us-central1",
///         "pipeline_job": {
///             "display_name": "test-pipeline-job",
///             "preflight_validations": True,
///             "network": my_network.id,
///             "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
///             "template_uri": "https://us-kfp.pkg.dev/proj/repo/template/v1",
///             "reserved_ip_ranges": ["vertex-ai-ip-range"],
///             "labels": {
///                 "key": "value-one",
///             },
///             "encryption_spec": {
///                 "kms_key_name": "my-key",
///             },
///             "psc_interface_config": {
///                 "network_attachment": f"projects/{project.project_id}/regions/us-central1/networkAttachments/my-attachment",
///                 "dns_peering_configs": [{
///                     "domain": "my-internal-domain.corp.",
///                     "target_network": my_network.id,
///                     "target_project": project.project_id,
///                 }],
///             },
///             "pipeline_spec": json.dumps({
///                 "pipelineInfo": {
///                     "name": "hello-world",
///                 },
///                 "root": {
///                     "dag": {
///                         "tasks": {},
///                     },
///                 },
///                 "schemaVersion": "2.1.0",
///                 "sdkVersion": "kfp-2.0.0",
///             }),
///             "runtime_config": {
///                 "gcs_output_directory": bucket.name.apply(lambda name: f"gs://{name}/pipeline_root"),
///                 "failure_policy": "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///                 "parameter_values": {
///                     "param1": "val1",
///                 },
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "pipeline-job",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var myNetwork = new Gcp.Compute.Network("my_network", new()
///     {
///         Name = "colab-test-default",
///         AutoCreateSubnetworks = false,
///     });
///
///     var schedule = new Gcp.Colab.Schedule("schedule", new()
///     {
///         DisplayName = "test-schedule",
///         Location = "us-central1",
///         MaxConcurrentRunCount = "2",
///         Cron = "*/5 * * * *",
///         AllowQueueing = true,
///         MaxConcurrentActiveRunCount = "2",
///         MaxRunCount = "10",
///         StartTime = "2030-01-01T00:00:00Z",
///         EndTime = "2030-01-02T00:00:00Z",
///         CreatePipelineJobRequest = new Gcp.Colab.Inputs.ScheduleCreatePipelineJobRequestArgs
///         {
///             Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1",
///             PipelineJob = new Gcp.Colab.Inputs.ScheduleCreatePipelineJobRequestPipelineJobArgs
///             {
///                 DisplayName = "test-pipeline-job",
///                 PreflightValidations = true,
///                 Network = myNetwork.Id,
///                 ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///                 TemplateUri = "https://us-kfp.pkg.dev/proj/repo/template/v1",
///                 ReservedIpRanges = new[]
///                 {
///                     "vertex-ai-ip-range",
///                 },
///                 Labels =
///                 {
///                     { "key", "value-one" },
///                 },
///                 EncryptionSpec = new Gcp.Colab.Inputs.ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpecArgs
///                 {
///                     KmsKeyName = "my-key",
///                 },
///                 PscInterfaceConfig = new Gcp.Colab.Inputs.ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigArgs
///                 {
///                     NetworkAttachment = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/regions/us-central1/networkAttachments/my-attachment",
///                     DnsPeeringConfigs = new[]
///                     {
///                         new Gcp.Colab.Inputs.ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigArgs
///                         {
///                             Domain = "my-internal-domain.corp.",
///                             TargetNetwork = myNetwork.Id,
///                             TargetProject = project.Apply(getProjectResult => getProjectResult.ProjectId),
///                         },
///                     },
///                 },
///                 PipelineSpec = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["pipelineInfo"] = new Dictionary<string, object?>
///                     {
///                         ["name"] = "hello-world",
///                     },
///                     ["root"] = new Dictionary<string, object?>
///                     {
///                         ["dag"] = new Dictionary<string, object?>
///                         {
///                             ["tasks"] = new Dictionary<string, object?>
///                             {
///                             },
///                         },
///                     },
///                     ["schemaVersion"] = "2.1.0",
///                     ["sdkVersion"] = "kfp-2.0.0",
///                 }),
///                 RuntimeConfig = new Gcp.Colab.Inputs.ScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs
///                 {
///                     GcsOutputDirectory = bucket.Name.Apply(name => $"gs://{name}/pipeline_root"),
///                     FailurePolicy = "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///                     ParameterValues =
///                     {
///                         { "param1", "val1" },
///                     },
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
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("pipeline-job"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("colab-test-default"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"pipelineInfo": map[string]string{
/// 				"name": "hello-world",
/// 			},
/// 			"root": map[string]map[string]map[string]interface{}{
/// 				"dag": map[string]map[string]interface{}{
/// 					"tasks": map[string]interface{}{},
/// 				},
/// 			},
/// 			"schemaVersion": "2.1.0",
/// 			"sdkVersion":    "kfp-2.0.0",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// 			DisplayName:                 pulumi.String("test-schedule"),
/// 			Location:                    pulumi.String("us-central1"),
/// 			MaxConcurrentRunCount:       pulumi.String("2"),
/// 			Cron:                        pulumi.String("*/5 * * * *"),
/// 			AllowQueueing:               pulumi.Bool(true),
/// 			MaxConcurrentActiveRunCount: pulumi.String("2"),
/// 			MaxRunCount:                 pulumi.String("10"),
/// 			StartTime:                   pulumi.String("2030-01-01T00:00:00Z"),
/// 			EndTime:                     pulumi.String("2030-01-02T00:00:00Z"),
/// 			CreatePipelineJobRequest: &colab.ScheduleCreatePipelineJobRequestArgs{
/// 				Parent: pulumi.Sprintf("projects/%v/locations/us-central1", project.ProjectId),
/// 				PipelineJob: &colab.ScheduleCreatePipelineJobRequestPipelineJobArgs{
/// 					DisplayName:          pulumi.String("test-pipeline-job"),
/// 					PreflightValidations: pulumi.Bool(true),
/// 					Network:              myNetwork.ID().ToIDOutput().ToStringOutput(),
/// 					ServiceAccount:       pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 					TemplateUri:          pulumi.String("https://us-kfp.pkg.dev/proj/repo/template/v1"),
/// 					ReservedIpRanges: pulumi.StringArray{
/// 						pulumi.String("vertex-ai-ip-range"),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"key": pulumi.String("value-one"),
/// 					},
/// 					EncryptionSpec: &colab.ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpecArgs{
/// 						KmsKeyName: pulumi.String("my-key"),
/// 					},
/// 					PscInterfaceConfig: &colab.ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigArgs{
/// 						NetworkAttachment: pulumi.Sprintf("projects/%v/regions/us-central1/networkAttachments/my-attachment", project.ProjectId),
/// 						DnsPeeringConfigs: colab.ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigArray{
/// 							&colab.ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigArgs{
/// 								Domain:        pulumi.String("my-internal-domain.corp."),
/// 								TargetNetwork: myNetwork.ID().ToIDOutput().ToStringOutput(),
/// 								TargetProject: pulumi.String(project.ProjectId),
/// 							},
/// 						},
/// 					},
/// 					PipelineSpec: pulumi.String(json0),
/// 					RuntimeConfig: &colab.ScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs{
/// 						GcsOutputDirectory: bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("gs://%v/pipeline_root", name), nil
/// 						}).(pulumi.StringOutput),
/// 						FailurePolicy: pulumi.String("PIPELINE_FAILURE_POLICY_FAIL_FAST"),
/// 						ParameterValues: pulumi.StringMap{
/// 							"param1": pulumi.String("val1"),
/// 						},
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
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "pipeline-job"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_compute_network" "my_network" {
///   name                    = "colab-test-default"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_colab_schedule" "schedule" {
///   display_name                    = "test-schedule"
///   location                        = "us-central1"
///   max_concurrent_run_count        = 2
///   cron                            = "*/5 * * * *"
///   allow_queueing                  = true
///   max_concurrent_active_run_count = 2
///   max_run_count                   = "10"
///   start_time                      = "2030-01-01T00:00:00Z"
///   end_time                        = "2030-01-02T00:00:00Z"
///   create_pipeline_job_request = {
///     parent ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1"
///     pipeline_job = {
///       display_name          = "test-pipeline-job"
///       preflight_validations = true
///       network               = gcp_compute_network.my_network.id
///       service_account       ="${data.gcp_organizations_getproject.project.number}-compute@developer.gserviceaccount.com"
///       template_uri          = "https://us-kfp.pkg.dev/proj/repo/template/v1"
///       reserved_ip_ranges    = ["vertex-ai-ip-range"]
///       labels = {
///         "key" = "value-one"
///       }
///       encryption_spec = {
///         kms_key_name = "my-key"
///       }
///       psc_interface_config = {
///         network_attachment ="projects/${data.gcp_organizations_getproject.project.project_id}/regions/us-central1/networkAttachments/my-attachment"
///         dns_peering_configs = [{
///           "domain"        = "my-internal-domain.corp."
///           "targetNetwork" = gcp_compute_network.my_network.id
///           "targetProject" = data.gcp_organizations_getproject.project.project_id
///         }]
///       }
///       pipeline_spec = jsonencode({
///         "pipelineInfo" = {
///           "name" = "hello-world"
///         }
///         "root" = {
///           "dag" = {
///             "tasks" = {}
///           }
///         }
///         "schemaVersion" = "2.1.0"
///         "sdkVersion"    = "kfp-2.0.0"
///       })
///       runtime_config = {
///         gcs_output_directory ="gs://${gcp_storage_bucket.bucket.name}/pipeline_root"
///         failure_policy       = "PIPELINE_FAILURE_POLICY_FAIL_FAST"
///         parameter_values = {
///           "param1" = "val1"
///         }
///       }
///     }
///   }
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreatePipelineJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreatePipelineJobRequestPipelineJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpecArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("pipeline-job")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var myNetwork = new Network("myNetwork", NetworkArgs.builder()
///             .name("colab-test-default")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .displayName("test-schedule")
///             .location("us-central1")
///             .maxConcurrentRunCount("2")
///             .cron("*/5 * * * *")
///             .allowQueueing(true)
///             .maxConcurrentActiveRunCount("2")
///             .maxRunCount("10")
///             .startTime("2030-01-01T00:00:00Z")
///             .endTime("2030-01-02T00:00:00Z")
///             .createPipelineJobRequest(ScheduleCreatePipelineJobRequestArgs.builder()
///                 .parent(String.format("projects/%s/locations/us-central1", project.projectId()))
///                 .pipelineJob(ScheduleCreatePipelineJobRequestPipelineJobArgs.builder()
///                     .displayName("test-pipeline-job")
///                     .preflightValidations(true)
///                     .network(myNetwork.id())
///                     .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///                     .templateUri("https://us-kfp.pkg.dev/proj/repo/template/v1")
///                     .reservedIpRanges("vertex-ai-ip-range")
///                     .labels(Map.of("key", "value-one"))
///                     .encryptionSpec(ScheduleCreatePipelineJobRequestPipelineJobEncryptionSpecArgs.builder()
///                         .kmsKeyName("my-key")
///                         .build())
///                     .pscInterfaceConfig(ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigArgs.builder()
///                         .networkAttachment(String.format("projects/%s/regions/us-central1/networkAttachments/my-attachment", project.projectId()))
///                         .dnsPeeringConfigs(ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigArgs.builder()
///                             .domain("my-internal-domain.corp.")
///                             .targetNetwork(myNetwork.id())
///                             .targetProject(project.projectId())
///                             .build())
///                         .build())
///                     .pipelineSpec(serializeJson(
///                         jsonObject(
///                             jsonProperty("pipelineInfo", jsonObject(
///                                 jsonProperty("name", "hello-world")
///                             )),
///                             jsonProperty("root", jsonObject(
///                                 jsonProperty("dag", jsonObject(
///                                     jsonProperty("tasks", jsonObject(
///
///                                     ))
///                                 ))
///                             )),
///                             jsonProperty("schemaVersion", "2.1.0"),
///                             jsonProperty("sdkVersion", "kfp-2.0.0")
///                         )))
///                     .runtimeConfig(ScheduleCreatePipelineJobRequestPipelineJobRuntimeConfigArgs.builder()
///                         .gcsOutputDirectory(bucket.name().applyValue(_name -> String.format("gs://%s/pipeline_root", _name)))
///                         .failurePolicy("PIPELINE_FAILURE_POLICY_FAIL_FAST")
///                         .parameterValues(Map.of("param1", "val1"))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: pipeline-job
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   myNetwork:
///     type: gcp:compute:Network
///     name: my_network
///     properties:
///       name: colab-test-default
///       autoCreateSubnetworks: false
///   schedule:
///     type: gcp:colab:Schedule
///     properties:
///       displayName: test-schedule
///       location: us-central1
///       maxConcurrentRunCount: 2
///       cron: '*/5 * * * *'
///       allowQueueing: true
///       maxConcurrentActiveRunCount: 2
///       maxRunCount: '10'
///       startTime: 2030-01-01T00:00:00Z
///       endTime: 2030-01-02T00:00:00Z
///       createPipelineJobRequest:
///         parent: projects/${project.projectId}/locations/us-central1
///         pipelineJob:
///           displayName: test-pipeline-job
///           preflightValidations: true
///           network: ${myNetwork.id}
///           serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///           templateUri: https://us-kfp.pkg.dev/proj/repo/template/v1
///           reservedIpRanges:
///             - vertex-ai-ip-range
///           labels:
///             key: value-one
///           encryptionSpec:
///             kmsKeyName: my-key
///           pscInterfaceConfig:
///             networkAttachment: projects/${project.projectId}/regions/us-central1/networkAttachments/my-attachment
///             dnsPeeringConfigs:
///               - domain: my-internal-domain.corp.
///                 targetNetwork: ${myNetwork.id}
///                 targetProject: ${project.projectId}
///           pipelineSpec:
///             fn::toJSON:
///               pipelineInfo:
///                 name: hello-world
///               root:
///                 dag:
///                   tasks: {}
///               schemaVersion: 2.1.0
///               sdkVersion: kfp-2.0.0
///           runtimeConfig:
///             gcsOutputDirectory: gs://${bucket.name}/pipeline_root
///             failurePolicy: PIPELINE_FAILURE_POLICY_FAIL_FAST
///             parameterValues:
///               param1: val1
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
/// Schedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/schedules/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Schedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/schedule:Schedule default projects/{{project}}/locations/{{location}}/schedules/{{name}}
/// $ pulumi import gcp:colab/schedule:Schedule default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:colab/schedule:Schedule default {{location}}/{{name}}
/// ```
class Schedule extends pulumi.CustomResource {
  /// Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  late final pulumi.Output<bool?> allowQueueing;
  /// Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  late final pulumi.Output<bool> catchUp;
  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  late final pulumi.Output<ScheduleCreateNotebookExecutionJobRequest?> createNotebookExecutionJobRequest;
  /// Request message for PipelineService.CreatePipelineJob.
  /// Structure is documented below.
  late final pulumi.Output<ScheduleCreatePipelineJobRequest?> createPipelineJobRequest;
  /// Timestamp when this Schedule was created.
  late final pulumi.Output<String> createTime;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  late final pulumi.Output<String> cron;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  late final pulumi.Output<String?> desiredState;
  /// Required. The display name of the Schedule.
  late final pulumi.Output<String> displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  late final pulumi.Output<String?> endTime;
  /// Timestamp when this Schedule was last paused. Unset if never paused.
  late final pulumi.Output<String> lastPauseTime;
  /// Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  late final pulumi.Output<String> lastResumeTime;
  /// Status of a scheduled run.
  /// Structure is documented below.
  late final pulumi.Output<List<ScheduleLastScheduledRunResponse>> lastScheduledRunResponses;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final pulumi.Output<String> location;
  /// Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  late final pulumi.Output<String?> maxConcurrentActiveRunCount;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  late final pulumi.Output<String> maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  late final pulumi.Output<String?> maxRunCount;
  /// The resource name of the Schedule
  late final pulumi.Output<String> name;
  /// Timestamp when this Schedule should schedule the next run. Having a nextRunTime in the past means the runs are being started behind schedule.
  late final pulumi.Output<String> nextRunTime;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  late final pulumi.Output<String> startTime;
  /// The number of runs started by this schedule.
  late final pulumi.Output<String> startedRunCount;
  /// Output only. The state of the schedule.
  late final pulumi.Output<String> state;
  /// Timestamp when this Schedule was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_colab_schedule_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/schedule:Schedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    allowQueueing = registerOutput<bool?>('allowQueueing');
    catchUp = registerOutput<bool>('catchUp');
    createNotebookExecutionJobRequest = registerOutput<ScheduleCreateNotebookExecutionJobRequest?>('createNotebookExecutionJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createPipelineJobRequest = registerOutput<ScheduleCreatePipelineJobRequest?>('createPipelineJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    cron = registerOutput<String>('cron');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String?>('endTime');
    lastPauseTime = registerOutput<String>('lastPauseTime');
    lastResumeTime = registerOutput<String>('lastResumeTime');
    lastScheduledRunResponses = registerOutput<List<ScheduleLastScheduledRunResponse>>('lastScheduledRunResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduleLastScheduledRunResponse>(guardedValue, (value) => ScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    maxConcurrentActiveRunCount = registerOutput<String?>('maxConcurrentActiveRunCount');
    maxConcurrentRunCount = registerOutput<String>('maxConcurrentRunCount');
    maxRunCount = registerOutput<String?>('maxRunCount');
    this.name = registerOutput<String>('name');
    nextRunTime = registerOutput<String>('nextRunTime');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    startedRunCount = registerOutput<String>('startedRunCount');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Schedule] resource's state with the given [name] and [id].
  static Schedule get(
    String name,
    pulumi.Input<String> id, {
    ScheduleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Schedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Schedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/schedule:Schedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowQueueing = registerOutput<bool?>('allowQueueing');
    catchUp = registerOutput<bool>('catchUp');
    createNotebookExecutionJobRequest = registerOutput<ScheduleCreateNotebookExecutionJobRequest?>('createNotebookExecutionJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createPipelineJobRequest = registerOutput<ScheduleCreatePipelineJobRequest?>('createPipelineJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    cron = registerOutput<String>('cron');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String?>('endTime');
    lastPauseTime = registerOutput<String>('lastPauseTime');
    lastResumeTime = registerOutput<String>('lastResumeTime');
    lastScheduledRunResponses = registerOutput<List<ScheduleLastScheduledRunResponse>>('lastScheduledRunResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduleLastScheduledRunResponse>(guardedValue, (value) => ScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    maxConcurrentActiveRunCount = registerOutput<String?>('maxConcurrentActiveRunCount');
    maxConcurrentRunCount = registerOutput<String>('maxConcurrentRunCount');
    maxRunCount = registerOutput<String?>('maxRunCount');
    this.name = registerOutput<String>('name');
    nextRunTime = registerOutput<String>('nextRunTime');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    startedRunCount = registerOutput<String>('startedRunCount');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Schedule] resource.
  Schedule.reference(String urn)
    : super(
        'gcp:colab/schedule:Schedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowQueueing = registerOutput<bool?>('allowQueueing');
    catchUp = registerOutput<bool>('catchUp');
    createNotebookExecutionJobRequest = registerOutput<ScheduleCreateNotebookExecutionJobRequest?>('createNotebookExecutionJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createPipelineJobRequest = registerOutput<ScheduleCreatePipelineJobRequest?>('createPipelineJobRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    cron = registerOutput<String>('cron');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String?>('endTime');
    lastPauseTime = registerOutput<String>('lastPauseTime');
    lastResumeTime = registerOutput<String>('lastResumeTime');
    lastScheduledRunResponses = registerOutput<List<ScheduleLastScheduledRunResponse>>('lastScheduledRunResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduleLastScheduledRunResponse>(guardedValue, (value) => ScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    maxConcurrentActiveRunCount = registerOutput<String?>('maxConcurrentActiveRunCount');
    maxConcurrentRunCount = registerOutput<String>('maxConcurrentRunCount');
    maxRunCount = registerOutput<String?>('maxRunCount');
    this.name = registerOutput<String>('name');
    nextRunTime = registerOutput<String>('nextRunTime');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    startedRunCount = registerOutput<String>('startedRunCount');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
