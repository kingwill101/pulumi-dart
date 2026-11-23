import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_training_pipeline_args.dart';
import 'ai_training_pipeline_encryption_spec.dart';
import 'ai_training_pipeline_error.dart';
import 'ai_training_pipeline_input_data_config.dart';
import 'ai_training_pipeline_model_to_upload.dart';
import 'ai_training_pipeline_state.dart';

/// The TrainingPipeline orchestrates tasks associated with training a Model.
///
///
/// To get more information about TrainingPipeline, see:
///
/// * [API documentation](https://docs.cloud.google.com/gemini-enterprise-agent-platform/reference/rest/v1/projects.locations.trainingPipelines)
/// * How-to Guides
/// * [Custom training overview](https://cloud.google.com/vertex-ai/docs/training/custom-training)
///
///
/// ## Example Usage
///
/// ### Vertex Ai Training Pipeline Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicPipeline = new gcp.vertex.AiTrainingPipeline("basic_pipeline", {
///     displayName: "test-training-pipeline",
///     modelId: "test-model-id",
///     region: "us-central1",
///     trainingTaskDefinition: "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     trainingTaskInputs: JSON.stringify({
///         workerPoolSpecs: [{
///             machineSpec: {
///                 machineType: "n1-standard-4",
///             },
///             replicaCount: "1",
///             diskSpec: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 100,
///             },
///             containerSpec: {
///                 imageUri: "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
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
/// basic_pipeline = gcp.vertex.AiTrainingPipeline("basic_pipeline",
///     display_name="test-training-pipeline",
///     model_id="test-model-id",
///     region="us-central1",
///     training_task_definition="gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     training_task_inputs=json.dumps({
///         "workerPoolSpecs": [{
///             "machineSpec": {
///                 "machineType": "n1-standard-4",
///             },
///             "replicaCount": "1",
///             "diskSpec": {
///                 "bootDiskType": "pd-ssd",
///                 "bootDiskSizeGb": 100,
///             },
///             "containerSpec": {
///                 "imageUri": "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
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
///     var basicPipeline = new Gcp.Vertex.AiTrainingPipeline("basic_pipeline", new()
///     {
///         DisplayName = "test-training-pipeline",
///         ModelId = "test-model-id",
///         Region = "us-central1",
///         TrainingTaskDefinition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///         TrainingTaskInputs = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["workerPoolSpecs"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["machineSpec"] = new Dictionary<string, object?>
///                     {
///                         ["machineType"] = "n1-standard-4",
///                     },
///                     ["replicaCount"] = "1",
///                     ["diskSpec"] = new Dictionary<string, object?>
///                     {
///                         ["bootDiskType"] = "pd-ssd",
///                         ["bootDiskSizeGb"] = 100,
///                     },
///                     ["containerSpec"] = new Dictionary<string, object?>
///                     {
///                         ["imageUri"] = "gcr.io/cloud-marketplace/google/debian11",
///                     },
///                 },
///             },
///         }),
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
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"workerPoolSpecs": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"machineSpec": map[string]string{
/// 						"machineType": "n1-standard-4",
/// 					},
/// 					"replicaCount": "1",
/// 					"diskSpec": map[string]interface{}{
/// 						"bootDiskType":   "pd-ssd",
/// 						"bootDiskSizeGb": 100,
/// 					},
/// 					"containerSpec": map[string]string{
/// 						"imageUri": "gcr.io/cloud-marketplace/google/debian11",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiTrainingPipeline(ctx, "basic_pipeline", &vertex.AiTrainingPipelineArgs{
/// 			DisplayName:            pulumi.String("test-training-pipeline"),
/// 			ModelId:                pulumi.String("test-model-id"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			TrainingTaskDefinition: pulumi.String("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"),
/// 			TrainingTaskInputs:     pulumi.String(json0),
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
/// resource "gcp_vertex_ai_training_pipeline" "basic_pipeline" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name             = "test-training-pipeline"
///   model_id                 = "test-model-id"
///   region                   = "us-central1"
///   training_task_definition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"
///   training_task_inputs = jsonencode({
///     "workerPoolSpecs" = [{
///       "machineSpec" = {
///         "machineType" = "n1-standard-4"
///       }
///       "replicaCount" = "1"
///       "diskSpec" = {
///         "bootDiskType"   = "pd-ssd"
///         "bootDiskSizeGb" = 100
///       }
///       "containerSpec" = {
///         "imageUri" = "gcr.io/cloud-marketplace/google/debian11"
///       }
///     }]
///   })
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
/// import com.pulumi.gcp.vertex.AiTrainingPipeline;
/// import com.pulumi.gcp.vertex.AiTrainingPipelineArgs;
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
///         var basicPipeline = new AiTrainingPipeline("basicPipeline", AiTrainingPipelineArgs.builder()
///             .displayName("test-training-pipeline")
///             .modelId("test-model-id")
///             .region("us-central1")
///             .trainingTaskDefinition("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml")
///             .trainingTaskInputs(serializeJson(
///                 jsonObject(
///                     jsonProperty("workerPoolSpecs", jsonArray(jsonObject(
///                         jsonProperty("machineSpec", jsonObject(
///                             jsonProperty("machineType", "n1-standard-4")
///                         )),
///                         jsonProperty("replicaCount", "1"),
///                         jsonProperty("diskSpec", jsonObject(
///                             jsonProperty("bootDiskType", "pd-ssd"),
///                             jsonProperty("bootDiskSizeGb", 100)
///                         )),
///                         jsonProperty("containerSpec", jsonObject(
///                             jsonProperty("imageUri", "gcr.io/cloud-marketplace/google/debian11")
///                         ))
///                     )))
///                 )))
///             .labels(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicPipeline:
///     type: gcp:vertex:AiTrainingPipeline
///     name: basic_pipeline
///     properties:
///       displayName: test-training-pipeline
///       modelId: test-model-id
///       region: us-central1
///       trainingTaskDefinition: gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml
///       trainingTaskInputs:
///         fn::toJSON:
///           workerPoolSpecs:
///             - machineSpec:
///                 machineType: n1-standard-4
///               replicaCount: '1'
///               diskSpec:
///                 bootDiskType: pd-ssd
///                 bootDiskSizeGb: 100
///               containerSpec:
///                 imageUri: gcr.io/cloud-marketplace/google/debian11
///       labels:
///         env: test
/// ```
///
///
/// ### Vertex Ai Training Pipeline Model
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "test-model-bucket",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const modelPipeline = new gcp.vertex.AiTrainingPipeline("model_pipeline", {
///     displayName: "test-training-pipeline-model",
///     region: "us-central1",
///     trainingTaskDefinition: "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     trainingTaskInputs: JSON.stringify({
///         workerPoolSpecs: [{
///             machineSpec: {
///                 machineType: "n1-standard-4",
///             },
///             replicaCount: "1",
///             diskSpec: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 100,
///             },
///             containerSpec: {
///                 imageUri: "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
///     modelToUpload: {
///         displayName: "test-model",
///         description: "A custom model uploaded from training pipeline",
///         versionDescription: "v1 initial release",
///         versionAliases: [
///             "v1",
///             "latest",
///         ],
///         artifactUri: pulumi.interpolate`gs://${bucket.name}/model`,
///         containerSpec: {
///             imageUri: "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest",
///             commands: ["python"],
///             args: [
///                 "-m",
///                 "server",
///             ],
///             predictRoute: "/predict",
///             healthRoute: "/health",
///             envs: [{
///                 name: "APP_ENV",
///                 value: "production",
///             }],
///             ports: [{
///                 containerPort: 8080,
///             }],
///             grpcPorts: [{
///                 containerPort: 8081,
///             }],
///             deploymentTimeout: "1800s",
///             sharedMemorySizeMb: "128",
///             startupProbe: {
///                 exec: {
///                     commands: [
///                         "cat",
///                         "/tmp/ready",
///                     ],
///                 },
///                 periodSeconds: 10,
///                 timeoutSeconds: 10,
///             },
///             healthProbe: {
///                 exec: {
///                     commands: [
///                         "cat",
///                         "/tmp/healthy",
///                     ],
///                 },
///                 periodSeconds: 10,
///                 timeoutSeconds: 10,
///             },
///         },
///         labels: {
///             model_type: "custom",
///         },
///         explanationSpec: {
///             parameters: JSON.stringify({
///                 sampledShapleyAttribution: {
///                     pathCount: 5,
///                 },
///             }),
///             metadata: JSON.stringify({
///                 inputs: {
///                     features: {},
///                 },
///                 outputs: {
///                     predictions: {},
///                 },
///             }),
///         },
///     },
///     modelId: "test-model-id",
///     parentModel: "test-parent-model",
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
///     name="test-model-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// model_pipeline = gcp.vertex.AiTrainingPipeline("model_pipeline",
///     display_name="test-training-pipeline-model",
///     region="us-central1",
///     training_task_definition="gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     training_task_inputs=json.dumps({
///         "workerPoolSpecs": [{
///             "machineSpec": {
///                 "machineType": "n1-standard-4",
///             },
///             "replicaCount": "1",
///             "diskSpec": {
///                 "bootDiskType": "pd-ssd",
///                 "bootDiskSizeGb": 100,
///             },
///             "containerSpec": {
///                 "imageUri": "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
///     model_to_upload={
///         "display_name": "test-model",
///         "description": "A custom model uploaded from training pipeline",
///         "version_description": "v1 initial release",
///         "version_aliases": [
///             "v1",
///             "latest",
///         ],
///         "artifact_uri": bucket.name.apply(lambda name: f"gs://{name}/model"),
///         "container_spec": {
///             "image_uri": "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest",
///             "commands": ["python"],
///             "args": [
///                 "-m",
///                 "server",
///             ],
///             "predict_route": "/predict",
///             "health_route": "/health",
///             "envs": [{
///                 "name": "APP_ENV",
///                 "value": "production",
///             }],
///             "ports": [{
///                 "container_port": 8080,
///             }],
///             "grpc_ports": [{
///                 "container_port": 8081,
///             }],
///             "deployment_timeout": "1800s",
///             "shared_memory_size_mb": "128",
///             "startup_probe": {
///                 "exec_": {
///                     "commands": [
///                         "cat",
///                         "/tmp/ready",
///                     ],
///                 },
///                 "period_seconds": 10,
///                 "timeout_seconds": 10,
///             },
///             "health_probe": {
///                 "exec_": {
///                     "commands": [
///                         "cat",
///                         "/tmp/healthy",
///                     ],
///                 },
///                 "period_seconds": 10,
///                 "timeout_seconds": 10,
///             },
///         },
///         "labels": {
///             "model_type": "custom",
///         },
///         "explanation_spec": {
///             "parameters": json.dumps({
///                 "sampledShapleyAttribution": {
///                     "pathCount": 5,
///                 },
///             }),
///             "metadata": json.dumps({
///                 "inputs": {
///                     "features": {},
///                 },
///                 "outputs": {
///                     "predictions": {},
///                 },
///             }),
///         },
///     },
///     model_id="test-model-id",
///     parent_model="test-parent-model",
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
///         Name = "test-model-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var modelPipeline = new Gcp.Vertex.AiTrainingPipeline("model_pipeline", new()
///     {
///         DisplayName = "test-training-pipeline-model",
///         Region = "us-central1",
///         TrainingTaskDefinition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///         TrainingTaskInputs = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["workerPoolSpecs"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["machineSpec"] = new Dictionary<string, object?>
///                     {
///                         ["machineType"] = "n1-standard-4",
///                     },
///                     ["replicaCount"] = "1",
///                     ["diskSpec"] = new Dictionary<string, object?>
///                     {
///                         ["bootDiskType"] = "pd-ssd",
///                         ["bootDiskSizeGb"] = 100,
///                     },
///                     ["containerSpec"] = new Dictionary<string, object?>
///                     {
///                         ["imageUri"] = "gcr.io/cloud-marketplace/google/debian11",
///                     },
///                 },
///             },
///         }),
///         ModelToUpload = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadArgs
///         {
///             DisplayName = "test-model",
///             Description = "A custom model uploaded from training pipeline",
///             VersionDescription = "v1 initial release",
///             VersionAliases = new[]
///             {
///                 "v1",
///                 "latest",
///             },
///             ArtifactUri = bucket.Name.Apply(name => $"gs://{name}/model"),
///             ContainerSpec = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecArgs
///             {
///                 ImageUri = "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest",
///                 Commands = new[]
///                 {
///                     "python",
///                 },
///                 Args = new[]
///                 {
///                     "-m",
///                     "server",
///                 },
///                 PredictRoute = "/predict",
///                 HealthRoute = "/health",
///                 Envs = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecEnvArgs
///                     {
///                         Name = "APP_ENV",
///                         Value = "production",
///                     },
///                 },
///                 Ports = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecPortArgs
///                     {
///                         ContainerPort = 8080,
///                     },
///                 },
///                 GrpcPorts = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecGrpcPortArgs
///                     {
///                         ContainerPort = 8081,
///                     },
///                 },
///                 DeploymentTimeout = "1800s",
///                 SharedMemorySizeMb = "128",
///                 StartupProbe = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecStartupProbeArgs
///                 {
///                     Exec = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecStartupProbeExecArgs
///                     {
///                         Commands = new[]
///                         {
///                             "cat",
///                             "/tmp/ready",
///                         },
///                     },
///                     PeriodSeconds = 10,
///                     TimeoutSeconds = 10,
///                 },
///                 HealthProbe = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecHealthProbeArgs
///                 {
///                     Exec = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecHealthProbeExecArgs
///                     {
///                         Commands = new[]
///                         {
///                             "cat",
///                             "/tmp/healthy",
///                         },
///                     },
///                     PeriodSeconds = 10,
///                     TimeoutSeconds = 10,
///                 },
///             },
///             Labels =
///             {
///                 { "model_type", "custom" },
///             },
///             ExplanationSpec = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadExplanationSpecArgs
///             {
///                 Parameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["sampledShapleyAttribution"] = new Dictionary<string, object?>
///                     {
///                         ["pathCount"] = 5,
///                     },
///                 }),
///                 Metadata = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["inputs"] = new Dictionary<string, object?>
///                     {
///                         ["features"] = new Dictionary<string, object?>
///                         {
///                         },
///                     },
///                     ["outputs"] = new Dictionary<string, object?>
///                     {
///                         ["predictions"] = new Dictionary<string, object?>
///                         {
///                         },
///                     },
///                 }),
///             },
///         },
///         ModelId = "test-model-id",
///         ParentModel = "test-parent-model",
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
/// 			Name:                     pulumi.String("test-model-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"workerPoolSpecs": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"machineSpec": map[string]string{
/// 						"machineType": "n1-standard-4",
/// 					},
/// 					"replicaCount": "1",
/// 					"diskSpec": map[string]interface{}{
/// 						"bootDiskType":   "pd-ssd",
/// 						"bootDiskSizeGb": 100,
/// 					},
/// 					"containerSpec": map[string]string{
/// 						"imageUri": "gcr.io/cloud-marketplace/google/debian11",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]map[string]int{
/// 			"sampledShapleyAttribution": map[string]int{
/// 				"pathCount": 5,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(map[string]map[string]map[string]interface{}{
/// 			"inputs": map[string]map[string]interface{}{
/// 				"features": map[string]interface{}{},
/// 			},
/// 			"outputs": map[string]map[string]interface{}{
/// 				"predictions": map[string]interface{}{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		_, err = vertex.NewAiTrainingPipeline(ctx, "model_pipeline", &vertex.AiTrainingPipelineArgs{
/// 			DisplayName:            pulumi.String("test-training-pipeline-model"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			TrainingTaskDefinition: pulumi.String("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"),
/// 			TrainingTaskInputs:     pulumi.String(json0),
/// 			ModelToUpload: &vertex.AiTrainingPipelineModelToUploadArgs{
/// 				DisplayName:        pulumi.String("test-model"),
/// 				Description:        pulumi.String("A custom model uploaded from training pipeline"),
/// 				VersionDescription: pulumi.String("v1 initial release"),
/// 				VersionAliases: pulumi.StringArray{
/// 					pulumi.String("v1"),
/// 					pulumi.String("latest"),
/// 				},
/// 				ArtifactUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/model", name), nil
/// 				}).(pulumi.StringOutput),
/// 				ContainerSpec: &vertex.AiTrainingPipelineModelToUploadContainerSpecArgs{
/// 					ImageUri: pulumi.String("us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest"),
/// 					Commands: pulumi.StringArray{
/// 						pulumi.String("python"),
/// 					},
/// 					Args: pulumi.StringArray{
/// 						pulumi.String("-m"),
/// 						pulumi.String("server"),
/// 					},
/// 					PredictRoute: pulumi.String("/predict"),
/// 					HealthRoute:  pulumi.String("/health"),
/// 					Envs: vertex.AiTrainingPipelineModelToUploadContainerSpecEnvArray{
/// 						&vertex.AiTrainingPipelineModelToUploadContainerSpecEnvArgs{
/// 							Name:  pulumi.String("APP_ENV"),
/// 							Value: pulumi.String("production"),
/// 						},
/// 					},
/// 					Ports: vertex.AiTrainingPipelineModelToUploadContainerSpecPortArray{
/// 						&vertex.AiTrainingPipelineModelToUploadContainerSpecPortArgs{
/// 							ContainerPort: pulumi.Int(8080),
/// 						},
/// 					},
/// 					GrpcPorts: vertex.AiTrainingPipelineModelToUploadContainerSpecGrpcPortArray{
/// 						&vertex.AiTrainingPipelineModelToUploadContainerSpecGrpcPortArgs{
/// 							ContainerPort: pulumi.Int(8081),
/// 						},
/// 					},
/// 					DeploymentTimeout:  pulumi.String("1800s"),
/// 					SharedMemorySizeMb: pulumi.String("128"),
/// 					StartupProbe: &vertex.AiTrainingPipelineModelToUploadContainerSpecStartupProbeArgs{
/// 						Exec: &vertex.AiTrainingPipelineModelToUploadContainerSpecStartupProbeExecArgs{
/// 							Commands: pulumi.StringArray{
/// 								pulumi.String("cat"),
/// 								pulumi.String("/tmp/ready"),
/// 							},
/// 						},
/// 						PeriodSeconds:  pulumi.Int(10),
/// 						TimeoutSeconds: pulumi.Int(10),
/// 					},
/// 					HealthProbe: &vertex.AiTrainingPipelineModelToUploadContainerSpecHealthProbeArgs{
/// 						Exec: &vertex.AiTrainingPipelineModelToUploadContainerSpecHealthProbeExecArgs{
/// 							Commands: pulumi.StringArray{
/// 								pulumi.String("cat"),
/// 								pulumi.String("/tmp/healthy"),
/// 							},
/// 						},
/// 						PeriodSeconds:  pulumi.Int(10),
/// 						TimeoutSeconds: pulumi.Int(10),
/// 					},
/// 				},
/// 				Labels: pulumi.StringMap{
/// 					"model_type": pulumi.String("custom"),
/// 				},
/// 				ExplanationSpec: &vertex.AiTrainingPipelineModelToUploadExplanationSpecArgs{
/// 					Parameters: pulumi.String(json1),
/// 					Metadata:   pulumi.String(json2),
/// 				},
/// 			},
/// 			ModelId:     pulumi.String("test-model-id"),
/// 			ParentModel: pulumi.String("test-parent-model"),
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
/// resource "gcp_vertex_ai_training_pipeline" "model_pipeline" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name             = "test-training-pipeline-model"
///   region                   = "us-central1"
///   training_task_definition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"
///   training_task_inputs = jsonencode({
///     "workerPoolSpecs" = [{
///       "machineSpec" = {
///         "machineType" = "n1-standard-4"
///       }
///       "replicaCount" = "1"
///       "diskSpec" = {
///         "bootDiskType"   = "pd-ssd"
///         "bootDiskSizeGb" = 100
///       }
///       "containerSpec" = {
///         "imageUri" = "gcr.io/cloud-marketplace/google/debian11"
///       }
///     }]
///   })
///   model_to_upload = {
///     display_name        = "test-model"
///     description         = "A custom model uploaded from training pipeline"
///     version_description = "v1 initial release"
///     version_aliases     = ["v1", "latest"]
///     artifact_uri        ="gs://${gcp_storage_bucket.bucket.name}/model"
///     container_spec = {
///       image_uri     = "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest"
///       commands      = ["python"]
///       args          = ["-m", "server"]
///       predict_route = "/predict"
///       health_route  = "/health"
///       envs = [{
///         name  = "APP_ENV"
///         value = "production"
///       }]
///       ports = [{
///         container_port = 8080
///       }]
///       grpc_ports = [{
///         container_port = 8081
///       }]
///       deployment_timeout    = "1800s"
///       shared_memory_size_mb = "128"
///       startup_probe = {
///         exec = {
///           commands = ["cat", "/tmp/ready"]
///         }
///         period_seconds  = 10
///         timeout_seconds = 10
///       }
///       health_probe = {
///         exec = {
///           commands = ["cat", "/tmp/healthy"]
///         }
///         period_seconds  = 10
///         timeout_seconds = 10
///       }
///     }
///     labels = {
///       "model_type" = "custom"
///     }
///     explanation_spec = {
///       parameters = jsonencode({
///         "sampledShapleyAttribution" = {
///           "pathCount" = 5
///         }
///       })
///       metadata = jsonencode({
///         "inputs" = {
///           "features" = {}
///         }
///         "outputs" = {
///           "predictions" = {}
///         }
///       })
///     }
///   }
///   model_id     = "test-model-id"
///   parent_model = "test-parent-model"
///   labels = {
///     "env" = "test"
///   }
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "test-model-bucket"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
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
/// import com.pulumi.gcp.vertex.AiTrainingPipeline;
/// import com.pulumi.gcp.vertex.AiTrainingPipelineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecEnvArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecPortArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecGrpcPortArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecStartupProbeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecStartupProbeExecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecHealthProbeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecHealthProbeExecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadExplanationSpecArgs;
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
///             .name("test-model-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var modelPipeline = new AiTrainingPipeline("modelPipeline", AiTrainingPipelineArgs.builder()
///             .displayName("test-training-pipeline-model")
///             .region("us-central1")
///             .trainingTaskDefinition("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml")
///             .trainingTaskInputs(serializeJson(
///                 jsonObject(
///                     jsonProperty("workerPoolSpecs", jsonArray(jsonObject(
///                         jsonProperty("machineSpec", jsonObject(
///                             jsonProperty("machineType", "n1-standard-4")
///                         )),
///                         jsonProperty("replicaCount", "1"),
///                         jsonProperty("diskSpec", jsonObject(
///                             jsonProperty("bootDiskType", "pd-ssd"),
///                             jsonProperty("bootDiskSizeGb", 100)
///                         )),
///                         jsonProperty("containerSpec", jsonObject(
///                             jsonProperty("imageUri", "gcr.io/cloud-marketplace/google/debian11")
///                         ))
///                     )))
///                 )))
///             .modelToUpload(AiTrainingPipelineModelToUploadArgs.builder()
///                 .displayName("test-model")
///                 .description("A custom model uploaded from training pipeline")
///                 .versionDescription("v1 initial release")
///                 .versionAliases(
///                     "v1",
///                     "latest")
///                 .artifactUri(bucket.name().applyValue(_name -> String.format("gs://%s/model", _name)))
///                 .containerSpec(AiTrainingPipelineModelToUploadContainerSpecArgs.builder()
///                     .imageUri("us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest")
///                     .commands("python")
///                     .args(
///                         "-m",
///                         "server")
///                     .predictRoute("/predict")
///                     .healthRoute("/health")
///                     .envs(AiTrainingPipelineModelToUploadContainerSpecEnvArgs.builder()
///                         .name("APP_ENV")
///                         .value("production")
///                         .build())
///                     .ports(AiTrainingPipelineModelToUploadContainerSpecPortArgs.builder()
///                         .containerPort(8080)
///                         .build())
///                     .grpcPorts(AiTrainingPipelineModelToUploadContainerSpecGrpcPortArgs.builder()
///                         .containerPort(8081)
///                         .build())
///                     .deploymentTimeout("1800s")
///                     .sharedMemorySizeMb("128")
///                     .startupProbe(AiTrainingPipelineModelToUploadContainerSpecStartupProbeArgs.builder()
///                         .exec(AiTrainingPipelineModelToUploadContainerSpecStartupProbeExecArgs.builder()
///                             .commands(
///                                 "cat",
///                                 "/tmp/ready")
///                             .build())
///                         .periodSeconds(10)
///                         .timeoutSeconds(10)
///                         .build())
///                     .healthProbe(AiTrainingPipelineModelToUploadContainerSpecHealthProbeArgs.builder()
///                         .exec(AiTrainingPipelineModelToUploadContainerSpecHealthProbeExecArgs.builder()
///                             .commands(
///                                 "cat",
///                                 "/tmp/healthy")
///                             .build())
///                         .periodSeconds(10)
///                         .timeoutSeconds(10)
///                         .build())
///                     .build())
///                 .labels(Map.of("model_type", "custom"))
///                 .explanationSpec(AiTrainingPipelineModelToUploadExplanationSpecArgs.builder()
///                     .parameters(serializeJson(
///                         jsonObject(
///                             jsonProperty("sampledShapleyAttribution", jsonObject(
///                                 jsonProperty("pathCount", 5)
///                             ))
///                         )))
///                     .metadata(serializeJson(
///                         jsonObject(
///                             jsonProperty("inputs", jsonObject(
///                                 jsonProperty("features", jsonObject(
///
///                                 ))
///                             )),
///                             jsonProperty("outputs", jsonObject(
///                                 jsonProperty("predictions", jsonObject(
///
///                                 ))
///                             ))
///                         )))
///                     .build())
///                 .build())
///             .modelId("test-model-id")
///             .parentModel("test-parent-model")
///             .labels(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   modelPipeline:
///     type: gcp:vertex:AiTrainingPipeline
///     name: model_pipeline
///     properties:
///       displayName: test-training-pipeline-model
///       region: us-central1
///       trainingTaskDefinition: gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml
///       trainingTaskInputs:
///         fn::toJSON:
///           workerPoolSpecs:
///             - machineSpec:
///                 machineType: n1-standard-4
///               replicaCount: '1'
///               diskSpec:
///                 bootDiskType: pd-ssd
///                 bootDiskSizeGb: 100
///               containerSpec:
///                 imageUri: gcr.io/cloud-marketplace/google/debian11
///       modelToUpload:
///         displayName: test-model
///         description: A custom model uploaded from training pipeline
///         versionDescription: v1 initial release
///         versionAliases:
///           - v1
///           - latest
///         artifactUri: gs://${bucket.name}/model
///         containerSpec:
///           imageUri: us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest
///           commands:
///             - python
///           args:
///             - -m
///             - server
///           predictRoute: /predict
///           healthRoute: /health
///           envs:
///             - name: APP_ENV
///               value: production
///           ports:
///             - containerPort: 8080
///           grpcPorts:
///             - containerPort: 8081
///           deploymentTimeout: 1800s
///           sharedMemorySizeMb: '128'
///           startupProbe:
///             exec:
///               commands:
///                 - cat
///                 - /tmp/ready
///             periodSeconds: 10
///             timeoutSeconds: 10
///           healthProbe:
///             exec:
///               commands:
///                 - cat
///                 - /tmp/healthy
///             periodSeconds: 10
///             timeoutSeconds: 10
///         labels:
///           model_type: custom
///         explanationSpec:
///           parameters:
///             fn::toJSON:
///               sampledShapleyAttribution:
///                 pathCount: 5
///           metadata:
///             fn::toJSON:
///               inputs:
///                 features: {}
///               outputs:
///                 predictions: {}
///       modelId: test-model-id
///       parentModel: test-parent-model
///       labels:
///         env: test
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: test-model-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
/// ```
///
///
/// ### Vertex Ai Training Pipeline Dataset
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.vertex.AiDataset("dataset", {
///     displayName: "test-dataset",
///     metadataSchemaUri: "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml",
///     region: "us-central1",
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "test-bucket",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const datasetPipeline = new gcp.vertex.AiTrainingPipeline("dataset_pipeline", {
///     displayName: "test-training-pipeline-dataset",
///     modelId: "test-model-id",
///     region: "us-central1",
///     trainingTaskDefinition: "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     trainingTaskInputs: JSON.stringify({
///         workerPoolSpecs: [{
///             machineSpec: {
///                 machineType: "n1-standard-4",
///             },
///             replicaCount: "1",
///             diskSpec: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 100,
///             },
///             containerSpec: {
///                 imageUri: "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
///     inputDataConfig: {
///         datasetId: dataset.name,
///         annotationSchemaUri: "gs://google-cloud-aiplatform/schema/dataset/annotation/image_classification_1.0.0.yaml",
///         annotationsFilter: "annotation_filter_key:annotation_filter_value",
///         persistMlUseAssignment: false,
///         filterSplit: {
///             trainingFilter: "labels.test:training",
///             validationFilter: "labels.test:validation",
///             testFilter: "labels.test:test",
///         },
///         gcsDestination: {
///             outputUriPrefix: pulumi.interpolate`gs://${bucket.name}/dataset-export`,
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
/// dataset = gcp.vertex.AiDataset("dataset",
///     display_name="test-dataset",
///     metadata_schema_uri="gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml",
///     region="us-central1")
/// bucket = gcp.storage.Bucket("bucket",
///     name="test-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// dataset_pipeline = gcp.vertex.AiTrainingPipeline("dataset_pipeline",
///     display_name="test-training-pipeline-dataset",
///     model_id="test-model-id",
///     region="us-central1",
///     training_task_definition="gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     training_task_inputs=json.dumps({
///         "workerPoolSpecs": [{
///             "machineSpec": {
///                 "machineType": "n1-standard-4",
///             },
///             "replicaCount": "1",
///             "diskSpec": {
///                 "bootDiskType": "pd-ssd",
///                 "bootDiskSizeGb": 100,
///             },
///             "containerSpec": {
///                 "imageUri": "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
///     input_data_config={
///         "dataset_id": dataset.name,
///         "annotation_schema_uri": "gs://google-cloud-aiplatform/schema/dataset/annotation/image_classification_1.0.0.yaml",
///         "annotations_filter": "annotation_filter_key:annotation_filter_value",
///         "persist_ml_use_assignment": False,
///         "filter_split": {
///             "training_filter": "labels.test:training",
///             "validation_filter": "labels.test:validation",
///             "test_filter": "labels.test:test",
///         },
///         "gcs_destination": {
///             "output_uri_prefix": bucket.name.apply(lambda name: f"gs://{name}/dataset-export"),
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
///     var dataset = new Gcp.Vertex.AiDataset("dataset", new()
///     {
///         DisplayName = "test-dataset",
///         MetadataSchemaUri = "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml",
///         Region = "us-central1",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "test-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var datasetPipeline = new Gcp.Vertex.AiTrainingPipeline("dataset_pipeline", new()
///     {
///         DisplayName = "test-training-pipeline-dataset",
///         ModelId = "test-model-id",
///         Region = "us-central1",
///         TrainingTaskDefinition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///         TrainingTaskInputs = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["workerPoolSpecs"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["machineSpec"] = new Dictionary<string, object?>
///                     {
///                         ["machineType"] = "n1-standard-4",
///                     },
///                     ["replicaCount"] = "1",
///                     ["diskSpec"] = new Dictionary<string, object?>
///                     {
///                         ["bootDiskType"] = "pd-ssd",
///                         ["bootDiskSizeGb"] = 100,
///                     },
///                     ["containerSpec"] = new Dictionary<string, object?>
///                     {
///                         ["imageUri"] = "gcr.io/cloud-marketplace/google/debian11",
///                     },
///                 },
///             },
///         }),
///         InputDataConfig = new Gcp.Vertex.Inputs.AiTrainingPipelineInputDataConfigArgs
///         {
///             DatasetId = dataset.Name,
///             AnnotationSchemaUri = "gs://google-cloud-aiplatform/schema/dataset/annotation/image_classification_1.0.0.yaml",
///             AnnotationsFilter = "annotation_filter_key:annotation_filter_value",
///             PersistMlUseAssignment = false,
///             FilterSplit = new Gcp.Vertex.Inputs.AiTrainingPipelineInputDataConfigFilterSplitArgs
///             {
///                 TrainingFilter = "labels.test:training",
///                 ValidationFilter = "labels.test:validation",
///                 TestFilter = "labels.test:test",
///             },
///             GcsDestination = new Gcp.Vertex.Inputs.AiTrainingPipelineInputDataConfigGcsDestinationArgs
///             {
///                 OutputUriPrefix = bucket.Name.Apply(name => $"gs://{name}/dataset-export"),
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
/// 		dataset, err := vertex.NewAiDataset(ctx, "dataset", &vertex.AiDatasetArgs{
/// 			DisplayName:       pulumi.String("test-dataset"),
/// 			MetadataSchemaUri: pulumi.String("gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml"),
/// 			Region:            pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("test-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"workerPoolSpecs": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"machineSpec": map[string]string{
/// 						"machineType": "n1-standard-4",
/// 					},
/// 					"replicaCount": "1",
/// 					"diskSpec": map[string]interface{}{
/// 						"bootDiskType":   "pd-ssd",
/// 						"bootDiskSizeGb": 100,
/// 					},
/// 					"containerSpec": map[string]string{
/// 						"imageUri": "gcr.io/cloud-marketplace/google/debian11",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiTrainingPipeline(ctx, "dataset_pipeline", &vertex.AiTrainingPipelineArgs{
/// 			DisplayName:            pulumi.String("test-training-pipeline-dataset"),
/// 			ModelId:                pulumi.String("test-model-id"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			TrainingTaskDefinition: pulumi.String("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"),
/// 			TrainingTaskInputs:     pulumi.String(json0),
/// 			InputDataConfig: &vertex.AiTrainingPipelineInputDataConfigArgs{
/// 				DatasetId:              dataset.Name,
/// 				AnnotationSchemaUri:    pulumi.String("gs://google-cloud-aiplatform/schema/dataset/annotation/image_classification_1.0.0.yaml"),
/// 				AnnotationsFilter:      pulumi.String("annotation_filter_key:annotation_filter_value"),
/// 				PersistMlUseAssignment: pulumi.Bool(false),
/// 				FilterSplit: &vertex.AiTrainingPipelineInputDataConfigFilterSplitArgs{
/// 					TrainingFilter:   pulumi.String("labels.test:training"),
/// 					ValidationFilter: pulumi.String("labels.test:validation"),
/// 					TestFilter:       pulumi.String("labels.test:test"),
/// 				},
/// 				GcsDestination: &vertex.AiTrainingPipelineInputDataConfigGcsDestinationArgs{
/// 					OutputUriPrefix: bucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/dataset-export", name), nil
/// 					}).(pulumi.StringOutput),
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
/// resource "gcp_vertex_ai_training_pipeline" "dataset_pipeline" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name             = "test-training-pipeline-dataset"
///   model_id                 = "test-model-id"
///   region                   = "us-central1"
///   training_task_definition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"
///   training_task_inputs = jsonencode({
///     "workerPoolSpecs" = [{
///       "machineSpec" = {
///         "machineType" = "n1-standard-4"
///       }
///       "replicaCount" = "1"
///       "diskSpec" = {
///         "bootDiskType"   = "pd-ssd"
///         "bootDiskSizeGb" = 100
///       }
///       "containerSpec" = {
///         "imageUri" = "gcr.io/cloud-marketplace/google/debian11"
///       }
///     }]
///   })
///   input_data_config = {
///     dataset_id                = gcp_vertex_ai_dataset.dataset.name
///     annotation_schema_uri     = "gs://google-cloud-aiplatform/schema/dataset/annotation/image_classification_1.0.0.yaml"
///     annotations_filter        = "annotation_filter_key:annotation_filter_value"
///     persist_ml_use_assignment = false
///     filter_split = {
///       training_filter   = "labels.test:training"
///       validation_filter = "labels.test:validation"
///       test_filter       = "labels.test:test"
///     }
///     gcs_destination = {
///       output_uri_prefix ="gs://${gcp_storage_bucket.bucket.name}/dataset-export"
///     }
///   }
///   labels = {
///     "env" = "test"
///   }
/// }
/// resource "gcp_vertex_ai_dataset" "dataset" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name        = "test-dataset"
///   metadata_schema_uri = "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml"
///   region              = "us-central1"
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "test-bucket"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiDataset;
/// import com.pulumi.gcp.vertex.AiDatasetArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.vertex.AiTrainingPipeline;
/// import com.pulumi.gcp.vertex.AiTrainingPipelineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineInputDataConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineInputDataConfigFilterSplitArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineInputDataConfigGcsDestinationArgs;
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
///         var dataset = new AiDataset("dataset", AiDatasetArgs.builder()
///             .displayName("test-dataset")
///             .metadataSchemaUri("gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml")
///             .region("us-central1")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("test-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var datasetPipeline = new AiTrainingPipeline("datasetPipeline", AiTrainingPipelineArgs.builder()
///             .displayName("test-training-pipeline-dataset")
///             .modelId("test-model-id")
///             .region("us-central1")
///             .trainingTaskDefinition("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml")
///             .trainingTaskInputs(serializeJson(
///                 jsonObject(
///                     jsonProperty("workerPoolSpecs", jsonArray(jsonObject(
///                         jsonProperty("machineSpec", jsonObject(
///                             jsonProperty("machineType", "n1-standard-4")
///                         )),
///                         jsonProperty("replicaCount", "1"),
///                         jsonProperty("diskSpec", jsonObject(
///                             jsonProperty("bootDiskType", "pd-ssd"),
///                             jsonProperty("bootDiskSizeGb", 100)
///                         )),
///                         jsonProperty("containerSpec", jsonObject(
///                             jsonProperty("imageUri", "gcr.io/cloud-marketplace/google/debian11")
///                         ))
///                     )))
///                 )))
///             .inputDataConfig(AiTrainingPipelineInputDataConfigArgs.builder()
///                 .datasetId(dataset.name())
///                 .annotationSchemaUri("gs://google-cloud-aiplatform/schema/dataset/annotation/image_classification_1.0.0.yaml")
///                 .annotationsFilter("annotation_filter_key:annotation_filter_value")
///                 .persistMlUseAssignment(false)
///                 .filterSplit(AiTrainingPipelineInputDataConfigFilterSplitArgs.builder()
///                     .trainingFilter("labels.test:training")
///                     .validationFilter("labels.test:validation")
///                     .testFilter("labels.test:test")
///                     .build())
///                 .gcsDestination(AiTrainingPipelineInputDataConfigGcsDestinationArgs.builder()
///                     .outputUriPrefix(bucket.name().applyValue(_name -> String.format("gs://%s/dataset-export", _name)))
///                     .build())
///                 .build())
///             .labels(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   datasetPipeline:
///     type: gcp:vertex:AiTrainingPipeline
///     name: dataset_pipeline
///     properties:
///       displayName: test-training-pipeline-dataset
///       modelId: test-model-id
///       region: us-central1
///       trainingTaskDefinition: gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml
///       trainingTaskInputs:
///         fn::toJSON:
///           workerPoolSpecs:
///             - machineSpec:
///                 machineType: n1-standard-4
///               replicaCount: '1'
///               diskSpec:
///                 bootDiskType: pd-ssd
///                 bootDiskSizeGb: 100
///               containerSpec:
///                 imageUri: gcr.io/cloud-marketplace/google/debian11
///       inputDataConfig:
///         datasetId: ${dataset.name}
///         annotationSchemaUri: gs://google-cloud-aiplatform/schema/dataset/annotation/image_classification_1.0.0.yaml
///         annotationsFilter: annotation_filter_key:annotation_filter_value
///         persistMlUseAssignment: false
///         filterSplit:
///           trainingFilter: labels.test:training
///           validationFilter: labels.test:validation
///           testFilter: labels.test:test
///         gcsDestination:
///           outputUriPrefix: gs://${bucket.name}/dataset-export
///       labels:
///         env: test
///   dataset:
///     type: gcp:vertex:AiDataset
///     properties:
///       displayName: test-dataset
///       metadataSchemaUri: gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml
///       region: us-central1
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: test-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
/// ```
///
///
/// ### Vertex Ai Training Pipeline Encryption
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const encryptionPipeline = new gcp.vertex.AiTrainingPipeline("encryption_pipeline", {
///     displayName: "test-training-pipeline-enc",
///     modelId: "test-model-id",
///     region: "us-central1",
///     trainingTaskDefinition: "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     trainingTaskInputs: JSON.stringify({
///         workerPoolSpecs: [{
///             machineSpec: {
///                 machineType: "n1-standard-4",
///             },
///             replicaCount: "1",
///             diskSpec: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 100,
///             },
///             containerSpec: {
///                 imageUri: "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
///     modelToUpload: {
///         displayName: "test-model-enc",
///         artifactUri: "gs://cloud-samples-data/ai-platform/flower_photos",
///         containerSpec: {
///             imageUri: "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest",
///         },
///         encryptionSpec: {
///             kmsKeyName: "kms-key",
///         },
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-key",
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
/// encryption_pipeline = gcp.vertex.AiTrainingPipeline("encryption_pipeline",
///     display_name="test-training-pipeline-enc",
///     model_id="test-model-id",
///     region="us-central1",
///     training_task_definition="gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///     training_task_inputs=json.dumps({
///         "workerPoolSpecs": [{
///             "machineSpec": {
///                 "machineType": "n1-standard-4",
///             },
///             "replicaCount": "1",
///             "diskSpec": {
///                 "bootDiskType": "pd-ssd",
///                 "bootDiskSizeGb": 100,
///             },
///             "containerSpec": {
///                 "imageUri": "gcr.io/cloud-marketplace/google/debian11",
///             },
///         }],
///     }),
///     model_to_upload={
///         "display_name": "test-model-enc",
///         "artifact_uri": "gs://cloud-samples-data/ai-platform/flower_photos",
///         "container_spec": {
///             "image_uri": "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest",
///         },
///         "encryption_spec": {
///             "kms_key_name": "kms-key",
///         },
///     },
///     encryption_spec={
///         "kms_key_name": "kms-key",
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
///     var encryptionPipeline = new Gcp.Vertex.AiTrainingPipeline("encryption_pipeline", new()
///     {
///         DisplayName = "test-training-pipeline-enc",
///         ModelId = "test-model-id",
///         Region = "us-central1",
///         TrainingTaskDefinition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml",
///         TrainingTaskInputs = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["workerPoolSpecs"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["machineSpec"] = new Dictionary<string, object?>
///                     {
///                         ["machineType"] = "n1-standard-4",
///                     },
///                     ["replicaCount"] = "1",
///                     ["diskSpec"] = new Dictionary<string, object?>
///                     {
///                         ["bootDiskType"] = "pd-ssd",
///                         ["bootDiskSizeGb"] = 100,
///                     },
///                     ["containerSpec"] = new Dictionary<string, object?>
///                     {
///                         ["imageUri"] = "gcr.io/cloud-marketplace/google/debian11",
///                     },
///                 },
///             },
///         }),
///         ModelToUpload = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadArgs
///         {
///             DisplayName = "test-model-enc",
///             ArtifactUri = "gs://cloud-samples-data/ai-platform/flower_photos",
///             ContainerSpec = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadContainerSpecArgs
///             {
///                 ImageUri = "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest",
///             },
///             EncryptionSpec = new Gcp.Vertex.Inputs.AiTrainingPipelineModelToUploadEncryptionSpecArgs
///             {
///                 KmsKeyName = "kms-key",
///             },
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiTrainingPipelineEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-key",
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
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"workerPoolSpecs": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"machineSpec": map[string]string{
/// 						"machineType": "n1-standard-4",
/// 					},
/// 					"replicaCount": "1",
/// 					"diskSpec": map[string]interface{}{
/// 						"bootDiskType":   "pd-ssd",
/// 						"bootDiskSizeGb": 100,
/// 					},
/// 					"containerSpec": map[string]string{
/// 						"imageUri": "gcr.io/cloud-marketplace/google/debian11",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiTrainingPipeline(ctx, "encryption_pipeline", &vertex.AiTrainingPipelineArgs{
/// 			DisplayName:            pulumi.String("test-training-pipeline-enc"),
/// 			ModelId:                pulumi.String("test-model-id"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			TrainingTaskDefinition: pulumi.String("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"),
/// 			TrainingTaskInputs:     pulumi.String(json0),
/// 			ModelToUpload: &vertex.AiTrainingPipelineModelToUploadArgs{
/// 				DisplayName: pulumi.String("test-model-enc"),
/// 				ArtifactUri: pulumi.String("gs://cloud-samples-data/ai-platform/flower_photos"),
/// 				ContainerSpec: &vertex.AiTrainingPipelineModelToUploadContainerSpecArgs{
/// 					ImageUri: pulumi.String("us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest"),
/// 				},
/// 				EncryptionSpec: &vertex.AiTrainingPipelineModelToUploadEncryptionSpecArgs{
/// 					KmsKeyName: pulumi.String("kms-key"),
/// 				},
/// 			},
/// 			EncryptionSpec: &vertex.AiTrainingPipelineEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-key"),
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
/// resource "gcp_vertex_ai_training_pipeline" "encryption_pipeline" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name             = "test-training-pipeline-enc"
///   model_id                 = "test-model-id"
///   region                   = "us-central1"
///   training_task_definition = "gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml"
///   training_task_inputs = jsonencode({
///     "workerPoolSpecs" = [{
///       "machineSpec" = {
///         "machineType" = "n1-standard-4"
///       }
///       "replicaCount" = "1"
///       "diskSpec" = {
///         "bootDiskType"   = "pd-ssd"
///         "bootDiskSizeGb" = 100
///       }
///       "containerSpec" = {
///         "imageUri" = "gcr.io/cloud-marketplace/google/debian11"
///       }
///     }]
///   })
///   model_to_upload = {
///     display_name = "test-model-enc"
///     artifact_uri = "gs://cloud-samples-data/ai-platform/flower_photos"
///     container_spec = {
///       image_uri = "us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest"
///     }
///     encryption_spec = {
///       kms_key_name = "kms-key"
///     }
///   }
///   encryption_spec = {
///     kms_key_name = "kms-key"
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
/// import com.pulumi.gcp.vertex.AiTrainingPipeline;
/// import com.pulumi.gcp.vertex.AiTrainingPipelineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadContainerSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineModelToUploadEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTrainingPipelineEncryptionSpecArgs;
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
///         var encryptionPipeline = new AiTrainingPipeline("encryptionPipeline", AiTrainingPipelineArgs.builder()
///             .displayName("test-training-pipeline-enc")
///             .modelId("test-model-id")
///             .region("us-central1")
///             .trainingTaskDefinition("gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml")
///             .trainingTaskInputs(serializeJson(
///                 jsonObject(
///                     jsonProperty("workerPoolSpecs", jsonArray(jsonObject(
///                         jsonProperty("machineSpec", jsonObject(
///                             jsonProperty("machineType", "n1-standard-4")
///                         )),
///                         jsonProperty("replicaCount", "1"),
///                         jsonProperty("diskSpec", jsonObject(
///                             jsonProperty("bootDiskType", "pd-ssd"),
///                             jsonProperty("bootDiskSizeGb", 100)
///                         )),
///                         jsonProperty("containerSpec", jsonObject(
///                             jsonProperty("imageUri", "gcr.io/cloud-marketplace/google/debian11")
///                         ))
///                     )))
///                 )))
///             .modelToUpload(AiTrainingPipelineModelToUploadArgs.builder()
///                 .displayName("test-model-enc")
///                 .artifactUri("gs://cloud-samples-data/ai-platform/flower_photos")
///                 .containerSpec(AiTrainingPipelineModelToUploadContainerSpecArgs.builder()
///                     .imageUri("us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest")
///                     .build())
///                 .encryptionSpec(AiTrainingPipelineModelToUploadEncryptionSpecArgs.builder()
///                     .kmsKeyName("kms-key")
///                     .build())
///                 .build())
///             .encryptionSpec(AiTrainingPipelineEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-key")
///                 .build())
///             .labels(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   encryptionPipeline:
///     type: gcp:vertex:AiTrainingPipeline
///     name: encryption_pipeline
///     properties:
///       displayName: test-training-pipeline-enc
///       modelId: test-model-id
///       region: us-central1
///       trainingTaskDefinition: gs://google-cloud-aiplatform/schema/trainingjob/definition/custom_task_1.0.0.yaml
///       trainingTaskInputs:
///         fn::toJSON:
///           workerPoolSpecs:
///             - machineSpec:
///                 machineType: n1-standard-4
///               replicaCount: '1'
///               diskSpec:
///                 bootDiskType: pd-ssd
///                 bootDiskSizeGb: 100
///               containerSpec:
///                 imageUri: gcr.io/cloud-marketplace/google/debian11
///       modelToUpload:
///         displayName: test-model-enc
///         artifactUri: gs://cloud-samples-data/ai-platform/flower_photos
///         containerSpec:
///           imageUri: us-docker.pkg.dev/vertex-ai/prediction/tf2-cpu.2-8:latest
///         encryptionSpec:
///           kmsKeyName: kms-key
///       encryptionSpec:
///         kmsKeyName: kms-key
///       labels:
///         env: test
/// ```
///
///
/// ## Import
///
/// TrainingPipeline can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/trainingPipelines/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, TrainingPipeline can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTrainingPipeline:AiTrainingPipeline default projects/{{project}}/locations/{{region}}/trainingPipelines/{{name}}
/// $ pulumi import gcp:vertex/aiTrainingPipeline:AiTrainingPipeline default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiTrainingPipeline:AiTrainingPipeline default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiTrainingPipeline:AiTrainingPipeline default {{name}}
/// ```
class AiTrainingPipeline extends pulumi.CustomResource {
  /// Time when the TrainingPipeline was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-defined name of this TrainingPipeline.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key spec for a TrainingPipeline.
  /// Structure is documented below.
  late final pulumi.Output<AiTrainingPipelineEncryptionSpec?> encryptionSpec;
  /// Time when the TrainingPipeline entered any of the following states: PIPELINE_STATE_SUCCEEDED, PIPELINE_STATE_FAILED, PIPELINE_STATE_CANCELLED.
  late final pulumi.Output<String> endTime;
  /// Only populated when the pipeline's state is PIPELINE_STATE_FAILED or PIPELINE_STATE_CANCELLED.
  /// Structure is documented below.
  late final pulumi.Output<List<AiTrainingPipelineError>> errors;
  /// Specifies Vertex AI owned input data that may be used for training the Model.
  /// Structure is documented below.
  late final pulumi.Output<AiTrainingPipelineInputDataConfig?> inputDataConfig;
  /// The labels with user-defined metadata to organize TrainingPipelines.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The ID to use for the uploaded Model, which will become the final component of the model resource name.
  late final pulumi.Output<String> modelId;
  /// Describes the Model that may be uploaded by this TrainingPipeline.
  /// Structure is documented below.
  late final pulumi.Output<AiTrainingPipelineModelToUpload?> modelToUpload;
  /// The resource name of the TrainingPipeline.
  late final pulumi.Output<String> name;
  /// When specified, the modelToUpload will become a new version of this parent_model.
  late final pulumi.Output<String?> parentModel;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the training pipeline. eg us-central1
  late final pulumi.Output<String> region;
  /// Time when the TrainingPipeline for the first time entered the PIPELINE_STATE_RUNNING state.
  late final pulumi.Output<String> startTime;
  /// The detailed state of the pipeline.
  late final pulumi.Output<String> state;
  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/.
  late final pulumi.Output<String> trainingTaskDefinition;
  /// The training task's parameter(s), as specified in the training_task_definition's inputs. This field uses JSON data as a string.
  late final pulumi.Output<String> trainingTaskInputs;
  /// The metadata information as specified in the training_task_definition's metadata.
  late final pulumi.Output<String> trainingTaskMetadata;
  /// Time when the TrainingPipeline was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiTrainingPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiTrainingPipeline]. {@macro pulumi_vertex_ai_training_pipeline_ai_training_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiTrainingPipeline(
    String name, {
    AiTrainingPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTrainingPipeline:AiTrainingPipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiTrainingPipelineEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiTrainingPipelineError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiTrainingPipelineError>(guardedValue, (value) => AiTrainingPipelineError.fromMap((value as Map).cast<String, dynamic>())); });
    inputDataConfig = registerOutput<AiTrainingPipelineInputDataConfig?>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    modelId = registerOutput<String>('modelId');
    modelToUpload = registerOutput<AiTrainingPipelineModelToUpload?>('modelToUpload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineModelToUpload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parentModel = registerOutput<String?>('parentModel');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    trainingTaskDefinition = registerOutput<String>('trainingTaskDefinition');
    trainingTaskInputs = registerOutput<String>('trainingTaskInputs');
    trainingTaskMetadata = registerOutput<String>('trainingTaskMetadata');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiTrainingPipeline] resource's state with the given [name] and [id].
  static AiTrainingPipeline get(
    String name,
    pulumi.Input<String> id, {
    AiTrainingPipelineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiTrainingPipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiTrainingPipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTrainingPipeline:AiTrainingPipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiTrainingPipelineEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiTrainingPipelineError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiTrainingPipelineError>(guardedValue, (value) => AiTrainingPipelineError.fromMap((value as Map).cast<String, dynamic>())); });
    inputDataConfig = registerOutput<AiTrainingPipelineInputDataConfig?>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    modelId = registerOutput<String>('modelId');
    modelToUpload = registerOutput<AiTrainingPipelineModelToUpload?>('modelToUpload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineModelToUpload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parentModel = registerOutput<String?>('parentModel');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    trainingTaskDefinition = registerOutput<String>('trainingTaskDefinition');
    trainingTaskInputs = registerOutput<String>('trainingTaskInputs');
    trainingTaskMetadata = registerOutput<String>('trainingTaskMetadata');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiTrainingPipeline] resource.
  AiTrainingPipeline.reference(String urn)
    : super(
        'gcp:vertex/aiTrainingPipeline:AiTrainingPipeline',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiTrainingPipelineEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiTrainingPipelineError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiTrainingPipelineError>(guardedValue, (value) => AiTrainingPipelineError.fromMap((value as Map).cast<String, dynamic>())); });
    inputDataConfig = registerOutput<AiTrainingPipelineInputDataConfig?>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    modelId = registerOutput<String>('modelId');
    modelToUpload = registerOutput<AiTrainingPipelineModelToUpload?>('modelToUpload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiTrainingPipelineModelToUpload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parentModel = registerOutput<String?>('parentModel');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    trainingTaskDefinition = registerOutput<String>('trainingTaskDefinition');
    trainingTaskInputs = registerOutput<String>('trainingTaskInputs');
    trainingTaskMetadata = registerOutput<String>('trainingTaskMetadata');
    updateTime = registerOutput<String>('updateTime');
  }
}
