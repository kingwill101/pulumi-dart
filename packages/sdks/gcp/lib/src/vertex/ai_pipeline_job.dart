import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_args.dart';
import 'ai_pipeline_job_encryption_spec.dart';
import 'ai_pipeline_job_error.dart';
import 'ai_pipeline_job_job_detail.dart';
import 'ai_pipeline_job_psc_interface_config.dart';
import 'ai_pipeline_job_runtime_config.dart';
import 'ai_pipeline_job_state.dart';
import 'ai_pipeline_job_template_metadata.dart';

/// An instance of a machine learning PipelineJob. A PipelineJob runs a pipeline
/// created using Kubeflow Pipelines or Vertex AI Pipelines.
///
///
/// To get more information about PipelineJob, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.pipelineJobs)
/// * How-to Guides
/// * [Introduction to Vertex AI Pipelines](https://cloud.google.com/vertex-ai/docs/pipelines/introduction)
///
///
/// ## Example Usage
///
/// ### Vertex Ai Pipeline Job Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example-pipeline-bucket",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const pipelineJob = new gcp.vertex.AiPipelineJob("pipeline_job", {
///     displayName: "example-pipeline-job",
///     pipelineJobId: "example-pipeline-job",
///     region: "us-central1",
///     preflightValidations: false,
///     deletionPolicy: "FORCE",
///     pipelineSpec: JSON.stringify({
///         components: {
///             "comp-hello-world": {
///                 executorLabel: "exec-hello-world",
///                 inputDefinitions: {
///                     parameters: {
///                         text: {
///                             parameterType: "STRING",
///                         },
///                     },
///                 },
///             },
///         },
///         deploymentSpec: {
///             executors: {
///                 "exec-hello-world": {
///                     container: {
///                         args: [
///                             "--text",
///                             "{{$.inputs.parameters['text']}}",
///                         ],
///                         command: [
///                             "sh",
///                             "-c",
///                             "echo \"$0\"",
///                         ],
///                         image: "python:3.11",
///                     },
///                 },
///             },
///         },
///         pipelineInfo: {
///             name: "hello-world-pipeline",
///         },
///         root: {
///             dag: {
///                 tasks: {
///                     "hello-world": {
///                         cachingOptions: {
///                             enableCache: true,
///                         },
///                         componentRef: {
///                             name: "comp-hello-world",
///                         },
///                         inputs: {
///                             parameters: {
///                                 text: {
///                                     componentInputParameter: "text",
///                                 },
///                             },
///                         },
///                         taskInfo: {
///                             name: "hello-world",
///                         },
///                     },
///                 },
///             },
///             inputDefinitions: {
///                 parameters: {
///                     text: {
///                         defaultValue: "Hello World",
///                         isOptional: true,
///                         parameterType: "STRING",
///                     },
///                 },
///             },
///         },
///         schemaVersion: "2.1.0",
///         sdkVersion: "kfp-2.7.0",
///     }),
///     runtimeConfig: {
///         gcsOutputDirectory: pulumi.interpolate`gs://${bucket.name}/output`,
///         failurePolicy: "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///         parameterValues: {
///             text: "Hello Vertex AI",
///         },
///     },
///     labels: {
///         env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="example-pipeline-bucket",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// pipeline_job = gcp.vertex.AiPipelineJob("pipeline_job",
///     display_name="example-pipeline-job",
///     pipeline_job_id="example-pipeline-job",
///     region="us-central1",
///     preflight_validations=False,
///     deletion_policy="FORCE",
///     pipeline_spec=json.dumps({
///         "components": {
///             "comp-hello-world": {
///                 "executorLabel": "exec-hello-world",
///                 "inputDefinitions": {
///                     "parameters": {
///                         "text": {
///                             "parameterType": "STRING",
///                         },
///                     },
///                 },
///             },
///         },
///         "deploymentSpec": {
///             "executors": {
///                 "exec-hello-world": {
///                     "container": {
///                         "args": [
///                             "--text",
///                             "{{$.inputs.parameters['text']}}",
///                         ],
///                         "command": [
///                             "sh",
///                             "-c",
///                             "echo \"$0\"",
///                         ],
///                         "image": "python:3.11",
///                     },
///                 },
///             },
///         },
///         "pipelineInfo": {
///             "name": "hello-world-pipeline",
///         },
///         "root": {
///             "dag": {
///                 "tasks": {
///                     "hello-world": {
///                         "cachingOptions": {
///                             "enableCache": True,
///                         },
///                         "componentRef": {
///                             "name": "comp-hello-world",
///                         },
///                         "inputs": {
///                             "parameters": {
///                                 "text": {
///                                     "componentInputParameter": "text",
///                                 },
///                             },
///                         },
///                         "taskInfo": {
///                             "name": "hello-world",
///                         },
///                     },
///                 },
///             },
///             "inputDefinitions": {
///                 "parameters": {
///                     "text": {
///                         "defaultValue": "Hello World",
///                         "isOptional": True,
///                         "parameterType": "STRING",
///                     },
///                 },
///             },
///         },
///         "schemaVersion": "2.1.0",
///         "sdkVersion": "kfp-2.7.0",
///     }),
///     runtime_config={
///         "gcs_output_directory": bucket.name.apply(lambda name: f"gs://{name}/output"),
///         "failure_policy": "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///         "parameter_values": {
///             "text": "Hello Vertex AI",
///         },
///     },
///     labels={
///         "env": "test",
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "example-pipeline-bucket",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var pipelineJob = new Gcp.Vertex.AiPipelineJob("pipeline_job", new()
///     {
///         DisplayName = "example-pipeline-job",
///         PipelineJobId = "example-pipeline-job",
///         Region = "us-central1",
///         PreflightValidations = false,
///         DeletionPolicy = "FORCE",
///         PipelineSpec = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["components"] = new Dictionary<string, object?>
///             {
///                 ["comp-hello-world"] = new Dictionary<string, object?>
///                 {
///                     ["executorLabel"] = "exec-hello-world",
///                     ["inputDefinitions"] = new Dictionary<string, object?>
///                     {
///                         ["parameters"] = new Dictionary<string, object?>
///                         {
///                             ["text"] = new Dictionary<string, object?>
///                             {
///                                 ["parameterType"] = "STRING",
///                             },
///                         },
///                     },
///                 },
///             },
///             ["deploymentSpec"] = new Dictionary<string, object?>
///             {
///                 ["executors"] = new Dictionary<string, object?>
///                 {
///                     ["exec-hello-world"] = new Dictionary<string, object?>
///                     {
///                         ["container"] = new Dictionary<string, object?>
///                         {
///                             ["args"] = new[]
///                             {
///                                 "--text",
///                                 "{{$.inputs.parameters['text']}}",
///                             },
///                             ["command"] = new[]
///                             {
///                                 "sh",
///                                 "-c",
///                                 "echo \"$0\"",
///                             },
///                             ["image"] = "python:3.11",
///                         },
///                     },
///                 },
///             },
///             ["pipelineInfo"] = new Dictionary<string, object?>
///             {
///                 ["name"] = "hello-world-pipeline",
///             },
///             ["root"] = new Dictionary<string, object?>
///             {
///                 ["dag"] = new Dictionary<string, object?>
///                 {
///                     ["tasks"] = new Dictionary<string, object?>
///                     {
///                         ["hello-world"] = new Dictionary<string, object?>
///                         {
///                             ["cachingOptions"] = new Dictionary<string, object?>
///                             {
///                                 ["enableCache"] = true,
///                             },
///                             ["componentRef"] = new Dictionary<string, object?>
///                             {
///                                 ["name"] = "comp-hello-world",
///                             },
///                             ["inputs"] = new Dictionary<string, object?>
///                             {
///                                 ["parameters"] = new Dictionary<string, object?>
///                                 {
///                                     ["text"] = new Dictionary<string, object?>
///                                     {
///                                         ["componentInputParameter"] = "text",
///                                     },
///                                 },
///                             },
///                             ["taskInfo"] = new Dictionary<string, object?>
///                             {
///                                 ["name"] = "hello-world",
///                             },
///                         },
///                     },
///                 },
///                 ["inputDefinitions"] = new Dictionary<string, object?>
///                 {
///                     ["parameters"] = new Dictionary<string, object?>
///                     {
///                         ["text"] = new Dictionary<string, object?>
///                         {
///                             ["defaultValue"] = "Hello World",
///                             ["isOptional"] = true,
///                             ["parameterType"] = "STRING",
///                         },
///                     },
///                 },
///             },
///             ["schemaVersion"] = "2.1.0",
///             ["sdkVersion"] = "kfp-2.7.0",
///         }),
///         RuntimeConfig = new Gcp.Vertex.Inputs.AiPipelineJobRuntimeConfigArgs
///         {
///             GcsOutputDirectory = bucket.Name.Apply(name => $"gs://{name}/output"),
///             FailurePolicy = "PIPELINE_FAILURE_POLICY_FAIL_FAST",
///             ParameterValues =
///             {
///                 { "text", "Hello Vertex AI" },
///             },
///         },
///         Labels =
///         {
///             { "env", "test" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example-pipeline-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"components": map[string]map[string]interface{}{
/// 				"comp-hello-world": map[string]interface{}{
/// 					"executorLabel": "exec-hello-world",
/// 					"inputDefinitions": map[string]map[string]map[string]string{
/// 						"parameters": map[string]map[string]string{
/// 							"text": map[string]string{
/// 								"parameterType": "STRING",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"deploymentSpec": map[string]map[string]map[string]map[string]interface{}{
/// 				"executors": map[string]map[string]map[string]interface{}{
/// 					"exec-hello-world": map[string]map[string]interface{}{
/// 						"container": map[string]interface{}{
/// 							"args": []string{
/// 								"--text",
/// 								"{{$.inputs.parameters['text']}}",
/// 							},
/// 							"command": []string{
/// 								"sh",
/// 								"-c",
/// 								"echo \"$0\"",
/// 							},
/// 							"image": "python:3.11",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"pipelineInfo": map[string]string{
/// 				"name": "hello-world-pipeline",
/// 			},
/// 			"root": map[string]map[string]map[string]map[string]interface{}{
/// 				"dag": map[string]map[string]map[string]interface{}{
/// 					"tasks": map[string]map[string]interface{}{
/// 						"hello-world": map[string]interface{}{
/// 							"cachingOptions": map[string]bool{
/// 								"enableCache": true,
/// 							},
/// 							"componentRef": map[string]string{
/// 								"name": "comp-hello-world",
/// 							},
/// 							"inputs": map[string]map[string]map[string]string{
/// 								"parameters": map[string]map[string]string{
/// 									"text": map[string]string{
/// 										"componentInputParameter": "text",
/// 									},
/// 								},
/// 							},
/// 							"taskInfo": map[string]string{
/// 								"name": "hello-world",
/// 							},
/// 						},
/// 					},
/// 				},
/// 				"inputDefinitions": map[string]map[string]map[string]interface{}{
/// 					"parameters": map[string]map[string]interface{}{
/// 						"text": map[string]interface{}{
/// 							"defaultValue":  "Hello World",
/// 							"isOptional":    true,
/// 							"parameterType": "STRING",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"schemaVersion": "2.1.0",
/// 			"sdkVersion":    "kfp-2.7.0",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiPipelineJob(ctx, "pipeline_job", &vertex.AiPipelineJobArgs{
/// 			DisplayName:          pulumi.String("example-pipeline-job"),
/// 			PipelineJobId:        pulumi.String("example-pipeline-job"),
/// 			Region:               pulumi.String("us-central1"),
/// 			PreflightValidations: pulumi.Bool(false),
/// 			DeletionPolicy:       pulumi.String("FORCE"),
/// 			PipelineSpec:         pulumi.String(json0),
/// 			RuntimeConfig: &vertex.AiPipelineJobRuntimeConfigArgs{
/// 				GcsOutputDirectory: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/output", name), nil
/// 				}).(pulumi.StringOutput),
/// 				FailurePolicy: pulumi.String("PIPELINE_FAILURE_POLICY_FAIL_FAST"),
/// 				ParameterValues: pulumi.StringMap{
/// 					"text": pulumi.String("Hello Vertex AI"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "example-pipeline-bucket"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_vertex_ai_pipeline_job" "pipeline_job" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name          = "example-pipeline-job"
///   pipeline_job_id       = "example-pipeline-job"
///   region                = "us-central1"
///   preflight_validations = false
///   deletion_policy       = "FORCE"
///   pipeline_spec = jsonencode({
///     "components" = {
///       "comp-hello-world" = {
///         "executorLabel" = "exec-hello-world"
///         "inputDefinitions" = {
///           "parameters" = {
///             "text" = {
///               "parameterType" = "STRING"
///             }
///           }
///         }
///       }
///     }
///     "deploymentSpec" = {
///       "executors" = {
///         "exec-hello-world" = {
///           "container" = {
///             "args"    = ["--text", "{{$.inputs.parameters['text']}}"]
///             "command" = ["sh", "-c", "echo \"$0\""]
///             "image"   = "python:3.11"
///           }
///         }
///       }
///     }
///     "pipelineInfo" = {
///       "name" = "hello-world-pipeline"
///     }
///     "root" = {
///       "dag" = {
///         "tasks" = {
///           "hello-world" = {
///             "cachingOptions" = {
///               "enableCache" = true
///             }
///             "componentRef" = {
///               "name" = "comp-hello-world"
///             }
///             "inputs" = {
///               "parameters" = {
///                 "text" = {
///                   "componentInputParameter" = "text"
///                 }
///               }
///             }
///             "taskInfo" = {
///               "name" = "hello-world"
///             }
///           }
///         }
///       }
///       "inputDefinitions" = {
///         "parameters" = {
///           "text" = {
///             "defaultValue"  = "Hello World"
///             "isOptional"    = true
///             "parameterType" = "STRING"
///           }
///         }
///       }
///     }
///     "schemaVersion" = "2.1.0"
///     "sdkVersion"    = "kfp-2.7.0"
///   })
///   runtime_config = {
///     gcs_output_directory ="gs://${gcp_storage_bucket.bucket.name}/output"
///     failure_policy       = "PIPELINE_FAILURE_POLICY_FAIL_FAST"
///     parameter_values = {
///       "text" = "Hello Vertex AI"
///     }
///   }
///   labels = {
///     "env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.vertex.AiPipelineJob;
/// import com.pulumi.gcp.vertex.AiPipelineJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobRuntimeConfigArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("example-pipeline-bucket")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var pipelineJob = new AiPipelineJob("pipelineJob", AiPipelineJobArgs.builder()
///             .displayName("example-pipeline-job")
///             .pipelineJobId("example-pipeline-job")
///             .region("us-central1")
///             .preflightValidations(false)
///             .deletionPolicy("FORCE")
///             .pipelineSpec(serializeJson(
///                 jsonObject(
///                     jsonProperty("components", jsonObject(
///                         jsonProperty("comp-hello-world", jsonObject(
///                             jsonProperty("executorLabel", "exec-hello-world"),
///                             jsonProperty("inputDefinitions", jsonObject(
///                                 jsonProperty("parameters", jsonObject(
///                                     jsonProperty("text", jsonObject(
///                                         jsonProperty("parameterType", "STRING")
///                                     ))
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("deploymentSpec", jsonObject(
///                         jsonProperty("executors", jsonObject(
///                             jsonProperty("exec-hello-world", jsonObject(
///                                 jsonProperty("container", jsonObject(
///                                     jsonProperty("args", jsonArray(
///                                         "--text",
///                                         "{{$.inputs.parameters['text']}}"
///                                     )),
///                                     jsonProperty("command", jsonArray(
///                                         "sh",
///                                         "-c",
///                                         "echo \"$0\""
///                                     )),
///                                     jsonProperty("image", "python:3.11")
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("pipelineInfo", jsonObject(
///                         jsonProperty("name", "hello-world-pipeline")
///                     )),
///                     jsonProperty("root", jsonObject(
///                         jsonProperty("dag", jsonObject(
///                             jsonProperty("tasks", jsonObject(
///                                 jsonProperty("hello-world", jsonObject(
///                                     jsonProperty("cachingOptions", jsonObject(
///                                         jsonProperty("enableCache", true)
///                                     )),
///                                     jsonProperty("componentRef", jsonObject(
///                                         jsonProperty("name", "comp-hello-world")
///                                     )),
///                                     jsonProperty("inputs", jsonObject(
///                                         jsonProperty("parameters", jsonObject(
///                                             jsonProperty("text", jsonObject(
///                                                 jsonProperty("componentInputParameter", "text")
///                                             ))
///                                         ))
///                                     )),
///                                     jsonProperty("taskInfo", jsonObject(
///                                         jsonProperty("name", "hello-world")
///                                     ))
///                                 ))
///                             ))
///                         )),
///                         jsonProperty("inputDefinitions", jsonObject(
///                             jsonProperty("parameters", jsonObject(
///                                 jsonProperty("text", jsonObject(
///                                     jsonProperty("defaultValue", "Hello World"),
///                                     jsonProperty("isOptional", true),
///                                     jsonProperty("parameterType", "STRING")
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("schemaVersion", "2.1.0"),
///                     jsonProperty("sdkVersion", "kfp-2.7.0")
///                 )))
///             .runtimeConfig(AiPipelineJobRuntimeConfigArgs.builder()
///                 .gcsOutputDirectory(bucket.name().applyValue(_name -> String.format("gs://%s/output", _name)))
///                 .failurePolicy("PIPELINE_FAILURE_POLICY_FAIL_FAST")
///                 .parameterValues(Map.of("text", "Hello Vertex AI"))
///                 .build())
///             .labels(Map.of("env", "test"))
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
///       name: example-pipeline-bucket
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   pipelineJob:
///     type: gcp:vertex:AiPipelineJob
///     name: pipeline_job
///     properties:
///       displayName: example-pipeline-job
///       pipelineJobId: example-pipeline-job
///       region: us-central1
///       preflightValidations: false
///       deletionPolicy: FORCE
///       pipelineSpec:
///         fn::toJSON:
///           components:
///             comp-hello-world:
///               executorLabel: exec-hello-world
///               inputDefinitions:
///                 parameters:
///                   text:
///                     parameterType: STRING
///           deploymentSpec:
///             executors:
///               exec-hello-world:
///                 container:
///                   args:
///                     - --text
///                     - '{{$.inputs.parameters[''text'']}}'
///                   command:
///                     - sh
///                     - -c
///                     - echo "$0"
///                   image: python:3.11
///           pipelineInfo:
///             name: hello-world-pipeline
///           root:
///             dag:
///               tasks:
///                 hello-world:
///                   cachingOptions:
///                     enableCache: true
///                   componentRef:
///                     name: comp-hello-world
///                   inputs:
///                     parameters:
///                       text:
///                         componentInputParameter: text
///                   taskInfo:
///                     name: hello-world
///             inputDefinitions:
///               parameters:
///                 text:
///                   defaultValue: Hello World
///                   isOptional: true
///                   parameterType: STRING
///           schemaVersion: 2.1.0
///           sdkVersion: kfp-2.7.0
///       runtimeConfig:
///         gcsOutputDirectory: gs://${bucket.name}/output
///         failurePolicy: PIPELINE_FAILURE_POLICY_FAIL_FAST
///         parameterValues:
///           text: Hello Vertex AI
///       labels:
///         env: test
/// ```
///
///
/// ### Vertex Ai Pipeline Job Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example-pipeline-bucket-full",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const vertexNetwork = new gcp.compute.Network("vertex_network", {
///     name: "vertex-pipeline-network",
///     autoCreateSubnetworks: false,
/// });
/// const vertexRange = new gcp.compute.GlobalAddress("vertex_range", {
///     name: "vertex-pipeline-ip-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 24,
///     network: vertexNetwork.id,
/// });
/// const vertexVpcConnection = new gcp.servicenetworking.Connection("vertex_vpc_connection", {
///     network: vertexNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [vertexRange.name],
/// });
/// const pscSubnetwork = new gcp.compute.Subnetwork("psc_subnetwork", {
///     name: "psc-pipeline-subnetwork",
///     region: "us-central1",
///     ipCidrRange: "10.0.0.0/16",
///     network: vertexNetwork.id,
/// });
/// const pscAttachment = new gcp.compute.NetworkAttachment("psc_attachment", {
///     name: "psc-pipeline-attachment",
///     region: "us-central1",
///     connectionPreference: "ACCEPT_MANUAL",
///     subnetworks: [pscSubnetwork.id],
/// });
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "example-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`),
/// });
/// const pipelineJob = new gcp.vertex.AiPipelineJob("pipeline_job", {
///     displayName: "example-pipeline-job-full",
///     pipelineJobId: "example-pipeline-job-full",
///     region: "us-central1",
///     preflightValidations: false,
///     deletionPolicy: "FORCE",
///     serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///     network: pulumi.all([project, vertexNetwork.name]).apply(([project, name]) => `projects/${project.number}/global/networks/${name}`),
///     reservedIpRanges: [vertexRange.name],
///     templateUri: "https://us-kfp.pkg.dev/ml-pipeline/google-cloud-registry/hello-world/sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
///     pipelineSpec: JSON.stringify({
///         components: {
///             "comp-hello-world": {
///                 executorLabel: "exec-hello-world",
///                 inputDefinitions: {
///                     parameters: {
///                         param1: {
///                             parameterType: "STRING",
///                         },
///                     },
///                 },
///             },
///         },
///         deploymentSpec: {
///             executors: {
///                 "exec-hello-world": {
///                     container: {
///                         args: [
///                             "--param1",
///                             "{{$.inputs.parameters['param1']}}",
///                         ],
///                         command: [
///                             "sh",
///                             "-c",
///                             "echo \"$0\"",
///                         ],
///                         image: "python:3.11",
///                     },
///                 },
///             },
///         },
///         pipelineInfo: {
///             name: "hello-world-pipeline-full",
///         },
///         root: {
///             dag: {
///                 tasks: {
///                     "hello-world": {
///                         cachingOptions: {
///                             enableCache: true,
///                         },
///                         componentRef: {
///                             name: "comp-hello-world",
///                         },
///                         inputs: {
///                             parameters: {
///                                 param1: {
///                                     componentInputParameter: "param1",
///                                 },
///                             },
///                         },
///                         taskInfo: {
///                             name: "hello-world",
///                         },
///                     },
///                 },
///             },
///             inputDefinitions: {
///                 parameters: {
///                     param1: {
///                         defaultValue: "default-val",
///                         isOptional: true,
///                         parameterType: "STRING",
///                     },
///                 },
///             },
///         },
///         schemaVersion: "2.1.0",
///         sdkVersion: "kfp-2.7.0",
///     }),
///     encryptionSpec: {
///         kmsKeyName: "example-key",
///     },
///     pscInterfaceConfig: {
///         networkAttachment: pscAttachment.id,
///         dnsPeeringConfigs: [{
///             domain: "example.com.",
///             targetProject: project.then(project => project.projectId),
///             targetNetwork: vertexNetwork.name,
///         }],
///     },
///     runtimeConfig: {
///         gcsOutputDirectory: pulumi.interpolate`gs://${bucket.name}/output`,
///         failurePolicy: "PIPELINE_FAILURE_POLICY_FAIL_SLOW",
///         parameterValues: {
///             param1: "value1",
///         },
///         inputArtifacts: [{
///             artifactKey: "input_dataset",
///             artifactId: "123456789",
///         }],
///     },
///     labels: {
///         env: "full",
///     },
/// }, {
///     dependsOn: [
///         vertexVpcConnection,
///         cryptoKey,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// bucket = gcp.storage.Bucket("bucket",
///     name="example-pipeline-bucket-full",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// vertex_network = gcp.compute.Network("vertex_network",
///     name="vertex-pipeline-network",
///     auto_create_subnetworks=False)
/// vertex_range = gcp.compute.GlobalAddress("vertex_range",
///     name="vertex-pipeline-ip-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=24,
///     network=vertex_network.id)
/// vertex_vpc_connection = gcp.servicenetworking.Connection("vertex_vpc_connection",
///     network=vertex_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[vertex_range.name])
/// psc_subnetwork = gcp.compute.Subnetwork("psc_subnetwork",
///     name="psc-pipeline-subnetwork",
///     region="us-central1",
///     ip_cidr_range="10.0.0.0/16",
///     network=vertex_network.id)
/// psc_attachment = gcp.compute.NetworkAttachment("psc_attachment",
///     name="psc-pipeline-attachment",
///     region="us-central1",
///     connection_preference="ACCEPT_MANUAL",
///     subnetworks=[psc_subnetwork.id])
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="example-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com")
/// pipeline_job = gcp.vertex.AiPipelineJob("pipeline_job",
///     display_name="example-pipeline-job-full",
///     pipeline_job_id="example-pipeline-job-full",
///     region="us-central1",
///     preflight_validations=False,
///     deletion_policy="FORCE",
///     service_account=f"{project.number}-compute@developer.gserviceaccount.com",
///     network=vertex_network.name.apply(lambda name: f"projects/{project.number}/global/networks/{name}"),
///     reserved_ip_ranges=[vertex_range.name],
///     template_uri="https://us-kfp.pkg.dev/ml-pipeline/google-cloud-registry/hello-world/sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
///     pipeline_spec=json.dumps({
///         "components": {
///             "comp-hello-world": {
///                 "executorLabel": "exec-hello-world",
///                 "inputDefinitions": {
///                     "parameters": {
///                         "param1": {
///                             "parameterType": "STRING",
///                         },
///                     },
///                 },
///             },
///         },
///         "deploymentSpec": {
///             "executors": {
///                 "exec-hello-world": {
///                     "container": {
///                         "args": [
///                             "--param1",
///                             "{{$.inputs.parameters['param1']}}",
///                         ],
///                         "command": [
///                             "sh",
///                             "-c",
///                             "echo \"$0\"",
///                         ],
///                         "image": "python:3.11",
///                     },
///                 },
///             },
///         },
///         "pipelineInfo": {
///             "name": "hello-world-pipeline-full",
///         },
///         "root": {
///             "dag": {
///                 "tasks": {
///                     "hello-world": {
///                         "cachingOptions": {
///                             "enableCache": True,
///                         },
///                         "componentRef": {
///                             "name": "comp-hello-world",
///                         },
///                         "inputs": {
///                             "parameters": {
///                                 "param1": {
///                                     "componentInputParameter": "param1",
///                                 },
///                             },
///                         },
///                         "taskInfo": {
///                             "name": "hello-world",
///                         },
///                     },
///                 },
///             },
///             "inputDefinitions": {
///                 "parameters": {
///                     "param1": {
///                         "defaultValue": "default-val",
///                         "isOptional": True,
///                         "parameterType": "STRING",
///                     },
///                 },
///             },
///         },
///         "schemaVersion": "2.1.0",
///         "sdkVersion": "kfp-2.7.0",
///     }),
///     encryption_spec={
///         "kms_key_name": "example-key",
///     },
///     psc_interface_config={
///         "network_attachment": psc_attachment.id,
///         "dns_peering_configs": [{
///             "domain": "example.com.",
///             "target_project": project.project_id,
///             "target_network": vertex_network.name,
///         }],
///     },
///     runtime_config={
///         "gcs_output_directory": bucket.name.apply(lambda name: f"gs://{name}/output"),
///         "failure_policy": "PIPELINE_FAILURE_POLICY_FAIL_SLOW",
///         "parameter_values": {
///             "param1": "value1",
///         },
///         "input_artifacts": [{
///             "artifact_key": "input_dataset",
///             "artifact_id": "123456789",
///         }],
///     },
///     labels={
///         "env": "full",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             vertex_vpc_connection,
///             crypto_key,
///         ]))
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
///         Name = "example-pipeline-bucket-full",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var vertexNetwork = new Gcp.Compute.Network("vertex_network", new()
///     {
///         Name = "vertex-pipeline-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var vertexRange = new Gcp.Compute.GlobalAddress("vertex_range", new()
///     {
///         Name = "vertex-pipeline-ip-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 24,
///         Network = vertexNetwork.Id,
///     });
///
///     var vertexVpcConnection = new Gcp.ServiceNetworking.Connection("vertex_vpc_connection", new()
///     {
///         Network = vertexNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             vertexRange.Name,
///         },
///     });
///
///     var pscSubnetwork = new Gcp.Compute.Subnetwork("psc_subnetwork", new()
///     {
///         Name = "psc-pipeline-subnetwork",
///         Region = "us-central1",
///         IpCidrRange = "10.0.0.0/16",
///         Network = vertexNetwork.Id,
///     });
///
///     var pscAttachment = new Gcp.Compute.NetworkAttachment("psc_attachment", new()
///     {
///         Name = "psc-pipeline-attachment",
///         Region = "us-central1",
///         ConnectionPreference = "ACCEPT_MANUAL",
///         Subnetworks = new[]
///         {
///             pscSubnetwork.Id,
///         },
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "example-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform.iam.gserviceaccount.com",
///     });
///
///     var pipelineJob = new Gcp.Vertex.AiPipelineJob("pipeline_job", new()
///     {
///         DisplayName = "example-pipeline-job-full",
///         PipelineJobId = "example-pipeline-job-full",
///         Region = "us-central1",
///         PreflightValidations = false,
///         DeletionPolicy = "FORCE",
///         ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///         Network = Output.Tuple(project, vertexNetwork.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{name}";
///         }),
///         ReservedIpRanges = new[]
///         {
///             vertexRange.Name,
///         },
///         TemplateUri = "https://us-kfp.pkg.dev/ml-pipeline/google-cloud-registry/hello-world/sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
///         PipelineSpec = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["components"] = new Dictionary<string, object?>
///             {
///                 ["comp-hello-world"] = new Dictionary<string, object?>
///                 {
///                     ["executorLabel"] = "exec-hello-world",
///                     ["inputDefinitions"] = new Dictionary<string, object?>
///                     {
///                         ["parameters"] = new Dictionary<string, object?>
///                         {
///                             ["param1"] = new Dictionary<string, object?>
///                             {
///                                 ["parameterType"] = "STRING",
///                             },
///                         },
///                     },
///                 },
///             },
///             ["deploymentSpec"] = new Dictionary<string, object?>
///             {
///                 ["executors"] = new Dictionary<string, object?>
///                 {
///                     ["exec-hello-world"] = new Dictionary<string, object?>
///                     {
///                         ["container"] = new Dictionary<string, object?>
///                         {
///                             ["args"] = new[]
///                             {
///                                 "--param1",
///                                 "{{$.inputs.parameters['param1']}}",
///                             },
///                             ["command"] = new[]
///                             {
///                                 "sh",
///                                 "-c",
///                                 "echo \"$0\"",
///                             },
///                             ["image"] = "python:3.11",
///                         },
///                     },
///                 },
///             },
///             ["pipelineInfo"] = new Dictionary<string, object?>
///             {
///                 ["name"] = "hello-world-pipeline-full",
///             },
///             ["root"] = new Dictionary<string, object?>
///             {
///                 ["dag"] = new Dictionary<string, object?>
///                 {
///                     ["tasks"] = new Dictionary<string, object?>
///                     {
///                         ["hello-world"] = new Dictionary<string, object?>
///                         {
///                             ["cachingOptions"] = new Dictionary<string, object?>
///                             {
///                                 ["enableCache"] = true,
///                             },
///                             ["componentRef"] = new Dictionary<string, object?>
///                             {
///                                 ["name"] = "comp-hello-world",
///                             },
///                             ["inputs"] = new Dictionary<string, object?>
///                             {
///                                 ["parameters"] = new Dictionary<string, object?>
///                                 {
///                                     ["param1"] = new Dictionary<string, object?>
///                                     {
///                                         ["componentInputParameter"] = "param1",
///                                     },
///                                 },
///                             },
///                             ["taskInfo"] = new Dictionary<string, object?>
///                             {
///                                 ["name"] = "hello-world",
///                             },
///                         },
///                     },
///                 },
///                 ["inputDefinitions"] = new Dictionary<string, object?>
///                 {
///                     ["parameters"] = new Dictionary<string, object?>
///                     {
///                         ["param1"] = new Dictionary<string, object?>
///                         {
///                             ["defaultValue"] = "default-val",
///                             ["isOptional"] = true,
///                             ["parameterType"] = "STRING",
///                         },
///                     },
///                 },
///             },
///             ["schemaVersion"] = "2.1.0",
///             ["sdkVersion"] = "kfp-2.7.0",
///         }),
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiPipelineJobEncryptionSpecArgs
///         {
///             KmsKeyName = "example-key",
///         },
///         PscInterfaceConfig = new Gcp.Vertex.Inputs.AiPipelineJobPscInterfaceConfigArgs
///         {
///             NetworkAttachment = pscAttachment.Id,
///             DnsPeeringConfigs = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiPipelineJobPscInterfaceConfigDnsPeeringConfigArgs
///                 {
///                     Domain = "example.com.",
///                     TargetProject = project.Apply(getProjectResult => getProjectResult.ProjectId),
///                     TargetNetwork = vertexNetwork.Name,
///                 },
///             },
///         },
///         RuntimeConfig = new Gcp.Vertex.Inputs.AiPipelineJobRuntimeConfigArgs
///         {
///             GcsOutputDirectory = bucket.Name.Apply(name => $"gs://{name}/output"),
///             FailurePolicy = "PIPELINE_FAILURE_POLICY_FAIL_SLOW",
///             ParameterValues =
///             {
///                 { "param1", "value1" },
///             },
///             InputArtifacts = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiPipelineJobRuntimeConfigInputArtifactArgs
///                 {
///                     ArtifactKey = "input_dataset",
///                     ArtifactId = "123456789",
///                 },
///             },
///         },
///         Labels =
///         {
///             { "env", "full" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexVpcConnection,
///             cryptoKey,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
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
/// 			Name:                     pulumi.String("example-pipeline-bucket-full"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexNetwork, err := compute.NewNetwork(ctx, "vertex_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("vertex-pipeline-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexRange, err := compute.NewGlobalAddress(ctx, "vertex_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("vertex-pipeline-ip-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(24),
/// 			Network:      vertexNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexVpcConnection, err := servicenetworking.NewConnection(ctx, "vertex_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: vertexNetwork.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				vertexRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscSubnetwork, err := compute.NewSubnetwork(ctx, "psc_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-pipeline-subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Network:     vertexNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscAttachment, err := compute.NewNetworkAttachment(ctx, "psc_attachment", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("psc-pipeline-attachment"),
/// 			Region:               pulumi.String("us-central1"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			Subnetworks: pulumi.StringArray{
/// 				pscSubnetwork.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("example-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"components": map[string]map[string]interface{}{
/// 				"comp-hello-world": map[string]interface{}{
/// 					"executorLabel": "exec-hello-world",
/// 					"inputDefinitions": map[string]map[string]map[string]string{
/// 						"parameters": map[string]map[string]string{
/// 							"param1": map[string]string{
/// 								"parameterType": "STRING",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"deploymentSpec": map[string]map[string]map[string]map[string]interface{}{
/// 				"executors": map[string]map[string]map[string]interface{}{
/// 					"exec-hello-world": map[string]map[string]interface{}{
/// 						"container": map[string]interface{}{
/// 							"args": []string{
/// 								"--param1",
/// 								"{{$.inputs.parameters['param1']}}",
/// 							},
/// 							"command": []string{
/// 								"sh",
/// 								"-c",
/// 								"echo \"$0\"",
/// 							},
/// 							"image": "python:3.11",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"pipelineInfo": map[string]string{
/// 				"name": "hello-world-pipeline-full",
/// 			},
/// 			"root": map[string]map[string]map[string]map[string]interface{}{
/// 				"dag": map[string]map[string]map[string]interface{}{
/// 					"tasks": map[string]map[string]interface{}{
/// 						"hello-world": map[string]interface{}{
/// 							"cachingOptions": map[string]bool{
/// 								"enableCache": true,
/// 							},
/// 							"componentRef": map[string]string{
/// 								"name": "comp-hello-world",
/// 							},
/// 							"inputs": map[string]map[string]map[string]string{
/// 								"parameters": map[string]map[string]string{
/// 									"param1": map[string]string{
/// 										"componentInputParameter": "param1",
/// 									},
/// 								},
/// 							},
/// 							"taskInfo": map[string]string{
/// 								"name": "hello-world",
/// 							},
/// 						},
/// 					},
/// 				},
/// 				"inputDefinitions": map[string]map[string]map[string]interface{}{
/// 					"parameters": map[string]map[string]interface{}{
/// 						"param1": map[string]interface{}{
/// 							"defaultValue":  "default-val",
/// 							"isOptional":    true,
/// 							"parameterType": "STRING",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"schemaVersion": "2.1.0",
/// 			"sdkVersion":    "kfp-2.7.0",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiPipelineJob(ctx, "pipeline_job", &vertex.AiPipelineJobArgs{
/// 			DisplayName:          pulumi.String("example-pipeline-job-full"),
/// 			PipelineJobId:        pulumi.String("example-pipeline-job-full"),
/// 			Region:               pulumi.String("us-central1"),
/// 			PreflightValidations: pulumi.Bool(false),
/// 			DeletionPolicy:       pulumi.String("FORCE"),
/// 			ServiceAccount:       pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 			Network: vertexNetwork.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/global/networks/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			ReservedIpRanges: pulumi.StringArray{
/// 				vertexRange.Name,
/// 			},
/// 			TemplateUri:  pulumi.String("https://us-kfp.pkg.dev/ml-pipeline/google-cloud-registry/hello-world/sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"),
/// 			PipelineSpec: pulumi.String(json0),
/// 			EncryptionSpec: &vertex.AiPipelineJobEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("example-key"),
/// 			},
/// 			PscInterfaceConfig: &vertex.AiPipelineJobPscInterfaceConfigArgs{
/// 				NetworkAttachment: pscAttachment.ID(),
/// 				DnsPeeringConfigs: vertex.AiPipelineJobPscInterfaceConfigDnsPeeringConfigArray{
/// 					&vertex.AiPipelineJobPscInterfaceConfigDnsPeeringConfigArgs{
/// 						Domain:        pulumi.String("example.com."),
/// 						TargetProject: pulumi.String(project.ProjectId),
/// 						TargetNetwork: vertexNetwork.Name,
/// 					},
/// 				},
/// 			},
/// 			RuntimeConfig: &vertex.AiPipelineJobRuntimeConfigArgs{
/// 				GcsOutputDirectory: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/output", name), nil
/// 				}).(pulumi.StringOutput),
/// 				FailurePolicy: pulumi.String("PIPELINE_FAILURE_POLICY_FAIL_SLOW"),
/// 				ParameterValues: pulumi.StringMap{
/// 					"param1": pulumi.String("value1"),
/// 				},
/// 				InputArtifacts: vertex.AiPipelineJobRuntimeConfigInputArtifactArray{
/// 					&vertex.AiPipelineJobRuntimeConfigInputArtifactArgs{
/// 						ArtifactKey: pulumi.String("input_dataset"),
/// 						ArtifactId:  pulumi.String("123456789"),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("full"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexVpcConnection,
/// 			cryptoKey,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "example-pipeline-bucket-full"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_compute_network" "vertex_network" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "vertex-pipeline-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_global_address" "vertex_range" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "vertex-pipeline-ip-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 24
///   network       = gcp_compute_network.vertex_network.id
/// }
/// resource "gcp_servicenetworking_connection" "vertex_vpc_connection" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network                 = gcp_compute_network.vertex_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_global_address.vertex_range.name]
/// }
/// resource "gcp_compute_subnetwork" "psc_subnetwork" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "psc-pipeline-subnetwork"
///   region        = "us-central1"
///   ip_cidr_range = "10.0.0.0/16"
///   network       = gcp_compute_network.vertex_network.id
/// }
/// resource "gcp_compute_network_attachment" "psc_attachment" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                  = "psc-pipeline-attachment"
///   region                = "us-central1"
///   connection_preference = "ACCEPT_MANUAL"
///   subnetworks           = [gcp_compute_subnetwork.psc_subnetwork.id]
/// }
/// resource "gcp_kms_crypto_key_i_a_m_member" "crypto_key" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   crypto_key_id = "example-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com"
/// }
/// resource "gcp_vertex_ai_pipeline_job" "pipeline_job" {
///   depends_on = [gcp_servicenetworking_connection.vertex_vpc_connection, gcp_kms_crypto_key_i_a_m_member.crypto_key]
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name          = "example-pipeline-job-full"
///   pipeline_job_id       = "example-pipeline-job-full"
///   region                = "us-central1"
///   preflight_validations = false
///   deletion_policy       = "FORCE"
///   service_account       ="${data.gcp_organizations_project.project.number}-compute@developer.gserviceaccount.com"
///   network               ="projects/${data.gcp_organizations_project.project.number}/global/networks/${gcp_compute_network.vertex_network.name}"
///   reserved_ip_ranges    = [gcp_compute_global_address.vertex_range.name]
///   template_uri          = "https://us-kfp.pkg.dev/ml-pipeline/google-cloud-registry/hello-world/sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
///   pipeline_spec = jsonencode({
///     "components" = {
///       "comp-hello-world" = {
///         "executorLabel" = "exec-hello-world"
///         "inputDefinitions" = {
///           "parameters" = {
///             "param1" = {
///               "parameterType" = "STRING"
///             }
///           }
///         }
///       }
///     }
///     "deploymentSpec" = {
///       "executors" = {
///         "exec-hello-world" = {
///           "container" = {
///             "args"    = ["--param1", "{{$.inputs.parameters['param1']}}"]
///             "command" = ["sh", "-c", "echo \"$0\""]
///             "image"   = "python:3.11"
///           }
///         }
///       }
///     }
///     "pipelineInfo" = {
///       "name" = "hello-world-pipeline-full"
///     }
///     "root" = {
///       "dag" = {
///         "tasks" = {
///           "hello-world" = {
///             "cachingOptions" = {
///               "enableCache" = true
///             }
///             "componentRef" = {
///               "name" = "comp-hello-world"
///             }
///             "inputs" = {
///               "parameters" = {
///                 "param1" = {
///                   "componentInputParameter" = "param1"
///                 }
///               }
///             }
///             "taskInfo" = {
///               "name" = "hello-world"
///             }
///           }
///         }
///       }
///       "inputDefinitions" = {
///         "parameters" = {
///           "param1" = {
///             "defaultValue"  = "default-val"
///             "isOptional"    = true
///             "parameterType" = "STRING"
///           }
///         }
///       }
///     }
///     "schemaVersion" = "2.1.0"
///     "sdkVersion"    = "kfp-2.7.0"
///   })
///   encryption_spec = {
///     kms_key_name = "example-key"
///   }
///   psc_interface_config = {
///     network_attachment = gcp_compute_network_attachment.psc_attachment.id
///     dns_peering_configs = [{
///       domain         = "example.com."
///       target_project = data.gcp_organizations_project.project.project_id
///       target_network = gcp_compute_network.vertex_network.name
///     }]
///   }
///   runtime_config = {
///     gcs_output_directory ="gs://${gcp_storage_bucket.bucket.name}/output"
///     failure_policy       = "PIPELINE_FAILURE_POLICY_FAIL_SLOW"
///     parameter_values = {
///       "param1" = "value1"
///     }
///     input_artifacts = [{
///       artifact_key = "input_dataset"
///       artifact_id  = "123456789"
///     }]
///   }
///   labels = {
///     "env" = "full"
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiPipelineJob;
/// import com.pulumi.gcp.vertex.AiPipelineJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobPscInterfaceConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobPscInterfaceConfigDnsPeeringConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobRuntimeConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobRuntimeConfigInputArtifactArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("example-pipeline-bucket-full")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var vertexNetwork = new Network("vertexNetwork", NetworkArgs.builder()
///             .name("vertex-pipeline-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var vertexRange = new GlobalAddress("vertexRange", GlobalAddressArgs.builder()
///             .name("vertex-pipeline-ip-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(24)
///             .network(vertexNetwork.id())
///             .build());
///
///         var vertexVpcConnection = new Connection("vertexVpcConnection", ConnectionArgs.builder()
///             .network(vertexNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(vertexRange.name())
///             .build());
///
///         var pscSubnetwork = new Subnetwork("pscSubnetwork", SubnetworkArgs.builder()
///             .name("psc-pipeline-subnetwork")
///             .region("us-central1")
///             .ipCidrRange("10.0.0.0/16")
///             .network(vertexNetwork.id())
///             .build());
///
///         var pscAttachment = new NetworkAttachment("pscAttachment", NetworkAttachmentArgs.builder()
///             .name("psc-pipeline-attachment")
///             .region("us-central1")
///             .connectionPreference("ACCEPT_MANUAL")
///             .subnetworks(pscSubnetwork.id())
///             .build());
///
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("example-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var pipelineJob = new AiPipelineJob("pipelineJob", AiPipelineJobArgs.builder()
///             .displayName("example-pipeline-job-full")
///             .pipelineJobId("example-pipeline-job-full")
///             .region("us-central1")
///             .preflightValidations(false)
///             .deletionPolicy("FORCE")
///             .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///             .network(vertexNetwork.name().applyValue(_name -> String.format("projects/%s/global/networks/%s", project.number(),_name)))
///             .reservedIpRanges(vertexRange.name())
///             .templateUri("https://us-kfp.pkg.dev/ml-pipeline/google-cloud-registry/hello-world/sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef")
///             .pipelineSpec(serializeJson(
///                 jsonObject(
///                     jsonProperty("components", jsonObject(
///                         jsonProperty("comp-hello-world", jsonObject(
///                             jsonProperty("executorLabel", "exec-hello-world"),
///                             jsonProperty("inputDefinitions", jsonObject(
///                                 jsonProperty("parameters", jsonObject(
///                                     jsonProperty("param1", jsonObject(
///                                         jsonProperty("parameterType", "STRING")
///                                     ))
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("deploymentSpec", jsonObject(
///                         jsonProperty("executors", jsonObject(
///                             jsonProperty("exec-hello-world", jsonObject(
///                                 jsonProperty("container", jsonObject(
///                                     jsonProperty("args", jsonArray(
///                                         "--param1",
///                                         "{{$.inputs.parameters['param1']}}"
///                                     )),
///                                     jsonProperty("command", jsonArray(
///                                         "sh",
///                                         "-c",
///                                         "echo \"$0\""
///                                     )),
///                                     jsonProperty("image", "python:3.11")
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("pipelineInfo", jsonObject(
///                         jsonProperty("name", "hello-world-pipeline-full")
///                     )),
///                     jsonProperty("root", jsonObject(
///                         jsonProperty("dag", jsonObject(
///                             jsonProperty("tasks", jsonObject(
///                                 jsonProperty("hello-world", jsonObject(
///                                     jsonProperty("cachingOptions", jsonObject(
///                                         jsonProperty("enableCache", true)
///                                     )),
///                                     jsonProperty("componentRef", jsonObject(
///                                         jsonProperty("name", "comp-hello-world")
///                                     )),
///                                     jsonProperty("inputs", jsonObject(
///                                         jsonProperty("parameters", jsonObject(
///                                             jsonProperty("param1", jsonObject(
///                                                 jsonProperty("componentInputParameter", "param1")
///                                             ))
///                                         ))
///                                     )),
///                                     jsonProperty("taskInfo", jsonObject(
///                                         jsonProperty("name", "hello-world")
///                                     ))
///                                 ))
///                             ))
///                         )),
///                         jsonProperty("inputDefinitions", jsonObject(
///                             jsonProperty("parameters", jsonObject(
///                                 jsonProperty("param1", jsonObject(
///                                     jsonProperty("defaultValue", "default-val"),
///                                     jsonProperty("isOptional", true),
///                                     jsonProperty("parameterType", "STRING")
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("schemaVersion", "2.1.0"),
///                     jsonProperty("sdkVersion", "kfp-2.7.0")
///                 )))
///             .encryptionSpec(AiPipelineJobEncryptionSpecArgs.builder()
///                 .kmsKeyName("example-key")
///                 .build())
///             .pscInterfaceConfig(AiPipelineJobPscInterfaceConfigArgs.builder()
///                 .networkAttachment(pscAttachment.id())
///                 .dnsPeeringConfigs(AiPipelineJobPscInterfaceConfigDnsPeeringConfigArgs.builder()
///                     .domain("example.com.")
///                     .targetProject(project.projectId())
///                     .targetNetwork(vertexNetwork.name())
///                     .build())
///                 .build())
///             .runtimeConfig(AiPipelineJobRuntimeConfigArgs.builder()
///                 .gcsOutputDirectory(bucket.name().applyValue(_name -> String.format("gs://%s/output", _name)))
///                 .failurePolicy("PIPELINE_FAILURE_POLICY_FAIL_SLOW")
///                 .parameterValues(Map.of("param1", "value1"))
///                 .inputArtifacts(AiPipelineJobRuntimeConfigInputArtifactArgs.builder()
///                     .artifactKey("input_dataset")
///                     .artifactId("123456789")
///                     .build())
///                 .build())
///             .labels(Map.of("env", "full"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     vertexVpcConnection,
///                     cryptoKey)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: example-pipeline-bucket-full
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   vertexNetwork:
///     type: gcp:compute:Network
///     name: vertex_network
///     properties:
///       name: vertex-pipeline-network
///       autoCreateSubnetworks: false
///   vertexRange:
///     type: gcp:compute:GlobalAddress
///     name: vertex_range
///     properties:
///       name: vertex-pipeline-ip-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 24
///       network: ${vertexNetwork.id}
///   vertexVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vertex_vpc_connection
///     properties:
///       network: ${vertexNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${vertexRange.name}
///   pscSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_subnetwork
///     properties:
///       name: psc-pipeline-subnetwork
///       region: us-central1
///       ipCidrRange: 10.0.0.0/16
///       network: ${vertexNetwork.id}
///   pscAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: psc_attachment
///     properties:
///       name: psc-pipeline-attachment
///       region: us-central1
///       connectionPreference: ACCEPT_MANUAL
///       subnetworks:
///         - ${pscSubnetwork.id}
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: example-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
///   pipelineJob:
///     type: gcp:vertex:AiPipelineJob
///     name: pipeline_job
///     properties:
///       displayName: example-pipeline-job-full
///       pipelineJobId: example-pipeline-job-full
///       region: us-central1
///       preflightValidations: false
///       deletionPolicy: FORCE
///       serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///       network: projects/${project.number}/global/networks/${vertexNetwork.name}
///       reservedIpRanges:
///         - ${vertexRange.name}
///       templateUri: https://us-kfp.pkg.dev/ml-pipeline/google-cloud-registry/hello-world/sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef
///       pipelineSpec:
///         fn::toJSON:
///           components:
///             comp-hello-world:
///               executorLabel: exec-hello-world
///               inputDefinitions:
///                 parameters:
///                   param1:
///                     parameterType: STRING
///           deploymentSpec:
///             executors:
///               exec-hello-world:
///                 container:
///                   args:
///                     - --param1
///                     - '{{$.inputs.parameters[''param1'']}}'
///                   command:
///                     - sh
///                     - -c
///                     - echo "$0"
///                   image: python:3.11
///           pipelineInfo:
///             name: hello-world-pipeline-full
///           root:
///             dag:
///               tasks:
///                 hello-world:
///                   cachingOptions:
///                     enableCache: true
///                   componentRef:
///                     name: comp-hello-world
///                   inputs:
///                     parameters:
///                       param1:
///                         componentInputParameter: param1
///                   taskInfo:
///                     name: hello-world
///             inputDefinitions:
///               parameters:
///                 param1:
///                   defaultValue: default-val
///                   isOptional: true
///                   parameterType: STRING
///           schemaVersion: 2.1.0
///           sdkVersion: kfp-2.7.0
///       encryptionSpec:
///         kmsKeyName: example-key
///       pscInterfaceConfig:
///         networkAttachment: ${pscAttachment.id}
///         dnsPeeringConfigs:
///           - domain: example.com.
///             targetProject: ${project.projectId}
///             targetNetwork: ${vertexNetwork.name}
///       runtimeConfig:
///         gcsOutputDirectory: gs://${bucket.name}/output
///         failurePolicy: PIPELINE_FAILURE_POLICY_FAIL_SLOW
///         parameterValues:
///           param1: value1
///         inputArtifacts:
///           - artifactKey: input_dataset
///             artifactId: '123456789'
///       labels:
///         env: full
///     options:
///       dependsOn:
///         - ${vertexVpcConnection}
///         - ${cryptoKey}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Vertex Ai Pipeline Job Persistent Resource
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example-pipeline-bucket-pr",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const pipelineJob = new gcp.vertex.AiPipelineJob("pipeline_job", {
///     displayName: "example-pipeline-job-pr",
///     pipelineJobId: "example-pipeline-job-pr",
///     region: "us-central1",
///     deletionPolicy: "FORCE",
///     pipelineSpec: JSON.stringify({
///         components: {
///             "comp-hello-world": {
///                 executorLabel: "exec-hello-world",
///             },
///         },
///         deploymentSpec: {
///             executors: {
///                 "exec-hello-world": {
///                     container: {
///                         command: [
///                             "sh",
///                             "-c",
///                             "echo hello",
///                         ],
///                         image: "python:3.11",
///                     },
///                 },
///             },
///         },
///         pipelineInfo: {
///             name: "persistent-resource-pipeline",
///         },
///         root: {
///             dag: {
///                 tasks: {
///                     "hello-world": {
///                         componentRef: {
///                             name: "comp-hello-world",
///                         },
///                         taskInfo: {
///                             name: "hello-world",
///                         },
///                     },
///                 },
///             },
///         },
///         schemaVersion: "2.1.0",
///         sdkVersion: "kfp-2.7.0",
///     }),
///     runtimeConfig: {
///         gcsOutputDirectory: pulumi.interpolate`gs://${bucket.name}/output`,
///         defaultRuntime: {
///             persistentResourceRuntimeDetail: {
///                 persistentResourceName: project.then(project => `projects/${project.number}/locations/us-central1/persistentResources/example-persistent-resource`),
///                 taskResourceUnavailableWaitTimeMs: "60000",
///                 taskResourceUnavailableTimeoutBehavior: "FALL_BACK_TO_ON_DEMAND",
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
///     name="example-pipeline-bucket-pr",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// pipeline_job = gcp.vertex.AiPipelineJob("pipeline_job",
///     display_name="example-pipeline-job-pr",
///     pipeline_job_id="example-pipeline-job-pr",
///     region="us-central1",
///     deletion_policy="FORCE",
///     pipeline_spec=json.dumps({
///         "components": {
///             "comp-hello-world": {
///                 "executorLabel": "exec-hello-world",
///             },
///         },
///         "deploymentSpec": {
///             "executors": {
///                 "exec-hello-world": {
///                     "container": {
///                         "command": [
///                             "sh",
///                             "-c",
///                             "echo hello",
///                         ],
///                         "image": "python:3.11",
///                     },
///                 },
///             },
///         },
///         "pipelineInfo": {
///             "name": "persistent-resource-pipeline",
///         },
///         "root": {
///             "dag": {
///                 "tasks": {
///                     "hello-world": {
///                         "componentRef": {
///                             "name": "comp-hello-world",
///                         },
///                         "taskInfo": {
///                             "name": "hello-world",
///                         },
///                     },
///                 },
///             },
///         },
///         "schemaVersion": "2.1.0",
///         "sdkVersion": "kfp-2.7.0",
///     }),
///     runtime_config={
///         "gcs_output_directory": bucket.name.apply(lambda name: f"gs://{name}/output"),
///         "default_runtime": {
///             "persistent_resource_runtime_detail": {
///                 "persistent_resource_name": f"projects/{project.number}/locations/us-central1/persistentResources/example-persistent-resource",
///                 "task_resource_unavailable_wait_time_ms": "60000",
///                 "task_resource_unavailable_timeout_behavior": "FALL_BACK_TO_ON_DEMAND",
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
///         Name = "example-pipeline-bucket-pr",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var pipelineJob = new Gcp.Vertex.AiPipelineJob("pipeline_job", new()
///     {
///         DisplayName = "example-pipeline-job-pr",
///         PipelineJobId = "example-pipeline-job-pr",
///         Region = "us-central1",
///         DeletionPolicy = "FORCE",
///         PipelineSpec = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["components"] = new Dictionary<string, object?>
///             {
///                 ["comp-hello-world"] = new Dictionary<string, object?>
///                 {
///                     ["executorLabel"] = "exec-hello-world",
///                 },
///             },
///             ["deploymentSpec"] = new Dictionary<string, object?>
///             {
///                 ["executors"] = new Dictionary<string, object?>
///                 {
///                     ["exec-hello-world"] = new Dictionary<string, object?>
///                     {
///                         ["container"] = new Dictionary<string, object?>
///                         {
///                             ["command"] = new[]
///                             {
///                                 "sh",
///                                 "-c",
///                                 "echo hello",
///                             },
///                             ["image"] = "python:3.11",
///                         },
///                     },
///                 },
///             },
///             ["pipelineInfo"] = new Dictionary<string, object?>
///             {
///                 ["name"] = "persistent-resource-pipeline",
///             },
///             ["root"] = new Dictionary<string, object?>
///             {
///                 ["dag"] = new Dictionary<string, object?>
///                 {
///                     ["tasks"] = new Dictionary<string, object?>
///                     {
///                         ["hello-world"] = new Dictionary<string, object?>
///                         {
///                             ["componentRef"] = new Dictionary<string, object?>
///                             {
///                                 ["name"] = "comp-hello-world",
///                             },
///                             ["taskInfo"] = new Dictionary<string, object?>
///                             {
///                                 ["name"] = "hello-world",
///                             },
///                         },
///                     },
///                 },
///             },
///             ["schemaVersion"] = "2.1.0",
///             ["sdkVersion"] = "kfp-2.7.0",
///         }),
///         RuntimeConfig = new Gcp.Vertex.Inputs.AiPipelineJobRuntimeConfigArgs
///         {
///             GcsOutputDirectory = bucket.Name.Apply(name => $"gs://{name}/output"),
///             DefaultRuntime = new Gcp.Vertex.Inputs.AiPipelineJobRuntimeConfigDefaultRuntimeArgs
///             {
///                 PersistentResourceRuntimeDetail = new Gcp.Vertex.Inputs.AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetailArgs
///                 {
///                     PersistentResourceName = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-central1/persistentResources/example-persistent-resource",
///                     TaskResourceUnavailableWaitTimeMs = "60000",
///                     TaskResourceUnavailableTimeoutBehavior = "FALL_BACK_TO_ON_DEMAND",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
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
/// 			Name:                     pulumi.String("example-pipeline-bucket-pr"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"components": map[string]map[string]string{
/// 				"comp-hello-world": map[string]string{
/// 					"executorLabel": "exec-hello-world",
/// 				},
/// 			},
/// 			"deploymentSpec": map[string]map[string]map[string]map[string]interface{}{
/// 				"executors": map[string]map[string]map[string]interface{}{
/// 					"exec-hello-world": map[string]map[string]interface{}{
/// 						"container": map[string]interface{}{
/// 							"command": []string{
/// 								"sh",
/// 								"-c",
/// 								"echo hello",
/// 							},
/// 							"image": "python:3.11",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"pipelineInfo": map[string]string{
/// 				"name": "persistent-resource-pipeline",
/// 			},
/// 			"root": map[string]map[string]map[string]map[string]map[string]string{
/// 				"dag": map[string]map[string]map[string]map[string]string{
/// 					"tasks": map[string]map[string]map[string]string{
/// 						"hello-world": map[string]map[string]string{
/// 							"componentRef": map[string]string{
/// 								"name": "comp-hello-world",
/// 							},
/// 							"taskInfo": map[string]string{
/// 								"name": "hello-world",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"schemaVersion": "2.1.0",
/// 			"sdkVersion":    "kfp-2.7.0",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiPipelineJob(ctx, "pipeline_job", &vertex.AiPipelineJobArgs{
/// 			DisplayName:    pulumi.String("example-pipeline-job-pr"),
/// 			PipelineJobId:  pulumi.String("example-pipeline-job-pr"),
/// 			Region:         pulumi.String("us-central1"),
/// 			DeletionPolicy: pulumi.String("FORCE"),
/// 			PipelineSpec:   pulumi.String(json0),
/// 			RuntimeConfig: &vertex.AiPipelineJobRuntimeConfigArgs{
/// 				GcsOutputDirectory: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/output", name), nil
/// 				}).(pulumi.StringOutput),
/// 				DefaultRuntime: &vertex.AiPipelineJobRuntimeConfigDefaultRuntimeArgs{
/// 					PersistentResourceRuntimeDetail: &vertex.AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetailArgs{
/// 						PersistentResourceName:                 pulumi.Sprintf("projects/%v/locations/us-central1/persistentResources/example-persistent-resource", project.Number),
/// 						TaskResourceUnavailableWaitTimeMs:      pulumi.String("60000"),
/// 						TaskResourceUnavailableTimeoutBehavior: pulumi.String("FALL_BACK_TO_ON_DEMAND"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "example-pipeline-bucket-pr"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_vertex_ai_pipeline_job" "pipeline_job" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name    = "example-pipeline-job-pr"
///   pipeline_job_id = "example-pipeline-job-pr"
///   region          = "us-central1"
///   deletion_policy = "FORCE"
///   pipeline_spec = jsonencode({
///     "components" = {
///       "comp-hello-world" = {
///         "executorLabel" = "exec-hello-world"
///       }
///     }
///     "deploymentSpec" = {
///       "executors" = {
///         "exec-hello-world" = {
///           "container" = {
///             "command" = ["sh", "-c", "echo hello"]
///             "image"   = "python:3.11"
///           }
///         }
///       }
///     }
///     "pipelineInfo" = {
///       "name" = "persistent-resource-pipeline"
///     }
///     "root" = {
///       "dag" = {
///         "tasks" = {
///           "hello-world" = {
///             "componentRef" = {
///               "name" = "comp-hello-world"
///             }
///             "taskInfo" = {
///               "name" = "hello-world"
///             }
///           }
///         }
///       }
///     }
///     "schemaVersion" = "2.1.0"
///     "sdkVersion"    = "kfp-2.7.0"
///   })
///   runtime_config = {
///     gcs_output_directory ="gs://${gcp_storage_bucket.bucket.name}/output"
///     default_runtime = {
///       persistent_resource_runtime_detail = {
///         persistent_resource_name                   ="projects/${data.gcp_organizations_project.project.number}/locations/us-central1/persistentResources/example-persistent-resource"
///         task_resource_unavailable_wait_time_ms     = "60000"
///         task_resource_unavailable_timeout_behavior = "FALL_BACK_TO_ON_DEMAND"
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
/// import com.pulumi.gcp.vertex.AiPipelineJob;
/// import com.pulumi.gcp.vertex.AiPipelineJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobRuntimeConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobRuntimeConfigDefaultRuntimeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetailArgs;
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
///             .name("example-pipeline-bucket-pr")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var pipelineJob = new AiPipelineJob("pipelineJob", AiPipelineJobArgs.builder()
///             .displayName("example-pipeline-job-pr")
///             .pipelineJobId("example-pipeline-job-pr")
///             .region("us-central1")
///             .deletionPolicy("FORCE")
///             .pipelineSpec(serializeJson(
///                 jsonObject(
///                     jsonProperty("components", jsonObject(
///                         jsonProperty("comp-hello-world", jsonObject(
///                             jsonProperty("executorLabel", "exec-hello-world")
///                         ))
///                     )),
///                     jsonProperty("deploymentSpec", jsonObject(
///                         jsonProperty("executors", jsonObject(
///                             jsonProperty("exec-hello-world", jsonObject(
///                                 jsonProperty("container", jsonObject(
///                                     jsonProperty("command", jsonArray(
///                                         "sh",
///                                         "-c",
///                                         "echo hello"
///                                     )),
///                                     jsonProperty("image", "python:3.11")
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("pipelineInfo", jsonObject(
///                         jsonProperty("name", "persistent-resource-pipeline")
///                     )),
///                     jsonProperty("root", jsonObject(
///                         jsonProperty("dag", jsonObject(
///                             jsonProperty("tasks", jsonObject(
///                                 jsonProperty("hello-world", jsonObject(
///                                     jsonProperty("componentRef", jsonObject(
///                                         jsonProperty("name", "comp-hello-world")
///                                     )),
///                                     jsonProperty("taskInfo", jsonObject(
///                                         jsonProperty("name", "hello-world")
///                                     ))
///                                 ))
///                             ))
///                         ))
///                     )),
///                     jsonProperty("schemaVersion", "2.1.0"),
///                     jsonProperty("sdkVersion", "kfp-2.7.0")
///                 )))
///             .runtimeConfig(AiPipelineJobRuntimeConfigArgs.builder()
///                 .gcsOutputDirectory(bucket.name().applyValue(_name -> String.format("gs://%s/output", _name)))
///                 .defaultRuntime(AiPipelineJobRuntimeConfigDefaultRuntimeArgs.builder()
///                     .persistentResourceRuntimeDetail(AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetailArgs.builder()
///                         .persistentResourceName(String.format("projects/%s/locations/us-central1/persistentResources/example-persistent-resource", project.number()))
///                         .taskResourceUnavailableWaitTimeMs("60000")
///                         .taskResourceUnavailableTimeoutBehavior("FALL_BACK_TO_ON_DEMAND")
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
///       name: example-pipeline-bucket-pr
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   pipelineJob:
///     type: gcp:vertex:AiPipelineJob
///     name: pipeline_job
///     properties:
///       displayName: example-pipeline-job-pr
///       pipelineJobId: example-pipeline-job-pr
///       region: us-central1
///       deletionPolicy: FORCE
///       pipelineSpec:
///         fn::toJSON:
///           components:
///             comp-hello-world:
///               executorLabel: exec-hello-world
///           deploymentSpec:
///             executors:
///               exec-hello-world:
///                 container:
///                   command:
///                     - sh
///                     - -c
///                     - echo hello
///                   image: python:3.11
///           pipelineInfo:
///             name: persistent-resource-pipeline
///           root:
///             dag:
///               tasks:
///                 hello-world:
///                   componentRef:
///                     name: comp-hello-world
///                   taskInfo:
///                     name: hello-world
///           schemaVersion: 2.1.0
///           sdkVersion: kfp-2.7.0
///       runtimeConfig:
///         gcsOutputDirectory: gs://${bucket.name}/output
///         defaultRuntime:
///           persistentResourceRuntimeDetail:
///             persistentResourceName: projects/${project.number}/locations/us-central1/persistentResources/example-persistent-resource
///             taskResourceUnavailableWaitTimeMs: '60000'
///             taskResourceUnavailableTimeoutBehavior: FALL_BACK_TO_ON_DEMAND
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
/// PipelineJob can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/pipelineJobs/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, PipelineJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiPipelineJob:AiPipelineJob default projects/{{project}}/locations/{{region}}/pipelineJobs/{{name}}
/// $ pulumi import gcp:vertex/aiPipelineJob:AiPipelineJob default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiPipelineJob:AiPipelineJob default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiPipelineJob:AiPipelineJob default {{name}}
/// ```
class AiPipelineJob extends pulumi.CustomResource {
  /// (Output)
  /// Task create time.
  late final pulumi.Output<String> createTime;
  /// The deletion policy for the pipeline job. Setting `FORCE` will cancel the pipeline
  /// job if it is in an active state before deleting it. Defaults to `DELETE`.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", Terraform will attempt to delete the pipeline job without
  /// cancelling it first, which will fail if the pipeline job is still in an active state.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key options for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiPipelineJobEncryptionSpec?> encryptionSpec;
  /// (Output)
  /// Task end time.
  late final pulumi.Output<String> endTime;
  /// (Output)
  /// The error that occurred during task execution. Only populated when the task's state is FAILED or CANCELLED.
  /// Structure is documented below.
  late final pulumi.Output<List<AiPipelineJobError>> errors;
  /// The details of pipeline run. Not available in the list view.
  /// Structure is documented below.
  late final pulumi.Output<List<AiPipelineJobJobDetail>> jobDetails;
  /// The labels with user-defined metadata to organize PipelineJob.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// (Output)
  /// The resource name of the Context.
  late final pulumi.Output<String> name;
  /// The full name of the Compute Engine network to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. Format is of the form `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  late final pulumi.Output<String?> network;
  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated.
  /// This value should be less than 128 characters, and valid characters are `/[a-z][0-9]-/`.
  late final pulumi.Output<String?> pipelineJobId;
  /// The spec of the pipeline. This is a JSON object that describes the pipeline.
  late final pulumi.Output<String> pipelineSpec;
  /// Whether to do component level validations before job creation.
  late final pulumi.Output<bool?> preflightValidations;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Configuration for PSC-I for PipelineJob.
  /// Structure is documented below.
  late final pulumi.Output<AiPipelineJobPscInterfaceConfig?> pscInterfaceConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the pipeline job. eg us-central1
  late final pulumi.Output<String?> region;
  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network.
  late final pulumi.Output<List<String>?> reservedIpRanges;
  /// Runtime config of the pipeline.
  /// Structure is documented below.
  late final pulumi.Output<AiPipelineJobRuntimeConfig?> runtimeConfig;
  /// The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  late final pulumi.Output<String> scheduleName;
  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. Users starting the pipeline must have the iam.serviceAccounts.actAs permission on this service account.
  late final pulumi.Output<String> serviceAccount;
  /// (Output)
  /// Task start time.
  late final pulumi.Output<String> startTime;
  /// (Output)
  /// The detailed state of the task.
  late final pulumi.Output<String> state;
  /// Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  /// Structure is documented below.
  late final pulumi.Output<List<AiPipelineJobTemplateMetadata>> templateMetadatas;
  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported.
  late final pulumi.Output<String?> templateUri;
  /// (Output)
  /// Timestamp when this Context was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiPipelineJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiPipelineJob]. {@macro pulumi_vertex_ai_pipeline_job_ai_pipeline_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiPipelineJob(
    String name, {
    AiPipelineJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiPipelineJob:AiPipelineJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.2').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiPipelineJobEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiPipelineJobError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobError>(guardedValue, (value) => AiPipelineJobError.fromMap((value as Map).cast<String, dynamic>())); });
    jobDetails = registerOutput<List<AiPipelineJobJobDetail>>('jobDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobJobDetail>(guardedValue, (value) => AiPipelineJobJobDetail.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    pipelineJobId = registerOutput<String?>('pipelineJobId');
    pipelineSpec = registerOutput<String>('pipelineSpec');
    preflightValidations = registerOutput<bool?>('preflightValidations');
    project = registerOutput<String>('project');
    pscInterfaceConfig = registerOutput<AiPipelineJobPscInterfaceConfig?>('pscInterfaceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    runtimeConfig = registerOutput<AiPipelineJobRuntimeConfig?>('runtimeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleName = registerOutput<String>('scheduleName');
    serviceAccount = registerOutput<String>('serviceAccount');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    templateMetadatas = registerOutput<List<AiPipelineJobTemplateMetadata>>('templateMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobTemplateMetadata>(guardedValue, (value) => AiPipelineJobTemplateMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    templateUri = registerOutput<String?>('templateUri');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiPipelineJob] resource's state with the given [name] and [id].
  static AiPipelineJob get(
    String name,
    pulumi.Input<String> id, {
    AiPipelineJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiPipelineJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiPipelineJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiPipelineJob:AiPipelineJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiPipelineJobEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiPipelineJobError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobError>(guardedValue, (value) => AiPipelineJobError.fromMap((value as Map).cast<String, dynamic>())); });
    jobDetails = registerOutput<List<AiPipelineJobJobDetail>>('jobDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobJobDetail>(guardedValue, (value) => AiPipelineJobJobDetail.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    pipelineJobId = registerOutput<String?>('pipelineJobId');
    pipelineSpec = registerOutput<String>('pipelineSpec');
    preflightValidations = registerOutput<bool?>('preflightValidations');
    project = registerOutput<String>('project');
    pscInterfaceConfig = registerOutput<AiPipelineJobPscInterfaceConfig?>('pscInterfaceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    runtimeConfig = registerOutput<AiPipelineJobRuntimeConfig?>('runtimeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleName = registerOutput<String>('scheduleName');
    serviceAccount = registerOutput<String>('serviceAccount');
    startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    templateMetadatas = registerOutput<List<AiPipelineJobTemplateMetadata>>('templateMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobTemplateMetadata>(guardedValue, (value) => AiPipelineJobTemplateMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    templateUri = registerOutput<String?>('templateUri');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiPipelineJob] resource.
  AiPipelineJob.reference(String urn)
    : super(
        'gcp:vertex/aiPipelineJob:AiPipelineJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiPipelineJobEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiPipelineJobError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobError>(guardedValue, (value) => AiPipelineJobError.fromMap((value as Map).cast<String, dynamic>())); });
    jobDetails = registerOutput<List<AiPipelineJobJobDetail>>('jobDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobJobDetail>(guardedValue, (value) => AiPipelineJobJobDetail.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    pipelineJobId = registerOutput<String?>('pipelineJobId');
    pipelineSpec = registerOutput<String>('pipelineSpec');
    preflightValidations = registerOutput<bool?>('preflightValidations');
    project = registerOutput<String>('project');
    pscInterfaceConfig = registerOutput<AiPipelineJobPscInterfaceConfig?>('pscInterfaceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    runtimeConfig = registerOutput<AiPipelineJobRuntimeConfig?>('runtimeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPipelineJobRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleName = registerOutput<String>('scheduleName');
    serviceAccount = registerOutput<String>('serviceAccount');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    templateMetadatas = registerOutput<List<AiPipelineJobTemplateMetadata>>('templateMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiPipelineJobTemplateMetadata>(guardedValue, (value) => AiPipelineJobTemplateMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    templateUri = registerOutput<String?>('templateUri');
    updateTime = registerOutput<String>('updateTime');
  }
}
