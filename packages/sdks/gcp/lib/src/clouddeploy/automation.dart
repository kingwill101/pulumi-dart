import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_args.dart';
import 'automation_rule.dart';
import 'automation_selector.dart';
import 'automation_state.dart';

/// An `Automation` enables the automation of manually driven actions for a Delivery Pipeline, which includes Release promotion amongst Targets, Rollout repair and Rollout deployment strategy advancement.
///
///
/// To get more information about Automation, see:
///
/// * [API documentation](https://cloud.google.com/deploy/docs/api/reference/rest/v1/projects.locations.deliveryPipelines.automations)
/// * How-to Guides
/// * [Automate your deployment](https://cloud.google.com/deploy/docs/automation)
///
/// ## Example Usage
///
/// ### Clouddeploy Automation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pipeline = new gcp.clouddeploy.DeliveryPipeline("pipeline", {
///     name: "cd-pipeline",
///     location: "us-central1",
///     serialPipeline: {
///         stages: [{
///             targetId: "test",
///             profiles: [],
///         }],
///     },
/// });
/// const b_automation = new gcp.clouddeploy.Automation("b-automation", {
///     name: "cd-automation",
///     project: pipeline.project,
///     location: pipeline.location,
///     deliveryPipeline: pipeline.name,
///     serviceAccount: "my@service-account.com",
///     selector: {
///         targets: [{
///             id: "*",
///         }],
///     },
///     rules: [
///         {
///             promoteReleaseRule: {
///                 id: "promote-release",
///             },
///         },
///         {
///             advanceRolloutRule: {
///                 id: "advance-rollout",
///             },
///         },
///         {
///             repairRolloutRule: {
///                 id: "repair-rollout",
///                 repairPhases: [
///                     {
///                         retry: {
///                             attempts: "1",
///                         },
///                     },
///                     {
///                         rollback: {},
///                     },
///                 ],
///             },
///         },
///         {
///             timedPromoteReleaseRule: {
///                 id: "timed-promote-release",
///                 schedule: "0 9 * * 1",
///                 timeZone: "America/New_York",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pipeline = gcp.clouddeploy.DeliveryPipeline("pipeline",
///     name="cd-pipeline",
///     location="us-central1",
///     serial_pipeline={
///         "stages": [{
///             "target_id": "test",
///             "profiles": [],
///         }],
///     })
/// b_automation = gcp.clouddeploy.Automation("b-automation",
///     name="cd-automation",
///     project=pipeline.project,
///     location=pipeline.location,
///     delivery_pipeline=pipeline.name,
///     service_account="my@service-account.com",
///     selector={
///         "targets": [{
///             "id": "*",
///         }],
///     },
///     rules=[
///         {
///             "promote_release_rule": {
///                 "id": "promote-release",
///             },
///         },
///         {
///             "advance_rollout_rule": {
///                 "id": "advance-rollout",
///             },
///         },
///         {
///             "repair_rollout_rule": {
///                 "id": "repair-rollout",
///                 "repair_phases": [
///                     {
///                         "retry": {
///                             "attempts": "1",
///                         },
///                     },
///                     {
///                         "rollback": {},
///                     },
///                 ],
///             },
///         },
///         {
///             "timed_promote_release_rule": {
///                 "id": "timed-promote-release",
///                 "schedule": "0 9 * * 1",
///                 "time_zone": "America/New_York",
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
///     var pipeline = new Gcp.CloudDeploy.DeliveryPipeline("pipeline", new()
///     {
///         Name = "cd-pipeline",
///         Location = "us-central1",
///         SerialPipeline = new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineArgs
///         {
///             Stages = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     TargetId = "test",
///                     Profiles = new() { },
///                 },
///             },
///         },
///     });
///
///     var b_automation = new Gcp.CloudDeploy.Automation("b-automation", new()
///     {
///         Name = "cd-automation",
///         Project = pipeline.Project,
///         Location = pipeline.Location,
///         DeliveryPipeline = pipeline.Name,
///         ServiceAccount = "my@service-account.com",
///         Selector = new Gcp.CloudDeploy.Inputs.AutomationSelectorArgs
///         {
///             Targets = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.AutomationSelectorTargetArgs
///                 {
///                     Id = "*",
///                 },
///             },
///         },
///         Rules = new[]
///         {
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 PromoteReleaseRule = new Gcp.CloudDeploy.Inputs.AutomationRulePromoteReleaseRuleArgs
///                 {
///                     Id = "promote-release",
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 AdvanceRolloutRule = new Gcp.CloudDeploy.Inputs.AutomationRuleAdvanceRolloutRuleArgs
///                 {
///                     Id = "advance-rollout",
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 RepairRolloutRule = new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleArgs
///                 {
///                     Id = "repair-rollout",
///                     RepairPhases = new[]
///                     {
///                         new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleRepairPhaseArgs
///                         {
///                             Retry = new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs
///                             {
///                                 Attempts = "1",
///                             },
///                         },
///                         new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleRepairPhaseArgs
///                         {
///                             Rollback = null,
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 TimedPromoteReleaseRule = new Gcp.CloudDeploy.Inputs.AutomationRuleTimedPromoteReleaseRuleArgs
///                 {
///                     Id = "timed-promote-release",
///                     Schedule = "0 9 * * 1",
///                     TimeZone = "America/New_York",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pipeline, err := clouddeploy.NewDeliveryPipeline(ctx, "pipeline", &clouddeploy.DeliveryPipelineArgs{
/// 			Name:     pulumi.String("cd-pipeline"),
/// 			Location: pulumi.String("us-central1"),
/// 			SerialPipeline: &clouddeploy.DeliveryPipelineSerialPipelineArgs{
/// 				Stages: clouddeploy.DeliveryPipelineSerialPipelineStageArray{
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						TargetId: pulumi.String("test"),
/// 						Profiles: pulumi.StringArray{},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clouddeploy.NewAutomation(ctx, "b-automation", &clouddeploy.AutomationArgs{
/// 			Name:             pulumi.String("cd-automation"),
/// 			Project:          pipeline.Project,
/// 			Location:         pipeline.Location,
/// 			DeliveryPipeline: pipeline.Name,
/// 			ServiceAccount:   pulumi.String("my@service-account.com"),
/// 			Selector: &clouddeploy.AutomationSelectorArgs{
/// 				Targets: clouddeploy.AutomationSelectorTargetArray{
/// 					&clouddeploy.AutomationSelectorTargetArgs{
/// 						Id: pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 			Rules: clouddeploy.AutomationRuleArray{
/// 				&clouddeploy.AutomationRuleArgs{
/// 					PromoteReleaseRule: &clouddeploy.AutomationRulePromoteReleaseRuleArgs{
/// 						Id: pulumi.String("promote-release"),
/// 					},
/// 				},
/// 				&clouddeploy.AutomationRuleArgs{
/// 					AdvanceRolloutRule: &clouddeploy.AutomationRuleAdvanceRolloutRuleArgs{
/// 						Id: pulumi.String("advance-rollout"),
/// 					},
/// 				},
/// 				&clouddeploy.AutomationRuleArgs{
/// 					RepairRolloutRule: &clouddeploy.AutomationRuleRepairRolloutRuleArgs{
/// 						Id: pulumi.String("repair-rollout"),
/// 						RepairPhases: clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseArray{
/// 							&clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseArgs{
/// 								Retry: &clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs{
/// 									Attempts: pulumi.String("1"),
/// 								},
/// 							},
/// 							&clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseArgs{
/// 								Rollback: &clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseRollbackArgs{},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&clouddeploy.AutomationRuleArgs{
/// 					TimedPromoteReleaseRule: &clouddeploy.AutomationRuleTimedPromoteReleaseRuleArgs{
/// 						Id:       pulumi.String("timed-promote-release"),
/// 						Schedule: pulumi.String("0 9 * * 1"),
/// 						TimeZone: pulumi.String("America/New_York"),
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
/// resource "gcp_clouddeploy_automation" "b-automation" {
///   name              = "cd-automation"
///   project           = gcp_clouddeploy_deliverypipeline.pipeline.project
///   location          = gcp_clouddeploy_deliverypipeline.pipeline.location
///   delivery_pipeline = gcp_clouddeploy_deliverypipeline.pipeline.name
///   service_account   = "my@service-account.com"
///   selector = {
///     targets = [{
///       "id" = "*"
///     }]
///   }
///   rules {
///     promote_release_rule = {
///       id = "promote-release"
///     }
///   }
///   rules {
///     advance_rollout_rule = {
///       id = "advance-rollout"
///     }
///   }
///   rules {
///     repair_rollout_rule = {
///       id = "repair-rollout"
///       repair_phases = [{
///         "retry" = {
///           "attempts" = "1"
///         }
///         }, {
///         "rollback" = {}
///       }]
///     }
///   }
///   rules {
///     timed_promote_release_rule = {
///       id        = "timed-promote-release"
///       schedule  = "0 9 * * 1"
///       time_zone = "America/New_York"
///     }
///   }
/// }
/// resource "gcp_clouddeploy_deliverypipeline" "pipeline" {
///   name     = "cd-pipeline"
///   location = "us-central1"
///   serial_pipeline = {
///     stages = [{
///       "targetId" = "test"
///       "profiles" = []
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
/// import com.pulumi.gcp.clouddeploy.DeliveryPipeline;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineStageArgs;
/// import com.pulumi.gcp.clouddeploy.Automation;
/// import com.pulumi.gcp.clouddeploy.AutomationArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationSelectorArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationSelectorTargetArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRulePromoteReleaseRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleAdvanceRolloutRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleRepairPhaseArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleRepairPhaseRollbackArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleTimedPromoteReleaseRuleArgs;
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
///         var pipeline = new DeliveryPipeline("pipeline", DeliveryPipelineArgs.builder()
///             .name("cd-pipeline")
///             .location("us-central1")
///             .serialPipeline(DeliveryPipelineSerialPipelineArgs.builder()
///                 .stages(DeliveryPipelineSerialPipelineStageArgs.builder()
///                     .targetId("test")
///                     .profiles()
///                     .build())
///                 .build())
///             .build());
///
///         var b_automation = new Automation("b-automation", AutomationArgs.builder()
///             .name("cd-automation")
///             .project(pipeline.project())
///             .location(pipeline.location())
///             .deliveryPipeline(pipeline.name())
///             .serviceAccount("my@service-account.com")
///             .selector(AutomationSelectorArgs.builder()
///                 .targets(AutomationSelectorTargetArgs.builder()
///                     .id("*")
///                     .build())
///                 .build())
///             .rules(
///                 AutomationRuleArgs.builder()
///                     .promoteReleaseRule(AutomationRulePromoteReleaseRuleArgs.builder()
///                         .id("promote-release")
///                         .build())
///                     .build(),
///                 AutomationRuleArgs.builder()
///                     .advanceRolloutRule(AutomationRuleAdvanceRolloutRuleArgs.builder()
///                         .id("advance-rollout")
///                         .build())
///                     .build(),
///                 AutomationRuleArgs.builder()
///                     .repairRolloutRule(AutomationRuleRepairRolloutRuleArgs.builder()
///                         .id("repair-rollout")
///                         .repairPhases(
///                             AutomationRuleRepairRolloutRuleRepairPhaseArgs.builder()
///                                 .retry(AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs.builder()
///                                     .attempts("1")
///                                     .build())
///                                 .build(),
///                             AutomationRuleRepairRolloutRuleRepairPhaseArgs.builder()
///                                 .rollback(AutomationRuleRepairRolloutRuleRepairPhaseRollbackArgs.builder()
///                                     .build())
///                                 .build())
///                         .build())
///                     .build(),
///                 AutomationRuleArgs.builder()
///                     .timedPromoteReleaseRule(AutomationRuleTimedPromoteReleaseRuleArgs.builder()
///                         .id("timed-promote-release")
///                         .schedule("0 9 * * 1")
///                         .timeZone("America/New_York")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   b-automation:
///     type: gcp:clouddeploy:Automation
///     properties:
///       name: cd-automation
///       project: ${pipeline.project}
///       location: ${pipeline.location}
///       deliveryPipeline: ${pipeline.name}
///       serviceAccount: my@service-account.com
///       selector:
///         targets:
///           - id: '*'
///       rules:
///         - promoteReleaseRule:
///             id: promote-release
///         - advanceRolloutRule:
///             id: advance-rollout
///         - repairRolloutRule:
///             id: repair-rollout
///             repairPhases:
///               - retry:
///                   attempts: '1'
///               - rollback: {}
///         - timedPromoteReleaseRule:
///             id: timed-promote-release
///             schedule: 0 9 * * 1
///             timeZone: America/New_York
///   pipeline:
///     type: gcp:clouddeploy:DeliveryPipeline
///     properties:
///       name: cd-pipeline
///       location: us-central1
///       serialPipeline:
///         stages:
///           - targetId: test
///             profiles: []
/// ```
///
/// ### Clouddeploy Automation Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pipeline = new gcp.clouddeploy.DeliveryPipeline("pipeline", {
///     name: "cd-pipeline",
///     location: "us-central1",
///     serialPipeline: {
///         stages: [{
///             targetId: "test",
///             profiles: ["test-profile"],
///         }],
///     },
/// });
/// const f_automation = new gcp.clouddeploy.Automation("f-automation", {
///     name: "cd-automation",
///     location: "us-central1",
///     deliveryPipeline: pipeline.name,
///     serviceAccount: "my@service-account.com",
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
///     description: "automation resource",
///     selector: {
///         targets: [{
///             id: "test",
///             labels: {
///                 foo: "bar",
///             },
///         }],
///     },
///     suspended: true,
///     rules: [
///         {
///             promoteReleaseRule: {
///                 id: "promote-release",
///                 wait: "200s",
///                 destinationTargetId: "@next",
///                 destinationPhase: "stable",
///             },
///         },
///         {
///             advanceRolloutRule: {
///                 id: "advance-rollout",
///                 sourcePhases: ["canary"],
///                 wait: "200s",
///             },
///         },
///         {
///             repairRolloutRule: {
///                 id: "repair-rollout",
///                 phases: ["stable"],
///                 jobs: ["deploy"],
///                 repairPhases: [
///                     {
///                         retry: {
///                             attempts: "1",
///                             wait: "200s",
///                             backoffMode: "BACKOFF_MODE_LINEAR",
///                         },
///                     },
///                     {
///                         rollback: {
///                             destinationPhase: "stable",
///                             disableRollbackIfRolloutPending: true,
///                         },
///                     },
///                 ],
///             },
///         },
///         {
///             timedPromoteReleaseRule: {
///                 id: "timed-promote-release",
///                 destinationTargetId: "@next",
///                 schedule: "0 9 * * 1",
///                 timeZone: "America/New_York",
///                 destinationPhase: "stable",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pipeline = gcp.clouddeploy.DeliveryPipeline("pipeline",
///     name="cd-pipeline",
///     location="us-central1",
///     serial_pipeline={
///         "stages": [{
///             "target_id": "test",
///             "profiles": ["test-profile"],
///         }],
///     })
/// f_automation = gcp.clouddeploy.Automation("f-automation",
///     name="cd-automation",
///     location="us-central1",
///     delivery_pipeline=pipeline.name,
///     service_account="my@service-account.com",
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     },
///     description="automation resource",
///     selector={
///         "targets": [{
///             "id": "test",
///             "labels": {
///                 "foo": "bar",
///             },
///         }],
///     },
///     suspended=True,
///     rules=[
///         {
///             "promote_release_rule": {
///                 "id": "promote-release",
///                 "wait": "200s",
///                 "destination_target_id": "@next",
///                 "destination_phase": "stable",
///             },
///         },
///         {
///             "advance_rollout_rule": {
///                 "id": "advance-rollout",
///                 "source_phases": ["canary"],
///                 "wait": "200s",
///             },
///         },
///         {
///             "repair_rollout_rule": {
///                 "id": "repair-rollout",
///                 "phases": ["stable"],
///                 "jobs": ["deploy"],
///                 "repair_phases": [
///                     {
///                         "retry": {
///                             "attempts": "1",
///                             "wait": "200s",
///                             "backoff_mode": "BACKOFF_MODE_LINEAR",
///                         },
///                     },
///                     {
///                         "rollback": {
///                             "destination_phase": "stable",
///                             "disable_rollback_if_rollout_pending": True,
///                         },
///                     },
///                 ],
///             },
///         },
///         {
///             "timed_promote_release_rule": {
///                 "id": "timed-promote-release",
///                 "destination_target_id": "@next",
///                 "schedule": "0 9 * * 1",
///                 "time_zone": "America/New_York",
///                 "destination_phase": "stable",
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
///     var pipeline = new Gcp.CloudDeploy.DeliveryPipeline("pipeline", new()
///     {
///         Name = "cd-pipeline",
///         Location = "us-central1",
///         SerialPipeline = new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineArgs
///         {
///             Stages = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     TargetId = "test",
///                     Profiles = new[]
///                     {
///                         "test-profile",
///                     },
///                 },
///             },
///         },
///     });
///
///     var f_automation = new Gcp.CloudDeploy.Automation("f-automation", new()
///     {
///         Name = "cd-automation",
///         Location = "us-central1",
///         DeliveryPipeline = pipeline.Name,
///         ServiceAccount = "my@service-account.com",
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///         Description = "automation resource",
///         Selector = new Gcp.CloudDeploy.Inputs.AutomationSelectorArgs
///         {
///             Targets = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.AutomationSelectorTargetArgs
///                 {
///                     Id = "test",
///                     Labels =
///                     {
///                         { "foo", "bar" },
///                     },
///                 },
///             },
///         },
///         Suspended = true,
///         Rules = new[]
///         {
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 PromoteReleaseRule = new Gcp.CloudDeploy.Inputs.AutomationRulePromoteReleaseRuleArgs
///                 {
///                     Id = "promote-release",
///                     Wait = "200s",
///                     DestinationTargetId = "@next",
///                     DestinationPhase = "stable",
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 AdvanceRolloutRule = new Gcp.CloudDeploy.Inputs.AutomationRuleAdvanceRolloutRuleArgs
///                 {
///                     Id = "advance-rollout",
///                     SourcePhases = new[]
///                     {
///                         "canary",
///                     },
///                     Wait = "200s",
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 RepairRolloutRule = new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleArgs
///                 {
///                     Id = "repair-rollout",
///                     Phases = new[]
///                     {
///                         "stable",
///                     },
///                     Jobs = new[]
///                     {
///                         "deploy",
///                     },
///                     RepairPhases = new[]
///                     {
///                         new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleRepairPhaseArgs
///                         {
///                             Retry = new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs
///                             {
///                                 Attempts = "1",
///                                 Wait = "200s",
///                                 BackoffMode = "BACKOFF_MODE_LINEAR",
///                             },
///                         },
///                         new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleRepairPhaseArgs
///                         {
///                             Rollback = new Gcp.CloudDeploy.Inputs.AutomationRuleRepairRolloutRuleRepairPhaseRollbackArgs
///                             {
///                                 DestinationPhase = "stable",
///                                 DisableRollbackIfRolloutPending = true,
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.AutomationRuleArgs
///             {
///                 TimedPromoteReleaseRule = new Gcp.CloudDeploy.Inputs.AutomationRuleTimedPromoteReleaseRuleArgs
///                 {
///                     Id = "timed-promote-release",
///                     DestinationTargetId = "@next",
///                     Schedule = "0 9 * * 1",
///                     TimeZone = "America/New_York",
///                     DestinationPhase = "stable",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pipeline, err := clouddeploy.NewDeliveryPipeline(ctx, "pipeline", &clouddeploy.DeliveryPipelineArgs{
/// 			Name:     pulumi.String("cd-pipeline"),
/// 			Location: pulumi.String("us-central1"),
/// 			SerialPipeline: &clouddeploy.DeliveryPipelineSerialPipelineArgs{
/// 				Stages: clouddeploy.DeliveryPipelineSerialPipelineStageArray{
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						TargetId: pulumi.String("test"),
/// 						Profiles: pulumi.StringArray{
/// 							pulumi.String("test-profile"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clouddeploy.NewAutomation(ctx, "f-automation", &clouddeploy.AutomationArgs{
/// 			Name:             pulumi.String("cd-automation"),
/// 			Location:         pulumi.String("us-central1"),
/// 			DeliveryPipeline: pipeline.Name,
/// 			ServiceAccount:   pulumi.String("my@service-account.com"),
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 			Description: pulumi.String("automation resource"),
/// 			Selector: &clouddeploy.AutomationSelectorArgs{
/// 				Targets: clouddeploy.AutomationSelectorTargetArray{
/// 					&clouddeploy.AutomationSelectorTargetArgs{
/// 						Id: pulumi.String("test"),
/// 						Labels: pulumi.StringMap{
/// 							"foo": pulumi.String("bar"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Suspended: pulumi.Bool(true),
/// 			Rules: clouddeploy.AutomationRuleArray{
/// 				&clouddeploy.AutomationRuleArgs{
/// 					PromoteReleaseRule: &clouddeploy.AutomationRulePromoteReleaseRuleArgs{
/// 						Id:                  pulumi.String("promote-release"),
/// 						Wait:                pulumi.String("200s"),
/// 						DestinationTargetId: pulumi.String("@next"),
/// 						DestinationPhase:    pulumi.String("stable"),
/// 					},
/// 				},
/// 				&clouddeploy.AutomationRuleArgs{
/// 					AdvanceRolloutRule: &clouddeploy.AutomationRuleAdvanceRolloutRuleArgs{
/// 						Id: pulumi.String("advance-rollout"),
/// 						SourcePhases: pulumi.StringArray{
/// 							pulumi.String("canary"),
/// 						},
/// 						Wait: pulumi.String("200s"),
/// 					},
/// 				},
/// 				&clouddeploy.AutomationRuleArgs{
/// 					RepairRolloutRule: &clouddeploy.AutomationRuleRepairRolloutRuleArgs{
/// 						Id: pulumi.String("repair-rollout"),
/// 						Phases: pulumi.StringArray{
/// 							pulumi.String("stable"),
/// 						},
/// 						Jobs: pulumi.StringArray{
/// 							pulumi.String("deploy"),
/// 						},
/// 						RepairPhases: clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseArray{
/// 							&clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseArgs{
/// 								Retry: &clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs{
/// 									Attempts:    pulumi.String("1"),
/// 									Wait:        pulumi.String("200s"),
/// 									BackoffMode: pulumi.String("BACKOFF_MODE_LINEAR"),
/// 								},
/// 							},
/// 							&clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseArgs{
/// 								Rollback: &clouddeploy.AutomationRuleRepairRolloutRuleRepairPhaseRollbackArgs{
/// 									DestinationPhase:                pulumi.String("stable"),
/// 									DisableRollbackIfRolloutPending: pulumi.Bool(true),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&clouddeploy.AutomationRuleArgs{
/// 					TimedPromoteReleaseRule: &clouddeploy.AutomationRuleTimedPromoteReleaseRuleArgs{
/// 						Id:                  pulumi.String("timed-promote-release"),
/// 						DestinationTargetId: pulumi.String("@next"),
/// 						Schedule:            pulumi.String("0 9 * * 1"),
/// 						TimeZone:            pulumi.String("America/New_York"),
/// 						DestinationPhase:    pulumi.String("stable"),
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
/// resource "gcp_clouddeploy_automation" "f-automation" {
///   name              = "cd-automation"
///   location          = "us-central1"
///   delivery_pipeline = gcp_clouddeploy_deliverypipeline.pipeline.name
///   service_account   = "my@service-account.com"
///   annotations = {
///     "my_first_annotation"  = "example-annotation-1"
///     "my_second_annotation" = "example-annotation-2"
///   }
///   labels = {
///     "my_first_label"  = "example-label-1"
///     "my_second_label" = "example-label-2"
///   }
///   description = "automation resource"
///   selector = {
///     targets = [{
///       "id" = "test"
///       "labels" = {
///         "foo" = "bar"
///       }
///     }]
///   }
///   suspended = true
///   rules {
///     promote_release_rule = {
///       id                    = "promote-release"
///       wait                  = "200s"
///       destination_target_id = "@next"
///       destination_phase     = "stable"
///     }
///   }
///   rules {
///     advance_rollout_rule = {
///       id            = "advance-rollout"
///       source_phases = ["canary"]
///       wait          = "200s"
///     }
///   }
///   rules {
///     repair_rollout_rule = {
///       id     = "repair-rollout"
///       phases = ["stable"]
///       jobs   = ["deploy"]
///       repair_phases = [{
///         "retry" = {
///           "attempts"    = "1"
///           "wait"        = "200s"
///           "backoffMode" = "BACKOFF_MODE_LINEAR"
///         }
///         }, {
///         "rollback" = {
///           "destinationPhase"                = "stable"
///           "disableRollbackIfRolloutPending" = true
///         }
///       }]
///     }
///   }
///   rules {
///     timed_promote_release_rule = {
///       id                    = "timed-promote-release"
///       destination_target_id = "@next"
///       schedule              = "0 9 * * 1"
///       time_zone             = "America/New_York"
///       destination_phase     = "stable"
///     }
///   }
/// }
/// resource "gcp_clouddeploy_deliverypipeline" "pipeline" {
///   name     = "cd-pipeline"
///   location = "us-central1"
///   serial_pipeline = {
///     stages = [{
///       "targetId" = "test"
///       "profiles" = ["test-profile"]
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
/// import com.pulumi.gcp.clouddeploy.DeliveryPipeline;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineStageArgs;
/// import com.pulumi.gcp.clouddeploy.Automation;
/// import com.pulumi.gcp.clouddeploy.AutomationArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationSelectorArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationSelectorTargetArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRulePromoteReleaseRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleAdvanceRolloutRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleRepairPhaseArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleRepairRolloutRuleRepairPhaseRollbackArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.AutomationRuleTimedPromoteReleaseRuleArgs;
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
///         var pipeline = new DeliveryPipeline("pipeline", DeliveryPipelineArgs.builder()
///             .name("cd-pipeline")
///             .location("us-central1")
///             .serialPipeline(DeliveryPipelineSerialPipelineArgs.builder()
///                 .stages(DeliveryPipelineSerialPipelineStageArgs.builder()
///                     .targetId("test")
///                     .profiles("test-profile")
///                     .build())
///                 .build())
///             .build());
///
///         var f_automation = new Automation("f-automation", AutomationArgs.builder()
///             .name("cd-automation")
///             .location("us-central1")
///             .deliveryPipeline(pipeline.name())
///             .serviceAccount("my@service-account.com")
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .description("automation resource")
///             .selector(AutomationSelectorArgs.builder()
///                 .targets(AutomationSelectorTargetArgs.builder()
///                     .id("test")
///                     .labels(Map.of("foo", "bar"))
///                     .build())
///                 .build())
///             .suspended(true)
///             .rules(
///                 AutomationRuleArgs.builder()
///                     .promoteReleaseRule(AutomationRulePromoteReleaseRuleArgs.builder()
///                         .id("promote-release")
///                         .wait("200s")
///                         .destinationTargetId("@next")
///                         .destinationPhase("stable")
///                         .build())
///                     .build(),
///                 AutomationRuleArgs.builder()
///                     .advanceRolloutRule(AutomationRuleAdvanceRolloutRuleArgs.builder()
///                         .id("advance-rollout")
///                         .sourcePhases("canary")
///                         .wait("200s")
///                         .build())
///                     .build(),
///                 AutomationRuleArgs.builder()
///                     .repairRolloutRule(AutomationRuleRepairRolloutRuleArgs.builder()
///                         .id("repair-rollout")
///                         .phases("stable")
///                         .jobs("deploy")
///                         .repairPhases(
///                             AutomationRuleRepairRolloutRuleRepairPhaseArgs.builder()
///                                 .retry(AutomationRuleRepairRolloutRuleRepairPhaseRetryArgs.builder()
///                                     .attempts("1")
///                                     .wait("200s")
///                                     .backoffMode("BACKOFF_MODE_LINEAR")
///                                     .build())
///                                 .build(),
///                             AutomationRuleRepairRolloutRuleRepairPhaseArgs.builder()
///                                 .rollback(AutomationRuleRepairRolloutRuleRepairPhaseRollbackArgs.builder()
///                                     .destinationPhase("stable")
///                                     .disableRollbackIfRolloutPending(true)
///                                     .build())
///                                 .build())
///                         .build())
///                     .build(),
///                 AutomationRuleArgs.builder()
///                     .timedPromoteReleaseRule(AutomationRuleTimedPromoteReleaseRuleArgs.builder()
///                         .id("timed-promote-release")
///                         .destinationTargetId("@next")
///                         .schedule("0 9 * * 1")
///                         .timeZone("America/New_York")
///                         .destinationPhase("stable")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   f-automation:
///     type: gcp:clouddeploy:Automation
///     properties:
///       name: cd-automation
///       location: us-central1
///       deliveryPipeline: ${pipeline.name}
///       serviceAccount: my@service-account.com
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
///       description: automation resource
///       selector:
///         targets:
///           - id: test
///             labels:
///               foo: bar
///       suspended: true
///       rules:
///         - promoteReleaseRule:
///             id: promote-release
///             wait: 200s
///             destinationTargetId: '@next'
///             destinationPhase: stable
///         - advanceRolloutRule:
///             id: advance-rollout
///             sourcePhases:
///               - canary
///             wait: 200s
///         - repairRolloutRule:
///             id: repair-rollout
///             phases:
///               - stable
///             jobs:
///               - deploy
///             repairPhases:
///               - retry:
///                   attempts: '1'
///                   wait: 200s
///                   backoffMode: BACKOFF_MODE_LINEAR
///               - rollback:
///                   destinationPhase: stable
///                   disableRollbackIfRolloutPending: true
///         - timedPromoteReleaseRule:
///             id: timed-promote-release
///             destinationTargetId: '@next'
///             schedule: 0 9 * * 1
///             timeZone: America/New_York
///             destinationPhase: stable
///   pipeline:
///     type: gcp:clouddeploy:DeliveryPipeline
///     properties:
///       name: cd-pipeline
///       location: us-central1
///       serialPipeline:
///         stages:
///           - targetId: test
///             profiles:
///               - test-profile
/// ```
///
///
/// ## Import
///
/// Automation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/deliveryPipelines/{{delivery_pipeline}}/automations/{{name}}`
/// * `{{project}}/{{location}}/{{delivery_pipeline}}/{{name}}`
/// * `{{location}}/{{delivery_pipeline}}/{{name}}`
///
///
/// When using the `pulumi import` command, Automation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/automation:Automation default projects/{{project}}/locations/{{location}}/deliveryPipelines/{{delivery_pipeline}}/automations/{{name}}
/// $ pulumi import gcp:clouddeploy/automation:Automation default {{project}}/{{location}}/{{delivery_pipeline}}/{{name}}
/// $ pulumi import gcp:clouddeploy/automation:Automation default {{location}}/{{delivery_pipeline}}/{{name}}
/// ```
class Automation extends pulumi.CustomResource {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Output only. Time at which the automation was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The deliveryPipeline for the resource
  late final pulumi.Output<String> deliveryPipeline;
  /// Optional. Description of the `Automation`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Name of the `Automation`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// Structure is documented below.
  late final pulumi.Output<List<AutomationRule>> rules;
  /// Required. Selected resources to which the automation will be applied.
  /// Structure is documented below.
  late final pulumi.Output<AutomationSelector> selector;
  /// Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  late final pulumi.Output<String> serviceAccount;
  /// Optional. When Suspended, automation is deactivated from execution.
  late final pulumi.Output<bool?> suspended;
  /// Output only. Unique identifier of the `Automation`.
  late final pulumi.Output<String> uid;
  /// Output only. Time at which the automation was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Automation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Automation]. {@macro pulumi_clouddeploy_automation_automation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Automation(
    String name, {
    AutomationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/automation:Automation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deliveryPipeline = registerOutput<String>('deliveryPipeline');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rules = registerOutput<List<AutomationRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomationRule>(guardedValue, (value) => AutomationRule.fromMap((value as Map).cast<String, dynamic>())); });
    selector = registerOutput<AutomationSelector>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String>('serviceAccount');
    suspended = registerOutput<bool?>('suspended');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Automation] resource's state with the given [name] and [id].
  static Automation get(
    String name,
    pulumi.Input<String> id, {
    AutomationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Automation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Automation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/automation:Automation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deliveryPipeline = registerOutput<String>('deliveryPipeline');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rules = registerOutput<List<AutomationRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomationRule>(guardedValue, (value) => AutomationRule.fromMap((value as Map).cast<String, dynamic>())); });
    selector = registerOutput<AutomationSelector>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String>('serviceAccount');
    suspended = registerOutput<bool?>('suspended');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Automation] resource.
  Automation.reference(String urn)
    : super(
        'gcp:clouddeploy/automation:Automation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deliveryPipeline = registerOutput<String>('deliveryPipeline');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rules = registerOutput<List<AutomationRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomationRule>(guardedValue, (value) => AutomationRule.fromMap((value as Map).cast<String, dynamic>())); });
    selector = registerOutput<AutomationSelector>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String>('serviceAccount');
    suspended = registerOutput<bool?>('suspended');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
