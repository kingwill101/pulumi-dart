import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_args.dart';
import 'ai_online_evaluator_cloud_observability.dart';
import 'ai_online_evaluator_config.dart';
import 'ai_online_evaluator_metric_source.dart';
import 'ai_online_evaluator_state.dart';
import 'ai_online_evaluator_state_detail.dart';

/// An OnlineEvaluator contains the configuration for an Online Evaluation. It
/// periodically samples traces or sessions emitted by an agent and evaluates them
/// using the configured metric sources.
///
///
/// To get more information about OnlineEvaluator, see:
///
/// * [API documentation](https://docs.cloud.google.com/gemini-enterprise-agent-platform/reference/rest#rest-resource:-v1beta1.projects.locations.onlineevaluators)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/gemini-enterprise-agent-platform/optimize/evaluation/evaluate-online)
///
/// ## Example Usage
///
/// ### Vertex Ai Online Evaluator Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const engine = new gcp.vertex.AiReasoningEngine("engine", {
///     displayName: "reasoning-engine",
///     description: "Reasoning engine evaluated by the online evaluator",
///     region: "us-central1",
/// });
/// const evaluator = new gcp.vertex.AiOnlineEvaluator("evaluator", {
///     region: "us-central1",
///     displayName: "online-evaluator",
///     agentResource: engine.id,
///     config: {
///         maxEvaluatedSamplesPerRun: "100",
///         randomSampling: {
///             percentage: 10,
///         },
///     },
///     cloudObservability: {
///         openTelemetry: {
///             semconvVersion: "1.39.0",
///         },
///         traceScope: {
///             filters: [{
///                 duration: {
///                     comparisonOperator: "GREATER",
///                     value: 0,
///                 },
///             }],
///         },
///     },
///     metricSources: [
///         {
///             metric: JSON.stringify({
///                 predefinedMetricSpec: {
///                     metricSpecName: "safety_v1",
///                 },
///             }),
///         },
///         {
///             metric: JSON.stringify({
///                 predefinedMetricSpec: {
///                     metricSpecName: "final_response_quality_v1",
///                 },
///             }),
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// engine = gcp.vertex.AiReasoningEngine("engine",
///     display_name="reasoning-engine",
///     description="Reasoning engine evaluated by the online evaluator",
///     region="us-central1")
/// evaluator = gcp.vertex.AiOnlineEvaluator("evaluator",
///     region="us-central1",
///     display_name="online-evaluator",
///     agent_resource=engine.id,
///     config={
///         "max_evaluated_samples_per_run": "100",
///         "random_sampling": {
///             "percentage": 10,
///         },
///     },
///     cloud_observability={
///         "open_telemetry": {
///             "semconv_version": "1.39.0",
///         },
///         "trace_scope": {
///             "filters": [{
///                 "duration": {
///                     "comparison_operator": "GREATER",
///                     "value": float(0),
///                 },
///             }],
///         },
///     },
///     metric_sources=[
///         {
///             "metric": json.dumps({
///                 "predefinedMetricSpec": {
///                     "metricSpecName": "safety_v1",
///                 },
///             }),
///         },
///         {
///             "metric": json.dumps({
///                 "predefinedMetricSpec": {
///                     "metricSpecName": "final_response_quality_v1",
///                 },
///             }),
///         },
///     ])
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
///     var engine = new Gcp.Vertex.AiReasoningEngine("engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "Reasoning engine evaluated by the online evaluator",
///         Region = "us-central1",
///     });
///
///     var evaluator = new Gcp.Vertex.AiOnlineEvaluator("evaluator", new()
///     {
///         Region = "us-central1",
///         DisplayName = "online-evaluator",
///         AgentResource = engine.Id,
///         Config = new Gcp.Vertex.Inputs.AiOnlineEvaluatorConfigArgs
///         {
///             MaxEvaluatedSamplesPerRun = "100",
///             RandomSampling = new Gcp.Vertex.Inputs.AiOnlineEvaluatorConfigRandomSamplingArgs
///             {
///                 Percentage = 10,
///             },
///         },
///         CloudObservability = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilityArgs
///         {
///             OpenTelemetry = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs
///             {
///                 SemconvVersion = "1.39.0",
///             },
///             TraceScope = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilityTraceScopeArgs
///             {
///                 Filters = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilityTraceScopeFilterArgs
///                     {
///                         Duration = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilityTraceScopeFilterDurationArgs
///                         {
///                             ComparisonOperator = "GREATER",
///                             Value = 0.0,
///                         },
///                     },
///                 },
///             },
///         },
///         MetricSources = new[]
///         {
///             new Gcp.Vertex.Inputs.AiOnlineEvaluatorMetricSourceArgs
///             {
///                 Metric = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["predefinedMetricSpec"] = new Dictionary<string, object?>
///                     {
///                         ["metricSpecName"] = "safety_v1",
///                     },
///                 }),
///             },
///             new Gcp.Vertex.Inputs.AiOnlineEvaluatorMetricSourceArgs
///             {
///                 Metric = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["predefinedMetricSpec"] = new Dictionary<string, object?>
///                     {
///                         ["metricSpecName"] = "final_response_quality_v1",
///                     },
///                 }),
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
/// 		engine, err := vertex.NewAiReasoningEngine(ctx, "engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("Reasoning engine evaluated by the online evaluator"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]string{
/// 			"predefinedMetricSpec": map[string]string{
/// 				"metricSpecName": "safety_v1",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]map[string]string{
/// 			"predefinedMetricSpec": map[string]string{
/// 				"metricSpecName": "final_response_quality_v1",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = vertex.NewAiOnlineEvaluator(ctx, "evaluator", &vertex.AiOnlineEvaluatorArgs{
/// 			Region:        pulumi.String("us-central1"),
/// 			DisplayName:   pulumi.String("online-evaluator"),
/// 			AgentResource: engine.ID(),
/// 			Config: &vertex.AiOnlineEvaluatorConfigArgs{
/// 				MaxEvaluatedSamplesPerRun: pulumi.String("100"),
/// 				RandomSampling: &vertex.AiOnlineEvaluatorConfigRandomSamplingArgs{
/// 					Percentage: pulumi.Int(10),
/// 				},
/// 			},
/// 			CloudObservability: &vertex.AiOnlineEvaluatorCloudObservabilityArgs{
/// 				OpenTelemetry: &vertex.AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs{
/// 					SemconvVersion: pulumi.String("1.39.0"),
/// 				},
/// 				TraceScope: &vertex.AiOnlineEvaluatorCloudObservabilityTraceScopeArgs{
/// 					Filters: vertex.AiOnlineEvaluatorCloudObservabilityTraceScopeFilterArray{
/// 						&vertex.AiOnlineEvaluatorCloudObservabilityTraceScopeFilterArgs{
/// 							Duration: &vertex.AiOnlineEvaluatorCloudObservabilityTraceScopeFilterDurationArgs{
/// 								ComparisonOperator: pulumi.String("GREATER"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MetricSources: vertex.AiOnlineEvaluatorMetricSourceArray{
/// 				&vertex.AiOnlineEvaluatorMetricSourceArgs{
/// 					Metric: pulumi.String(json0),
/// 				},
/// 				&vertex.AiOnlineEvaluatorMetricSourceArgs{
/// 					Metric: pulumi.String(json1),
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
/// resource "gcp_vertex_ai_reasoning_engine" "engine" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "reasoning-engine"
///   description  = "Reasoning engine evaluated by the online evaluator"
///   region       = "us-central1"
/// }
/// resource "gcp_vertex_ai_online_evaluator" "evaluator" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   region         = "us-central1"
///   display_name   = "online-evaluator"
///   agent_resource = gcp_vertex_ai_reasoning_engine.engine.id
///   config = {
///     max_evaluated_samples_per_run = "100"
///     random_sampling = {
///       percentage = 10
///     }
///   }
///   cloud_observability = {
///     open_telemetry = {
///       semconv_version = "1.39.0"
///     }
///     trace_scope = {
///       filters = [{
///         duration = {
///           comparison_operator = "GREATER"
///           value               = 0
///         }
///       }]
///     }
///   }
///   metric_sources {
///     metric = jsonencode({
///       "predefinedMetricSpec" = {
///         "metricSpecName" = "safety_v1"
///       }
///     })
///   }
///   metric_sources {
///     metric = jsonencode({
///       "predefinedMetricSpec" = {
///         "metricSpecName" = "final_response_quality_v1"
///       }
///     })
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.AiOnlineEvaluator;
/// import com.pulumi.gcp.vertex.AiOnlineEvaluatorArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorConfigRandomSamplingArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilityArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilityTraceScopeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilityTraceScopeFilterArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilityTraceScopeFilterDurationArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorMetricSourceArgs;
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
///         var engine = new AiReasoningEngine("engine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("Reasoning engine evaluated by the online evaluator")
///             .region("us-central1")
///             .build());
///
///         var evaluator = new AiOnlineEvaluator("evaluator", AiOnlineEvaluatorArgs.builder()
///             .region("us-central1")
///             .displayName("online-evaluator")
///             .agentResource(engine.id())
///             .config(AiOnlineEvaluatorConfigArgs.builder()
///                 .maxEvaluatedSamplesPerRun("100")
///                 .randomSampling(AiOnlineEvaluatorConfigRandomSamplingArgs.builder()
///                     .percentage(10)
///                     .build())
///                 .build())
///             .cloudObservability(AiOnlineEvaluatorCloudObservabilityArgs.builder()
///                 .openTelemetry(AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs.builder()
///                     .semconvVersion("1.39.0")
///                     .build())
///                 .traceScope(AiOnlineEvaluatorCloudObservabilityTraceScopeArgs.builder()
///                     .filters(AiOnlineEvaluatorCloudObservabilityTraceScopeFilterArgs.builder()
///                         .duration(AiOnlineEvaluatorCloudObservabilityTraceScopeFilterDurationArgs.builder()
///                             .comparisonOperator("GREATER")
///                             .value(0.0)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .metricSources(
///                 AiOnlineEvaluatorMetricSourceArgs.builder()
///                     .metric(serializeJson(
///                         jsonObject(
///                             jsonProperty("predefinedMetricSpec", jsonObject(
///                                 jsonProperty("metricSpecName", "safety_v1")
///                             ))
///                         )))
///                     .build(),
///                 AiOnlineEvaluatorMetricSourceArgs.builder()
///                     .metric(serializeJson(
///                         jsonObject(
///                             jsonProperty("predefinedMetricSpec", jsonObject(
///                                 jsonProperty("metricSpecName", "final_response_quality_v1")
///                             ))
///                         )))
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   engine:
///     type: gcp:vertex:AiReasoningEngine
///     properties:
///       displayName: reasoning-engine
///       description: Reasoning engine evaluated by the online evaluator
///       region: us-central1
///   evaluator:
///     type: gcp:vertex:AiOnlineEvaluator
///     properties:
///       region: us-central1
///       displayName: online-evaluator
///       agentResource: ${engine.id}
///       config:
///         maxEvaluatedSamplesPerRun: '100'
///         randomSampling:
///           percentage: 10
///       cloudObservability:
///         openTelemetry:
///           semconvVersion: 1.39.0
///         traceScope:
///           filters:
///             - duration:
///                 comparisonOperator: GREATER
///                 value: 0
///       metricSources:
///         - metric:
///             fn::toJSON:
///               predefinedMetricSpec:
///                 metricSpecName: safety_v1
///         - metric:
///             fn::toJSON:
///               predefinedMetricSpec:
///                 metricSpecName: final_response_quality_v1
/// ```
///
/// ### Vertex Ai Online Evaluator Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const engine = new gcp.vertex.AiReasoningEngine("engine", {
///     displayName: "reasoning-engine",
///     description: "Reasoning engine evaluated by the online evaluator",
///     region: "us-central1",
/// });
/// const metric = new gcp.vertex.AiEvaluationMetric("metric", {
///     evaluationMetricId: "eval-metric",
///     region: "us-central1",
///     displayName: "Custom response quality",
///     metric: JSON.stringify({
///         llmBasedMetricSpec: {
///             metricPromptTemplate: "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///         },
///         metadata: {
///             title: "custom-response-quality",
///             scoreRange: {
///                 min: 1,
///                 max: 5,
///             },
///         },
///     }),
/// });
/// const evaluator = new gcp.vertex.AiOnlineEvaluator("evaluator", {
///     region: "us-central1",
///     displayName: "online-evaluator",
///     agentResource: engine.id,
///     config: {
///         randomSampling: {
///             percentage: 100,
///         },
///     },
///     cloudObservability: {
///         openTelemetry: {
///             semconvVersion: "1.39.0",
///         },
///         sessionScope: {
///             inactivityTrigger: {
///                 threshold: "3600s",
///             },
///             filters: [
///                 {
///                     totalTokenUsage: {
///                         comparisonOperator: "GREATER",
///                         value: 0,
///                     },
///                 },
///                 {
///                     userTurns: {
///                         comparisonOperator: "GREATER",
///                         value: 0,
///                     },
///                 },
///                 {
///                     modelCalls: {
///                         comparisonOperator: "GREATER",
///                         value: 0,
///                     },
///                 },
///                 {
///                     modelCallErrors: {
///                         comparisonOperator: "GREATER_OR_EQUAL",
///                         value: 0,
///                     },
///                 },
///                 {
///                     toolCalls: {
///                         comparisonOperator: "GREATER",
///                         value: 0,
///                     },
///                 },
///                 {
///                     toolCallErrors: {
///                         comparisonOperator: "GREATER_OR_EQUAL",
///                         value: 0,
///                     },
///                 },
///                 {
///                     duration: {
///                         comparisonOperator: "GREATER",
///                         value: 0,
///                     },
///                 },
///             ],
///         },
///     },
///     metricSources: [{
///         metricResourceName: metric.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// engine = gcp.vertex.AiReasoningEngine("engine",
///     display_name="reasoning-engine",
///     description="Reasoning engine evaluated by the online evaluator",
///     region="us-central1")
/// metric = gcp.vertex.AiEvaluationMetric("metric",
///     evaluation_metric_id="eval-metric",
///     region="us-central1",
///     display_name="Custom response quality",
///     metric=json.dumps({
///         "llmBasedMetricSpec": {
///             "metricPromptTemplate": "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///         },
///         "metadata": {
///             "title": "custom-response-quality",
///             "scoreRange": {
///                 "min": 1,
///                 "max": 5,
///             },
///         },
///     }))
/// evaluator = gcp.vertex.AiOnlineEvaluator("evaluator",
///     region="us-central1",
///     display_name="online-evaluator",
///     agent_resource=engine.id,
///     config={
///         "random_sampling": {
///             "percentage": 100,
///         },
///     },
///     cloud_observability={
///         "open_telemetry": {
///             "semconv_version": "1.39.0",
///         },
///         "session_scope": {
///             "inactivity_trigger": {
///                 "threshold": "3600s",
///             },
///             "filters": [
///                 {
///                     "total_token_usage": {
///                         "comparison_operator": "GREATER",
///                         "value": float(0),
///                     },
///                 },
///                 {
///                     "user_turns": {
///                         "comparison_operator": "GREATER",
///                         "value": float(0),
///                     },
///                 },
///                 {
///                     "model_calls": {
///                         "comparison_operator": "GREATER",
///                         "value": float(0),
///                     },
///                 },
///                 {
///                     "model_call_errors": {
///                         "comparison_operator": "GREATER_OR_EQUAL",
///                         "value": float(0),
///                     },
///                 },
///                 {
///                     "tool_calls": {
///                         "comparison_operator": "GREATER",
///                         "value": float(0),
///                     },
///                 },
///                 {
///                     "tool_call_errors": {
///                         "comparison_operator": "GREATER_OR_EQUAL",
///                         "value": float(0),
///                     },
///                 },
///                 {
///                     "duration": {
///                         "comparison_operator": "GREATER",
///                         "value": float(0),
///                     },
///                 },
///             ],
///         },
///     },
///     metric_sources=[{
///         "metric_resource_name": metric.id,
///     }])
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
///     var engine = new Gcp.Vertex.AiReasoningEngine("engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "Reasoning engine evaluated by the online evaluator",
///         Region = "us-central1",
///     });
///
///     var metric = new Gcp.Vertex.AiEvaluationMetric("metric", new()
///     {
///         EvaluationMetricId = "eval-metric",
///         Region = "us-central1",
///         DisplayName = "Custom response quality",
///         Metric = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["llmBasedMetricSpec"] = new Dictionary<string, object?>
///             {
///                 ["metricPromptTemplate"] = "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
///             },
///             ["metadata"] = new Dictionary<string, object?>
///             {
///                 ["title"] = "custom-response-quality",
///                 ["scoreRange"] = new Dictionary<string, object?>
///                 {
///                     ["min"] = 1,
///                     ["max"] = 5,
///                 },
///             },
///         }),
///     });
///
///     var evaluator = new Gcp.Vertex.AiOnlineEvaluator("evaluator", new()
///     {
///         Region = "us-central1",
///         DisplayName = "online-evaluator",
///         AgentResource = engine.Id,
///         Config = new Gcp.Vertex.Inputs.AiOnlineEvaluatorConfigArgs
///         {
///             RandomSampling = new Gcp.Vertex.Inputs.AiOnlineEvaluatorConfigRandomSamplingArgs
///             {
///                 Percentage = 100,
///             },
///         },
///         CloudObservability = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilityArgs
///         {
///             OpenTelemetry = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs
///             {
///                 SemconvVersion = "1.39.0",
///             },
///             SessionScope = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeArgs
///             {
///                 InactivityTrigger = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTriggerArgs
///                 {
///                     Threshold = "3600s",
///                 },
///                 Filters = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs
///                     {
///                         TotalTokenUsage = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterTotalTokenUsageArgs
///                         {
///                             ComparisonOperator = "GREATER",
///                             Value = 0.0,
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs
///                     {
///                         UserTurns = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurnsArgs
///                         {
///                             ComparisonOperator = "GREATER",
///                             Value = 0.0,
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs
///                     {
///                         ModelCalls = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallsArgs
///                         {
///                             ComparisonOperator = "GREATER",
///                             Value = 0.0,
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs
///                     {
///                         ModelCallErrors = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallErrorsArgs
///                         {
///                             ComparisonOperator = "GREATER_OR_EQUAL",
///                             Value = 0.0,
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs
///                     {
///                         ToolCalls = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallsArgs
///                         {
///                             ComparisonOperator = "GREATER",
///                             Value = 0.0,
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs
///                     {
///                         ToolCallErrors = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallErrorsArgs
///                         {
///                             ComparisonOperator = "GREATER_OR_EQUAL",
///                             Value = 0.0,
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs
///                     {
///                         Duration = new Gcp.Vertex.Inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterDurationArgs
///                         {
///                             ComparisonOperator = "GREATER",
///                             Value = 0.0,
///                         },
///                     },
///                 },
///             },
///         },
///         MetricSources = new[]
///         {
///             new Gcp.Vertex.Inputs.AiOnlineEvaluatorMetricSourceArgs
///             {
///                 MetricResourceName = metric.Id,
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
/// 		engine, err := vertex.NewAiReasoningEngine(ctx, "engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("Reasoning engine evaluated by the online evaluator"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"llmBasedMetricSpec": map[string]string{
/// 				"metricPromptTemplate": "Rate the quality of the following response on a scale of 1 to 5. Response: {response}",
/// 			},
/// 			"metadata": map[string]interface{}{
/// 				"title": "custom-response-quality",
/// 				"scoreRange": map[string]int{
/// 					"min": 1,
/// 					"max": 5,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		metric, err := vertex.NewAiEvaluationMetric(ctx, "metric", &vertex.AiEvaluationMetricArgs{
/// 			EvaluationMetricId: pulumi.String("eval-metric"),
/// 			Region:             pulumi.String("us-central1"),
/// 			DisplayName:        pulumi.String("Custom response quality"),
/// 			Metric:             pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiOnlineEvaluator(ctx, "evaluator", &vertex.AiOnlineEvaluatorArgs{
/// 			Region:        pulumi.String("us-central1"),
/// 			DisplayName:   pulumi.String("online-evaluator"),
/// 			AgentResource: engine.ID(),
/// 			Config: &vertex.AiOnlineEvaluatorConfigArgs{
/// 				RandomSampling: &vertex.AiOnlineEvaluatorConfigRandomSamplingArgs{
/// 					Percentage: pulumi.Int(100),
/// 				},
/// 			},
/// 			CloudObservability: &vertex.AiOnlineEvaluatorCloudObservabilityArgs{
/// 				OpenTelemetry: &vertex.AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs{
/// 					SemconvVersion: pulumi.String("1.39.0"),
/// 				},
/// 				SessionScope: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeArgs{
/// 					InactivityTrigger: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTriggerArgs{
/// 						Threshold: pulumi.String("3600s"),
/// 					},
/// 					Filters: vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArray{
/// 						&vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs{
/// 							TotalTokenUsage: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterTotalTokenUsageArgs{
/// 								ComparisonOperator: pulumi.String("GREATER"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 						&vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs{
/// 							UserTurns: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurnsArgs{
/// 								ComparisonOperator: pulumi.String("GREATER"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 						&vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs{
/// 							ModelCalls: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallsArgs{
/// 								ComparisonOperator: pulumi.String("GREATER"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 						&vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs{
/// 							ModelCallErrors: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallErrorsArgs{
/// 								ComparisonOperator: pulumi.String("GREATER_OR_EQUAL"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 						&vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs{
/// 							ToolCalls: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallsArgs{
/// 								ComparisonOperator: pulumi.String("GREATER"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 						&vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs{
/// 							ToolCallErrors: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallErrorsArgs{
/// 								ComparisonOperator: pulumi.String("GREATER_OR_EQUAL"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 						&vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs{
/// 							Duration: &vertex.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterDurationArgs{
/// 								ComparisonOperator: pulumi.String("GREATER"),
/// 								Value:              pulumi.Float64(0),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MetricSources: vertex.AiOnlineEvaluatorMetricSourceArray{
/// 				&vertex.AiOnlineEvaluatorMetricSourceArgs{
/// 					MetricResourceName: metric.ID(),
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
/// resource "gcp_vertex_ai_reasoning_engine" "engine" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "reasoning-engine"
///   description  = "Reasoning engine evaluated by the online evaluator"
///   region       = "us-central1"
/// }
/// resource "gcp_vertex_ai_evaluation_metric" "metric" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   evaluation_metric_id = "eval-metric"
///   region               = "us-central1"
///   display_name         = "Custom response quality"
///   metric = jsonencode({
///     "llmBasedMetricSpec" = {
///       "metricPromptTemplate" = "Rate the quality of the following response on a scale of 1 to 5. Response: {response}"
///     }
///     "metadata" = {
///       "title" = "custom-response-quality"
///       "scoreRange" = {
///         "min" = 1
///         "max" = 5
///       }
///     }
///   })
/// }
/// resource "gcp_vertex_ai_online_evaluator" "evaluator" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   region         = "us-central1"
///   display_name   = "online-evaluator"
///   agent_resource = gcp_vertex_ai_reasoning_engine.engine.id
///   config = {
///     random_sampling = {
///       percentage = 100
///     }
///   }
///   cloud_observability = {
///     open_telemetry = {
///       semconv_version = "1.39.0"
///     }
///     session_scope = {
///       inactivity_trigger = {
///         threshold = "3600s"
///       }
///       filters = [{
///         total_token_usage = {
///           comparison_operator = "GREATER"
///           value               = 0
///         }
///         }, {
///         user_turns = {
///           comparison_operator = "GREATER"
///           value               = 0
///         }
///         }, {
///         model_calls = {
///           comparison_operator = "GREATER"
///           value               = 0
///         }
///         }, {
///         model_call_errors = {
///           comparison_operator = "GREATER_OR_EQUAL"
///           value               = 0
///         }
///         }, {
///         tool_calls = {
///           comparison_operator = "GREATER"
///           value               = 0
///         }
///         }, {
///         tool_call_errors = {
///           comparison_operator = "GREATER_OR_EQUAL"
///           value               = 0
///         }
///         }, {
///         duration = {
///           comparison_operator = "GREATER"
///           value               = 0
///         }
///       }]
///     }
///   }
///   metric_sources {
///     metric_resource_name = gcp_vertex_ai_evaluation_metric.metric.id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.AiEvaluationMetric;
/// import com.pulumi.gcp.vertex.AiEvaluationMetricArgs;
/// import com.pulumi.gcp.vertex.AiOnlineEvaluator;
/// import com.pulumi.gcp.vertex.AiOnlineEvaluatorArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorConfigRandomSamplingArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilityArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTriggerArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterTotalTokenUsageArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurnsArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallsArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallErrorsArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallsArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallErrorsArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorCloudObservabilitySessionScopeFilterDurationArgs;
/// import com.pulumi.gcp.vertex.inputs.AiOnlineEvaluatorMetricSourceArgs;
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
///         var engine = new AiReasoningEngine("engine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("Reasoning engine evaluated by the online evaluator")
///             .region("us-central1")
///             .build());
///
///         var metric = new AiEvaluationMetric("metric", AiEvaluationMetricArgs.builder()
///             .evaluationMetricId("eval-metric")
///             .region("us-central1")
///             .displayName("Custom response quality")
///             .metric(serializeJson(
///                 jsonObject(
///                     jsonProperty("llmBasedMetricSpec", jsonObject(
///                         jsonProperty("metricPromptTemplate", "Rate the quality of the following response on a scale of 1 to 5. Response: {response}")
///                     )),
///                     jsonProperty("metadata", jsonObject(
///                         jsonProperty("title", "custom-response-quality"),
///                         jsonProperty("scoreRange", jsonObject(
///                             jsonProperty("min", 1),
///                             jsonProperty("max", 5)
///                         ))
///                     ))
///                 )))
///             .build());
///
///         var evaluator = new AiOnlineEvaluator("evaluator", AiOnlineEvaluatorArgs.builder()
///             .region("us-central1")
///             .displayName("online-evaluator")
///             .agentResource(engine.id())
///             .config(AiOnlineEvaluatorConfigArgs.builder()
///                 .randomSampling(AiOnlineEvaluatorConfigRandomSamplingArgs.builder()
///                     .percentage(100)
///                     .build())
///                 .build())
///             .cloudObservability(AiOnlineEvaluatorCloudObservabilityArgs.builder()
///                 .openTelemetry(AiOnlineEvaluatorCloudObservabilityOpenTelemetryArgs.builder()
///                     .semconvVersion("1.39.0")
///                     .build())
///                 .sessionScope(AiOnlineEvaluatorCloudObservabilitySessionScopeArgs.builder()
///                     .inactivityTrigger(AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTriggerArgs.builder()
///                         .threshold("3600s")
///                         .build())
///                     .filters(
///                         AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs.builder()
///                             .totalTokenUsage(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterTotalTokenUsageArgs.builder()
///                                 .comparisonOperator("GREATER")
///                                 .value(0.0)
///                                 .build())
///                             .build(),
///                         AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs.builder()
///                             .userTurns(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurnsArgs.builder()
///                                 .comparisonOperator("GREATER")
///                                 .value(0.0)
///                                 .build())
///                             .build(),
///                         AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs.builder()
///                             .modelCalls(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallsArgs.builder()
///                                 .comparisonOperator("GREATER")
///                                 .value(0.0)
///                                 .build())
///                             .build(),
///                         AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs.builder()
///                             .modelCallErrors(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallErrorsArgs.builder()
///                                 .comparisonOperator("GREATER_OR_EQUAL")
///                                 .value(0.0)
///                                 .build())
///                             .build(),
///                         AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs.builder()
///                             .toolCalls(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallsArgs.builder()
///                                 .comparisonOperator("GREATER")
///                                 .value(0.0)
///                                 .build())
///                             .build(),
///                         AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs.builder()
///                             .toolCallErrors(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallErrorsArgs.builder()
///                                 .comparisonOperator("GREATER_OR_EQUAL")
///                                 .value(0.0)
///                                 .build())
///                             .build(),
///                         AiOnlineEvaluatorCloudObservabilitySessionScopeFilterArgs.builder()
///                             .duration(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterDurationArgs.builder()
///                                 .comparisonOperator("GREATER")
///                                 .value(0.0)
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .metricSources(AiOnlineEvaluatorMetricSourceArgs.builder()
///                 .metricResourceName(metric.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   engine:
///     type: gcp:vertex:AiReasoningEngine
///     properties:
///       displayName: reasoning-engine
///       description: Reasoning engine evaluated by the online evaluator
///       region: us-central1
///   metric:
///     type: gcp:vertex:AiEvaluationMetric
///     properties:
///       evaluationMetricId: eval-metric
///       region: us-central1
///       displayName: Custom response quality
///       metric:
///         fn::toJSON:
///           llmBasedMetricSpec:
///             metricPromptTemplate: 'Rate the quality of the following response on a scale of 1 to 5. Response: {response}'
///           metadata:
///             title: custom-response-quality
///             scoreRange:
///               min: 1
///               max: 5
///   evaluator:
///     type: gcp:vertex:AiOnlineEvaluator
///     properties:
///       region: us-central1
///       displayName: online-evaluator
///       agentResource: ${engine.id}
///       config:
///         randomSampling:
///           percentage: 100
///       cloudObservability:
///         openTelemetry:
///           semconvVersion: 1.39.0
///         sessionScope:
///           inactivityTrigger:
///             threshold: 3600s
///           filters:
///             - totalTokenUsage:
///                 comparisonOperator: GREATER
///                 value: 0
///             - userTurns:
///                 comparisonOperator: GREATER
///                 value: 0
///             - modelCalls:
///                 comparisonOperator: GREATER
///                 value: 0
///             - modelCallErrors:
///                 comparisonOperator: GREATER_OR_EQUAL
///                 value: 0
///             - toolCalls:
///                 comparisonOperator: GREATER
///                 value: 0
///             - toolCallErrors:
///                 comparisonOperator: GREATER_OR_EQUAL
///                 value: 0
///             - duration:
///                 comparisonOperator: GREATER
///                 value: 0
///       metricSources:
///         - metricResourceName: ${metric.id}
/// ```
///
///
/// ## Import
///
/// OnlineEvaluator can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/onlineEvaluators/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, OnlineEvaluator can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiOnlineEvaluator:AiOnlineEvaluator default projects/{{project}}/locations/{{region}}/onlineEvaluators/{{name}}
/// $ pulumi import gcp:vertex/aiOnlineEvaluator:AiOnlineEvaluator default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiOnlineEvaluator:AiOnlineEvaluator default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiOnlineEvaluator:AiOnlineEvaluator default {{name}}
/// ```
class AiOnlineEvaluator extends pulumi.CustomResource {
  /// The name of the agent that the OnlineEvaluator evaluates periodically.
  /// This value is used to filter the traces with a matching cloud.resource_id
  /// and link the evaluation results with relevant dashboards/UIs. This field
  /// is immutable; once set, it cannot be changed.
  late final pulumi.Output<String> agentResource;
  /// Data source for the OnlineEvaluator, based on the Google Cloud
  /// Observability stack (Cloud Trace & Cloud Logging). The data source type is
  /// immutable once set. Within `cloudObservability`, `logView` and
  /// `traceView` can be updated; the eval scope (`traceScope` /
  /// `sessionScope`) and the convention (`openTelemetry`) are immutable.
  /// Structure is documented below.
  late final pulumi.Output<AiOnlineEvaluatorCloudObservability> cloudObservability;
  /// Configuration for sampling behavior of the OnlineEvaluator. The
  /// OnlineEvaluator runs at a fixed interval of 10 minutes.
  /// Structure is documented below.
  late final pulumi.Output<AiOnlineEvaluatorConfig> config;
  /// Timestamp when the OnlineEvaluator was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable name for the OnlineEvaluator. The name doesn't have to be
  /// unique. The name can consist of any UTF-8 characters. The maximum length
  /// is 63 characters.
  late final pulumi.Output<String?> displayName;
  /// A list of metric sources to be used for evaluating samples. At least one
  /// metric source must be provided. Only predefined metrics (inline `metric`)
  /// and registered metrics (`metricResourceName`) are supported. Every
  /// registered metric must have a `displayName` (or `title`) and a
  /// `scoreRange` defined, otherwise the evaluations will fail. The maximum
  /// number of metric sources is 25. Exactly one of `metric` or
  /// `metricResourceName` must be set per metric source.
  /// Structure is documented below.
  late final pulumi.Output<List<AiOnlineEvaluatorMetricSource>> metricSources;
  /// The resource name of the OnlineEvaluator. This is the final component of
  /// the resource path.
  /// Format: projects/{{project}}/locations/{{region}}/onlineEvaluators/{{id}}.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the OnlineEvaluator (e.g. us-central1). If unset, the provider's region is used.
  late final pulumi.Output<String?> region;
  /// The state of the OnlineEvaluator. Possible values are: ACTIVE, SUSPENDED,
  /// FAILED, WARNING.
  late final pulumi.Output<String> state;
  /// Contains additional information about the state of the OnlineEvaluator.
  /// This is used to provide more details in the event of a failure.
  /// Structure is documented below.
  late final pulumi.Output<List<AiOnlineEvaluatorStateDetail>> stateDetails;
  /// Timestamp when the OnlineEvaluator was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiOnlineEvaluator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiOnlineEvaluator]. {@macro pulumi_vertex_ai_online_evaluator_ai_online_evaluator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiOnlineEvaluator(
    String name, {
    AiOnlineEvaluatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiOnlineEvaluator:AiOnlineEvaluator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    agentResource = registerOutput<String>('agentResource');
    cloudObservability = registerOutput<AiOnlineEvaluatorCloudObservability>('cloudObservability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiOnlineEvaluatorCloudObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<AiOnlineEvaluatorConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiOnlineEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    metricSources = registerOutput<List<AiOnlineEvaluatorMetricSource>>('metricSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiOnlineEvaluatorMetricSource>(guardedValue, (value) => AiOnlineEvaluatorMetricSource.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    state = registerOutput<String>('state');
    stateDetails = registerOutput<List<AiOnlineEvaluatorStateDetail>>('stateDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiOnlineEvaluatorStateDetail>(guardedValue, (value) => AiOnlineEvaluatorStateDetail.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiOnlineEvaluator] resource's state with the given [name] and [id].
  static AiOnlineEvaluator get(
    String name,
    pulumi.Input<String> id, {
    AiOnlineEvaluatorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiOnlineEvaluator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiOnlineEvaluator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiOnlineEvaluator:AiOnlineEvaluator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentResource = registerOutput<String>('agentResource');
    cloudObservability = registerOutput<AiOnlineEvaluatorCloudObservability>('cloudObservability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiOnlineEvaluatorCloudObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<AiOnlineEvaluatorConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiOnlineEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    metricSources = registerOutput<List<AiOnlineEvaluatorMetricSource>>('metricSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiOnlineEvaluatorMetricSource>(guardedValue, (value) => AiOnlineEvaluatorMetricSource.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    this.state = registerOutput<String>('state');
    stateDetails = registerOutput<List<AiOnlineEvaluatorStateDetail>>('stateDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiOnlineEvaluatorStateDetail>(guardedValue, (value) => AiOnlineEvaluatorStateDetail.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiOnlineEvaluator] resource.
  AiOnlineEvaluator.reference(String urn)
    : super(
        'gcp:vertex/aiOnlineEvaluator:AiOnlineEvaluator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentResource = registerOutput<String>('agentResource');
    cloudObservability = registerOutput<AiOnlineEvaluatorCloudObservability>('cloudObservability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiOnlineEvaluatorCloudObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<AiOnlineEvaluatorConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiOnlineEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    metricSources = registerOutput<List<AiOnlineEvaluatorMetricSource>>('metricSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiOnlineEvaluatorMetricSource>(guardedValue, (value) => AiOnlineEvaluatorMetricSource.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    state = registerOutput<String>('state');
    stateDetails = registerOutput<List<AiOnlineEvaluatorStateDetail>>('stateDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiOnlineEvaluatorStateDetail>(guardedValue, (value) => AiOnlineEvaluatorStateDetail.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
