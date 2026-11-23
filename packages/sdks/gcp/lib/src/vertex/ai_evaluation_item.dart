import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_args.dart';
import 'ai_evaluation_item_error.dart';
import 'ai_evaluation_item_evaluation_request.dart';
import 'ai_evaluation_item_evaluation_response.dart';
import 'ai_evaluation_item_state.dart';

/// An evaluation item represents a single prompt and optional model/candidate responses,
/// ground truth, and rubrics for evaluation in Vertex AI.
///
///
/// To get more information about EvaluationItem, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.evaluationItems)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/models/evaluation-overview)
///
///
/// ## Example Usage
///
/// ### Vertex Ai Evaluation Item
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const evaluationItem = new gcp.vertex.AiEvaluationItem("evaluation_item", {
///     region: "us-central1",
///     displayName: "eval-item",
///     evaluationItemType: "REQUEST",
///     labels: {
///         env: "test",
///         team: "evaluation",
///     },
///     metadata: JSON.stringify({
///         author: "terraform-test",
///         version: "1.0",
///     }),
///     evaluationRequest: {
///         prompt: {
///             text: "What is the capital of France?",
///         },
///         goldenResponse: {
///             candidate: "ground-truth",
///             text: "Paris",
///         },
///         candidateResponses: [
///             {
///                 candidate: "model-a",
///                 text: "Paris",
///             },
///             {
///                 candidate: "model-b",
///                 value: JSON.stringify({
///                     response: "Paris",
///                 }),
///             },
///             {
///                 candidate: "model-c",
///                 agentData: JSON.stringify({
///                     agents: {
///                         agent_1: {
///                             agentId: "agent_1",
///                             agentType: "LlmAgent",
///                             description: "Assistant",
///                             instruction: "Be helpful",
///                         },
///                     },
///                 }),
///             },
///         ],
///         rubrics: [{
///             name: "test_rubric_group",
///             groupId: "test_rubric_group_id",
///             displayName: "Test Rubric Group",
///             rubrics: [{
///                 rubricId: "test_rubric_1",
///                 type: "SUMMARIZATION_QUALITY",
///                 importance: "HIGH",
///                 content: {
///                     property: {
///                         description: "The model response is concise and accurate.",
///                     },
///                 },
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// evaluation_item = gcp.vertex.AiEvaluationItem("evaluation_item",
///     region="us-central1",
///     display_name="eval-item",
///     evaluation_item_type="REQUEST",
///     labels={
///         "env": "test",
///         "team": "evaluation",
///     },
///     metadata=json.dumps({
///         "author": "terraform-test",
///         "version": "1.0",
///     }),
///     evaluation_request={
///         "prompt": {
///             "text": "What is the capital of France?",
///         },
///         "golden_response": {
///             "candidate": "ground-truth",
///             "text": "Paris",
///         },
///         "candidate_responses": [
///             {
///                 "candidate": "model-a",
///                 "text": "Paris",
///             },
///             {
///                 "candidate": "model-b",
///                 "value": json.dumps({
///                     "response": "Paris",
///                 }),
///             },
///             {
///                 "candidate": "model-c",
///                 "agent_data": json.dumps({
///                     "agents": {
///                         "agent_1": {
///                             "agentId": "agent_1",
///                             "agentType": "LlmAgent",
///                             "description": "Assistant",
///                             "instruction": "Be helpful",
///                         },
///                     },
///                 }),
///             },
///         ],
///         "rubrics": [{
///             "name": "test_rubric_group",
///             "group_id": "test_rubric_group_id",
///             "display_name": "Test Rubric Group",
///             "rubrics": [{
///                 "rubric_id": "test_rubric_1",
///                 "type": "SUMMARIZATION_QUALITY",
///                 "importance": "HIGH",
///                 "content": {
///                     "property": {
///                         "description": "The model response is concise and accurate.",
///                     },
///                 },
///             }],
///         }],
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
///     var evaluationItem = new Gcp.Vertex.AiEvaluationItem("evaluation_item", new()
///     {
///         Region = "us-central1",
///         DisplayName = "eval-item",
///         EvaluationItemType = "REQUEST",
///         Labels =
///         {
///             { "env", "test" },
///             { "team", "evaluation" },
///         },
///         Metadata = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["author"] = "terraform-test",
///             ["version"] = "1.0",
///         }),
///         EvaluationRequest = new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestArgs
///         {
///             Prompt = new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestPromptArgs
///             {
///                 Text = "What is the capital of France?",
///             },
///             GoldenResponse = new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestGoldenResponseArgs
///             {
///                 Candidate = "ground-truth",
///                 Text = "Paris",
///             },
///             CandidateResponses = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestCandidateResponseArgs
///                 {
///                     Candidate = "model-a",
///                     Text = "Paris",
///                 },
///                 new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestCandidateResponseArgs
///                 {
///                     Candidate = "model-b",
///                     Value = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["response"] = "Paris",
///                     }),
///                 },
///                 new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestCandidateResponseArgs
///                 {
///                     Candidate = "model-c",
///                     AgentData = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["agents"] = new Dictionary<string, object?>
///                         {
///                             ["agent_1"] = new Dictionary<string, object?>
///                             {
///                                 ["agentId"] = "agent_1",
///                                 ["agentType"] = "LlmAgent",
///                                 ["description"] = "Assistant",
///                                 ["instruction"] = "Be helpful",
///                             },
///                         },
///                     }),
///                 },
///             },
///             Rubrics = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestRubricArgs
///                 {
///                     Name = "test_rubric_group",
///                     GroupId = "test_rubric_group_id",
///                     DisplayName = "Test Rubric Group",
///                     Rubrics = new[]
///                     {
///                         new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestRubricRubricArgs
///                         {
///                             RubricId = "test_rubric_1",
///                             Type = "SUMMARIZATION_QUALITY",
///                             Importance = "HIGH",
///                             Content = new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestRubricRubricContentArgs
///                             {
///                                 Property = new Gcp.Vertex.Inputs.AiEvaluationItemEvaluationRequestRubricRubricContentPropertyArgs
///                                 {
///                                     Description = "The model response is concise and accurate.",
///                                 },
///                             },
///                         },
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
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"author":  "terraform-test",
/// 			"version": "1.0",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]string{
/// 			"response": "Paris",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(map[string]map[string]map[string]string{
/// 			"agents": map[string]map[string]string{
/// 				"agent_1": map[string]string{
/// 					"agentId":     "agent_1",
/// 					"agentType":   "LlmAgent",
/// 					"description": "Assistant",
/// 					"instruction": "Be helpful",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		_, err = vertex.NewAiEvaluationItem(ctx, "evaluation_item", &vertex.AiEvaluationItemArgs{
/// 			Region:             pulumi.String("us-central1"),
/// 			DisplayName:        pulumi.String("eval-item"),
/// 			EvaluationItemType: pulumi.String("REQUEST"),
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("test"),
/// 				"team": pulumi.String("evaluation"),
/// 			},
/// 			Metadata: pulumi.String(json0),
/// 			EvaluationRequest: &vertex.AiEvaluationItemEvaluationRequestArgs{
/// 				Prompt: &vertex.AiEvaluationItemEvaluationRequestPromptArgs{
/// 					Text: pulumi.String("What is the capital of France?"),
/// 				},
/// 				GoldenResponse: &vertex.AiEvaluationItemEvaluationRequestGoldenResponseArgs{
/// 					Candidate: pulumi.String("ground-truth"),
/// 					Text:      pulumi.String("Paris"),
/// 				},
/// 				CandidateResponses: vertex.AiEvaluationItemEvaluationRequestCandidateResponseArray{
/// 					&vertex.AiEvaluationItemEvaluationRequestCandidateResponseArgs{
/// 						Candidate: pulumi.String("model-a"),
/// 						Text:      pulumi.String("Paris"),
/// 					},
/// 					&vertex.AiEvaluationItemEvaluationRequestCandidateResponseArgs{
/// 						Candidate: pulumi.String("model-b"),
/// 						Value:     pulumi.String(json1),
/// 					},
/// 					&vertex.AiEvaluationItemEvaluationRequestCandidateResponseArgs{
/// 						Candidate: pulumi.String("model-c"),
/// 						AgentData: pulumi.String(json2),
/// 					},
/// 				},
/// 				Rubrics: vertex.AiEvaluationItemEvaluationRequestRubricArray{
/// 					&vertex.AiEvaluationItemEvaluationRequestRubricArgs{
/// 						Name:        pulumi.String("test_rubric_group"),
/// 						GroupId:     pulumi.String("test_rubric_group_id"),
/// 						DisplayName: pulumi.String("Test Rubric Group"),
/// 						Rubrics: vertex.AiEvaluationItemEvaluationRequestRubricRubricArray{
/// 							&vertex.AiEvaluationItemEvaluationRequestRubricRubricArgs{
/// 								RubricId:   pulumi.String("test_rubric_1"),
/// 								Type:       pulumi.String("SUMMARIZATION_QUALITY"),
/// 								Importance: pulumi.String("HIGH"),
/// 								Content: &vertex.AiEvaluationItemEvaluationRequestRubricRubricContentArgs{
/// 									Property: &vertex.AiEvaluationItemEvaluationRequestRubricRubricContentPropertyArgs{
/// 										Description: pulumi.String("The model response is concise and accurate."),
/// 									},
/// 								},
/// 							},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_vertex_ai_evaluation_item" "evaluation_item" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   region               = "us-central1"
///   display_name         = "eval-item"
///   evaluation_item_type = "REQUEST"
///   labels = {
///     "env"  = "test"
///     "team" = "evaluation"
///   }
///   metadata = jsonencode({
///     "author"  = "terraform-test"
///     "version" = "1.0"
///   })
///   evaluation_request = {
///     prompt = {
///       text = "What is the capital of France?"
///     }
///     golden_response = {
///       candidate = "ground-truth"
///       text      = "Paris"
///     }
///     candidate_responses = [{
///       candidate = "model-a"
///       text      = "Paris"
///       }, {
///       candidate = "model-b"
///       value = jsonencode({
///         "response" = "Paris"
///       })
///       }, {
///       candidate = "model-c"
///       agent_data = jsonencode({
///         "agents" = {
///           "agent_1" = {
///             "agentId"     = "agent_1"
///             "agentType"   = "LlmAgent"
///             "description" = "Assistant"
///             "instruction" = "Be helpful"
///           }
///         }
///       })
///     }]
///     rubrics = [{
///       name         = "test_rubric_group"
///       group_id     = "test_rubric_group_id"
///       display_name = "Test Rubric Group"
///       rubrics = [{
///         rubric_id  = "test_rubric_1"
///         type       = "SUMMARIZATION_QUALITY"
///         importance = "HIGH"
///         content = {
///           property = {
///             description = "The model response is concise and accurate."
///           }
///         }
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiEvaluationItem;
/// import com.pulumi.gcp.vertex.AiEvaluationItemArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestPromptArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestGoldenResponseArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestCandidateResponseArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestRubricArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestRubricRubricArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestRubricRubricContentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEvaluationItemEvaluationRequestRubricRubricContentPropertyArgs;
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
///         var evaluationItem = new AiEvaluationItem("evaluationItem", AiEvaluationItemArgs.builder()
///             .region("us-central1")
///             .displayName("eval-item")
///             .evaluationItemType("REQUEST")
///             .labels(Map.ofEntries(
///                 Map.entry("env", "test"),
///                 Map.entry("team", "evaluation")
///             ))
///             .metadata(serializeJson(
///                 jsonObject(
///                     jsonProperty("author", "terraform-test"),
///                     jsonProperty("version", "1.0")
///                 )))
///             .evaluationRequest(AiEvaluationItemEvaluationRequestArgs.builder()
///                 .prompt(AiEvaluationItemEvaluationRequestPromptArgs.builder()
///                     .text("What is the capital of France?")
///                     .build())
///                 .goldenResponse(AiEvaluationItemEvaluationRequestGoldenResponseArgs.builder()
///                     .candidate("ground-truth")
///                     .text("Paris")
///                     .build())
///                 .candidateResponses(
///                     AiEvaluationItemEvaluationRequestCandidateResponseArgs.builder()
///                         .candidate("model-a")
///                         .text("Paris")
///                         .build(),
///                     AiEvaluationItemEvaluationRequestCandidateResponseArgs.builder()
///                         .candidate("model-b")
///                         .value(serializeJson(
///                             jsonObject(
///                                 jsonProperty("response", "Paris")
///                             )))
///                         .build(),
///                     AiEvaluationItemEvaluationRequestCandidateResponseArgs.builder()
///                         .candidate("model-c")
///                         .agentData(serializeJson(
///                             jsonObject(
///                                 jsonProperty("agents", jsonObject(
///                                     jsonProperty("agent_1", jsonObject(
///                                         jsonProperty("agentId", "agent_1"),
///                                         jsonProperty("agentType", "LlmAgent"),
///                                         jsonProperty("description", "Assistant"),
///                                         jsonProperty("instruction", "Be helpful")
///                                     ))
///                                 ))
///                             )))
///                         .build())
///                 .rubrics(AiEvaluationItemEvaluationRequestRubricArgs.builder()
///                     .name("test_rubric_group")
///                     .groupId("test_rubric_group_id")
///                     .displayName("Test Rubric Group")
///                     .rubrics(AiEvaluationItemEvaluationRequestRubricRubricArgs.builder()
///                         .rubricId("test_rubric_1")
///                         .type("SUMMARIZATION_QUALITY")
///                         .importance("HIGH")
///                         .content(AiEvaluationItemEvaluationRequestRubricRubricContentArgs.builder()
///                             .property(AiEvaluationItemEvaluationRequestRubricRubricContentPropertyArgs.builder()
///                                 .description("The model response is concise and accurate.")
///                                 .build())
///                             .build())
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
///   evaluationItem:
///     type: gcp:vertex:AiEvaluationItem
///     name: evaluation_item
///     properties:
///       region: us-central1
///       displayName: eval-item
///       evaluationItemType: REQUEST
///       labels:
///         env: test
///         team: evaluation
///       metadata:
///         fn::toJSON:
///           author: terraform-test
///           version: '1.0'
///       evaluationRequest:
///         prompt:
///           text: What is the capital of France?
///         goldenResponse:
///           candidate: ground-truth
///           text: Paris
///         candidateResponses:
///           - candidate: model-a
///             text: Paris
///           - candidate: model-b
///             value:
///               fn::toJSON:
///                 response: Paris
///           - candidate: model-c
///             agentData:
///               fn::toJSON:
///                 agents:
///                   agent_1:
///                     agentId: agent_1
///                     agentType: LlmAgent
///                     description: Assistant
///                     instruction: Be helpful
///         rubrics:
///           - name: test_rubric_group
///             groupId: test_rubric_group_id
///             displayName: Test Rubric Group
///             rubrics:
///               - rubricId: test_rubric_1
///                 type: SUMMARIZATION_QUALITY
///                 importance: HIGH
///                 content:
///                   property:
///                     description: The model response is concise and accurate.
/// ```
///
///
/// ### Vertex Ai Evaluation Item Gcs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "eval-item-bucket",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const viewer = new gcp.storage.BucketIAMMember("viewer", {
///     bucket: bucket.name,
///     role: "roles/storage.objectViewer",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`),
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "eval_request.json",
///     bucket: bucket.name,
///     content: JSON.stringify({
///         prompt: {
///             text: "What is the capital of France?",
///         },
///     }),
/// });
/// const evaluationItemGcs = new gcp.vertex.AiEvaluationItem("evaluation_item_gcs", {
///     region: "us-central1",
///     displayName: "eval-item",
///     evaluationItemType: "REQUEST",
///     gcsUri: pulumi.interpolate`gs://${bucket.name}/${object.name}`,
/// }, {
///     dependsOn: [
///         viewer,
///         object,
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
///     name="eval-item-bucket",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// viewer = gcp.storage.BucketIAMMember("viewer",
///     bucket=bucket.name,
///     role="roles/storage.objectViewer",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com")
/// object = gcp.storage.BucketObject("object",
///     name="eval_request.json",
///     bucket=bucket.name,
///     content=json.dumps({
///         "prompt": {
///             "text": "What is the capital of France?",
///         },
///     }))
/// evaluation_item_gcs = gcp.vertex.AiEvaluationItem("evaluation_item_gcs",
///     region="us-central1",
///     display_name="eval-item",
///     evaluation_item_type="REQUEST",
///     gcs_uri=pulumi.Output.all(
///         bucketName=bucket.name,
///         objectName=object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///     opts = pulumi.ResourceOptions(depends_on=[
///             viewer,
///             object,
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
///         Name = "eval-item-bucket",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var viewer = new Gcp.Storage.BucketIAMMember("viewer", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectViewer",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform.iam.gserviceaccount.com",
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "eval_request.json",
///         Bucket = bucket.Name,
///         Content = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["prompt"] = new Dictionary<string, object?>
///             {
///                 ["text"] = "What is the capital of France?",
///             },
///         }),
///     });
///
///     var evaluationItemGcs = new Gcp.Vertex.AiEvaluationItem("evaluation_item_gcs", new()
///     {
///         Region = "us-central1",
///         DisplayName = "eval-item",
///         EvaluationItemType = "REQUEST",
///         GcsUri = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///         {
///             var bucketName = values.Item1;
///             var objectName = values.Item2;
///             return $"gs://{bucketName}/{objectName}";
///         }),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             viewer,
///             @object,
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
/// 			Name:                     pulumi.String("eval-item-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		viewer, err := storage.NewBucketIAMMember(ctx, "viewer", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectViewer"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]string{
/// 			"prompt": map[string]string{
/// 				"text": "What is the capital of France?",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("eval_request.json"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiEvaluationItem(ctx, "evaluation_item_gcs", &vertex.AiEvaluationItemArgs{
/// 			Region:             pulumi.String("us-central1"),
/// 			DisplayName:        pulumi.String("eval-item"),
/// 			EvaluationItemType: pulumi.String("REQUEST"),
/// 			GcsUri: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 				bucketName := _args[0].(string)
/// 				objectName := _args[1].(string)
/// 				return fmt.Sprintf("gs://%v/%v", bucketName, objectName), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			viewer,
/// 			object,
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
///   name                        = "eval-item-bucket"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucket_i_a_m_member" "viewer" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "roles/storage.objectViewer"
///   member ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com"
/// }
/// resource "gcp_storage_bucket_object" "object" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name   = "eval_request.json"
///   bucket = gcp_storage_bucket.bucket.name
///   content = jsonencode({
///     "prompt" = {
///       "text" = "What is the capital of France?"
///     }
///   })
/// }
/// resource "gcp_vertex_ai_evaluation_item" "evaluation_item_gcs" {
///   depends_on = [gcp_storage_bucket_i_a_m_member.viewer, gcp_storage_bucket_object.object]
///   lifecycle {
///     create_before_destroy = true
///   }
///   region               = "us-central1"
///   display_name         = "eval-item"
///   evaluation_item_type = "REQUEST"
///   gcs_uri              ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucket_object.object.name}"
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
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.vertex.AiEvaluationItem;
/// import com.pulumi.gcp.vertex.AiEvaluationItemArgs;
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
///             .name("eval-item-bucket")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var viewer = new BucketIAMMember("viewer", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectViewer")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("eval_request.json")
///             .bucket(bucket.name())
///             .content(serializeJson(
///                 jsonObject(
///                     jsonProperty("prompt", jsonObject(
///                         jsonProperty("text", "What is the capital of France?")
///                     ))
///                 )))
///             .build());
///
///         var evaluationItemGcs = new AiEvaluationItem("evaluationItemGcs", AiEvaluationItemArgs.builder()
///             .region("us-central1")
///             .displayName("eval-item")
///             .evaluationItemType("REQUEST")
///             .gcsUri(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                 var bucketName = values.t1;
///                 var objectName = values.t2;
///                 return String.format("gs://%s/%s", bucketName,objectName);
///             }))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     viewer,
///                     object)
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
///       name: eval-item-bucket
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   viewer:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectViewer
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: eval_request.json
///       bucket: ${bucket.name}
///       content:
///         fn::toJSON:
///           prompt:
///             text: What is the capital of France?
///   evaluationItemGcs:
///     type: gcp:vertex:AiEvaluationItem
///     name: evaluation_item_gcs
///     properties:
///       region: us-central1
///       displayName: eval-item
///       evaluationItemType: REQUEST
///       gcsUri: gs://${bucket.name}/${object.name}
///     options:
///       dependsOn:
///         - ${viewer}
///         - ${object}
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
/// EvaluationItem can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/evaluationItems/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, EvaluationItem can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEvaluationItem:AiEvaluationItem default projects/{{project}}/locations/{{region}}/evaluationItems/{{name}}
/// $ pulumi import gcp:vertex/aiEvaluationItem:AiEvaluationItem default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiEvaluationItem:AiEvaluationItem default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiEvaluationItem:AiEvaluationItem default {{name}}
/// ```
class AiEvaluationItem extends pulumi.CustomResource {
  /// Timestamp when this EvaluationItem was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-friendly display name for the EvaluationItem.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// (Output)
  /// Error while evaluating the candidate for the metric.
  /// Structure is documented below.
  late final pulumi.Output<List<AiEvaluationItemError>> errors;
  /// The type of the EvaluationItem.
  /// Possible values are: `REQUEST`, `RESULT`.
  late final pulumi.Output<String> evaluationItemType;
  /// The request to evaluate.
  /// Exactly one of `evaluationRequest` or `gcsUri` can be set.
  /// Structure is documented below.
  late final pulumi.Output<AiEvaluationItemEvaluationRequest?> evaluationRequest;
  /// The response from evaluation.
  /// Structure is documented below.
  late final pulumi.Output<List<AiEvaluationItemEvaluationResponse>> evaluationResponses;
  /// The Cloud Storage object where the request or response is stored.
  /// Exactly one of `evaluationRequest` or `gcsUri` can be set.
  late final pulumi.Output<String?> gcsUri;
  /// Labels for the EvaluationItem.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// User-defined metadata for this evaluation item as a JSON string.
  late final pulumi.Output<String?> metadata;
  /// The short name of the EvaluationItem (the final component of the resource name).
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the EvaluationItem. eg us-central1
  late final pulumi.Output<String> region;

  /// Creates a new [AiEvaluationItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEvaluationItem]. {@macro pulumi_vertex_ai_evaluation_item_ai_evaluation_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEvaluationItem(
    String name, {
    AiEvaluationItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEvaluationItem:AiEvaluationItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    errors = registerOutput<List<AiEvaluationItemError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEvaluationItemError>(guardedValue, (value) => AiEvaluationItemError.fromMap((value as Map).cast<String, dynamic>())); });
    evaluationItemType = registerOutput<String>('evaluationItemType');
    evaluationRequest = registerOutput<AiEvaluationItemEvaluationRequest?>('evaluationRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEvaluationItemEvaluationRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluationResponses = registerOutput<List<AiEvaluationItemEvaluationResponse>>('evaluationResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEvaluationItemEvaluationResponse>(guardedValue, (value) => AiEvaluationItemEvaluationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    gcsUri = registerOutput<String?>('gcsUri');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadata = registerOutput<String?>('metadata');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AiEvaluationItem] resource's state with the given [name] and [id].
  static AiEvaluationItem get(
    String name,
    pulumi.Input<String> id, {
    AiEvaluationItemState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiEvaluationItem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiEvaluationItem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEvaluationItem:AiEvaluationItem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    errors = registerOutput<List<AiEvaluationItemError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEvaluationItemError>(guardedValue, (value) => AiEvaluationItemError.fromMap((value as Map).cast<String, dynamic>())); });
    evaluationItemType = registerOutput<String>('evaluationItemType');
    evaluationRequest = registerOutput<AiEvaluationItemEvaluationRequest?>('evaluationRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEvaluationItemEvaluationRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluationResponses = registerOutput<List<AiEvaluationItemEvaluationResponse>>('evaluationResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEvaluationItemEvaluationResponse>(guardedValue, (value) => AiEvaluationItemEvaluationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    gcsUri = registerOutput<String?>('gcsUri');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadata = registerOutput<String?>('metadata');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [AiEvaluationItem] resource.
  AiEvaluationItem.reference(String urn)
    : super(
        'gcp:vertex/aiEvaluationItem:AiEvaluationItem',
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
    errors = registerOutput<List<AiEvaluationItemError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEvaluationItemError>(guardedValue, (value) => AiEvaluationItemError.fromMap((value as Map).cast<String, dynamic>())); });
    evaluationItemType = registerOutput<String>('evaluationItemType');
    evaluationRequest = registerOutput<AiEvaluationItemEvaluationRequest?>('evaluationRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEvaluationItemEvaluationRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluationResponses = registerOutput<List<AiEvaluationItemEvaluationResponse>>('evaluationResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEvaluationItemEvaluationResponse>(guardedValue, (value) => AiEvaluationItemEvaluationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    gcsUri = registerOutput<String?>('gcsUri');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadata = registerOutput<String?>('metadata');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
  }
}
