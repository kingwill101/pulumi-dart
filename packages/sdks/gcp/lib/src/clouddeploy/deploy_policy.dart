import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_args.dart';
import 'deploy_policy_rule.dart';
import 'deploy_policy_selector.dart';
import 'deploy_policy_state.dart';

/// A `DeployPolicy` inhibits manual or DeployPolicy-driven actions within a Delivery Pipeline or Target.
///
///
/// To get more information about DeployPolicy, see:
///
/// * [API documentation](https://cloud.google.com/deploy/docs/api/reference/rest/v1/projects.locations.deployPolicies)
/// * How-to Guides
/// * [Restrict deploy behavior using policies](https://cloud.google.com/deploy/docs/deploy-policy)
///
/// ## Example Usage
///
/// ### Clouddeploy Deploy Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const b_deploy_policy = new gcp.clouddeploy.DeployPolicy("b-deploy-policy", {
///     name: "cd-policy",
///     location: "us-central1",
///     selectors: [{
///         deliveryPipeline: {
///             id: "cd-pipeline",
///         },
///     }],
///     rules: [{
///         rolloutRestriction: {
///             id: "rule",
///             timeWindows: {
///                 timeZone: "America/Los_Angeles",
///                 weeklyWindows: [{
///                     startTime: {
///                         hours: 0,
///                         minutes: 0,
///                     },
///                     endTime: {
///                         hours: 24,
///                         minutes: 0,
///                     },
///                 }],
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// b_deploy_policy = gcp.clouddeploy.DeployPolicy("b-deploy-policy",
///     name="cd-policy",
///     location="us-central1",
///     selectors=[{
///         "delivery_pipeline": {
///             "id": "cd-pipeline",
///         },
///     }],
///     rules=[{
///         "rollout_restriction": {
///             "id": "rule",
///             "time_windows": {
///                 "time_zone": "America/Los_Angeles",
///                 "weekly_windows": [{
///                     "start_time": {
///                         "hours": 0,
///                         "minutes": 0,
///                     },
///                     "end_time": {
///                         "hours": 24,
///                         "minutes": 0,
///                     },
///                 }],
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var b_deploy_policy = new Gcp.CloudDeploy.DeployPolicy("b-deploy-policy", new()
///     {
///         Name = "cd-policy",
///         Location = "us-central1",
///         Selectors = new[]
///         {
///             new Gcp.CloudDeploy.Inputs.DeployPolicySelectorArgs
///             {
///                 DeliveryPipeline = new Gcp.CloudDeploy.Inputs.DeployPolicySelectorDeliveryPipelineArgs
///                 {
///                     Id = "cd-pipeline",
///                 },
///             },
///         },
///         Rules = new[]
///         {
///             new Gcp.CloudDeploy.Inputs.DeployPolicyRuleArgs
///             {
///                 RolloutRestriction = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionArgs
///                 {
///                     Id = "rule",
///                     TimeWindows = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs
///                     {
///                         TimeZone = "America/Los_Angeles",
///                         WeeklyWindows = new[]
///                         {
///                             new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs
///                             {
///                                 StartTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs
///                                 {
///                                     Hours = 0,
///                                     Minutes = 0,
///                                 },
///                                 EndTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs
///                                 {
///                                     Hours = 24,
///                                     Minutes = 0,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewDeployPolicy(ctx, "b-deploy-policy", &clouddeploy.DeployPolicyArgs{
/// 			Name:     pulumi.String("cd-policy"),
/// 			Location: pulumi.String("us-central1"),
/// 			Selectors: clouddeploy.DeployPolicySelectorArray{
/// 				&clouddeploy.DeployPolicySelectorArgs{
/// 					DeliveryPipeline: &clouddeploy.DeployPolicySelectorDeliveryPipelineArgs{
/// 						Id: pulumi.String("cd-pipeline"),
/// 					},
/// 				},
/// 			},
/// 			Rules: clouddeploy.DeployPolicyRuleArray{
/// 				&clouddeploy.DeployPolicyRuleArgs{
/// 					RolloutRestriction: &clouddeploy.DeployPolicyRuleRolloutRestrictionArgs{
/// 						Id: pulumi.String("rule"),
/// 						TimeWindows: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs{
/// 							TimeZone: pulumi.String("America/Los_Angeles"),
/// 							WeeklyWindows: clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArray{
/// 								&clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs{
/// 									StartTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs{
/// 										Hours:   pulumi.Int(0),
/// 										Minutes: pulumi.Int(0),
/// 									},
/// 									EndTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs{
/// 										Hours:   pulumi.Int(24),
/// 										Minutes: pulumi.Int(0),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.DeployPolicy;
/// import com.pulumi.gcp.clouddeploy.DeployPolicyArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicySelectorArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicySelectorDeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicyRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicyRuleRolloutRestrictionArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs;
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
///         var b_deploy_policy = new DeployPolicy("b-deploy-policy", DeployPolicyArgs.builder()
///             .name("cd-policy")
///             .location("us-central1")
///             .selectors(DeployPolicySelectorArgs.builder()
///                 .deliveryPipeline(DeployPolicySelectorDeliveryPipelineArgs.builder()
///                     .id("cd-pipeline")
///                     .build())
///                 .build())
///             .rules(DeployPolicyRuleArgs.builder()
///                 .rolloutRestriction(DeployPolicyRuleRolloutRestrictionArgs.builder()
///                     .id("rule")
///                     .timeWindows(DeployPolicyRuleRolloutRestrictionTimeWindowsArgs.builder()
///                         .timeZone("America/Los_Angeles")
///                         .weeklyWindows(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs.builder()
///                             .startTime(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs.builder()
///                                 .hours(0)
///                                 .minutes(0)
///                                 .build())
///                             .endTime(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs.builder()
///                                 .hours(24)
///                                 .minutes(0)
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
///   b-deploy-policy:
///     type: gcp:clouddeploy:DeployPolicy
///     properties:
///       name: cd-policy
///       location: us-central1
///       selectors:
///         - deliveryPipeline:
///             id: cd-pipeline
///       rules:
///         - rolloutRestriction:
///             id: rule
///             timeWindows:
///               timeZone: America/Los_Angeles
///               weeklyWindows:
///                 - startTime:
///                     hours: 0
///                     minutes: 0
///                   endTime:
///                     hours: '24'
///                     minutes: '00'
/// ```
///
/// ### Clouddeploy Deploy Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const f_deploy_policy = new gcp.clouddeploy.DeployPolicy("f-deploy-policy", {
///     name: "cd-policy",
///     location: "us-central1",
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
///     description: "policy resource",
///     selectors: [
///         {
///             deliveryPipeline: {
///                 id: "cd-pipeline",
///                 labels: {
///                     foo: "bar",
///                 },
///             },
///         },
///         {
///             target: {
///                 id: "dev",
///                 labels: {
///                     foo: "bar",
///                 },
///             },
///         },
///     ],
///     suspended: true,
///     rules: [
///         {
///             rolloutRestriction: {
///                 id: "rule",
///                 timeWindows: {
///                     timeZone: "America/Los_Angeles",
///                     weeklyWindows: [{
///                         startTime: {
///                             hours: 0,
///                             minutes: 0,
///                         },
///                         endTime: {
///                             hours: 13,
///                             minutes: 0,
///                         },
///                     }],
///                 },
///             },
///         },
///         {
///             rolloutRestriction: {
///                 id: "rule2",
///                 invokers: ["USER"],
///                 actions: ["CREATE"],
///                 timeWindows: {
///                     timeZone: "America/Los_Angeles",
///                     weeklyWindows: [{
///                         startTime: {
///                             hours: 13,
///                             minutes: 0,
///                         },
///                         endTime: {
///                             hours: 14,
///                             minutes: 0,
///                             seconds: 0,
///                             nanos: 0,
///                         },
///                         daysOfWeeks: ["MONDAY"],
///                     }],
///                     oneTimeWindows: [{
///                         startTime: {
///                             hours: 0,
///                             minutes: 0,
///                         },
///                         endTime: {
///                             hours: 16,
///                             minutes: 0,
///                         },
///                         startDate: {
///                             year: 2019,
///                             month: 1,
///                             day: 1,
///                         },
///                         endDate: {
///                             year: 2019,
///                             month: 12,
///                             day: 31,
///                         },
///                     }],
///                 },
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// f_deploy_policy = gcp.clouddeploy.DeployPolicy("f-deploy-policy",
///     name="cd-policy",
///     location="us-central1",
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     },
///     description="policy resource",
///     selectors=[
///         {
///             "delivery_pipeline": {
///                 "id": "cd-pipeline",
///                 "labels": {
///                     "foo": "bar",
///                 },
///             },
///         },
///         {
///             "target": {
///                 "id": "dev",
///                 "labels": {
///                     "foo": "bar",
///                 },
///             },
///         },
///     ],
///     suspended=True,
///     rules=[
///         {
///             "rollout_restriction": {
///                 "id": "rule",
///                 "time_windows": {
///                     "time_zone": "America/Los_Angeles",
///                     "weekly_windows": [{
///                         "start_time": {
///                             "hours": 0,
///                             "minutes": 0,
///                         },
///                         "end_time": {
///                             "hours": 13,
///                             "minutes": 0,
///                         },
///                     }],
///                 },
///             },
///         },
///         {
///             "rollout_restriction": {
///                 "id": "rule2",
///                 "invokers": ["USER"],
///                 "actions": ["CREATE"],
///                 "time_windows": {
///                     "time_zone": "America/Los_Angeles",
///                     "weekly_windows": [{
///                         "start_time": {
///                             "hours": 13,
///                             "minutes": 0,
///                         },
///                         "end_time": {
///                             "hours": 14,
///                             "minutes": 0,
///                             "seconds": 0,
///                             "nanos": 0,
///                         },
///                         "days_of_weeks": ["MONDAY"],
///                     }],
///                     "one_time_windows": [{
///                         "start_time": {
///                             "hours": 0,
///                             "minutes": 0,
///                         },
///                         "end_time": {
///                             "hours": 16,
///                             "minutes": 0,
///                         },
///                         "start_date": {
///                             "year": 2019,
///                             "month": 1,
///                             "day": 1,
///                         },
///                         "end_date": {
///                             "year": 2019,
///                             "month": 12,
///                             "day": 31,
///                         },
///                     }],
///                 },
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
///     var f_deploy_policy = new Gcp.CloudDeploy.DeployPolicy("f-deploy-policy", new()
///     {
///         Name = "cd-policy",
///         Location = "us-central1",
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
///         Description = "policy resource",
///         Selectors = new[]
///         {
///             new Gcp.CloudDeploy.Inputs.DeployPolicySelectorArgs
///             {
///                 DeliveryPipeline = new Gcp.CloudDeploy.Inputs.DeployPolicySelectorDeliveryPipelineArgs
///                 {
///                     Id = "cd-pipeline",
///                     Labels =
///                     {
///                         { "foo", "bar" },
///                     },
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.DeployPolicySelectorArgs
///             {
///                 Target = new Gcp.CloudDeploy.Inputs.DeployPolicySelectorTargetArgs
///                 {
///                     Id = "dev",
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
///             new Gcp.CloudDeploy.Inputs.DeployPolicyRuleArgs
///             {
///                 RolloutRestriction = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionArgs
///                 {
///                     Id = "rule",
///                     TimeWindows = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs
///                     {
///                         TimeZone = "America/Los_Angeles",
///                         WeeklyWindows = new[]
///                         {
///                             new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs
///                             {
///                                 StartTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs
///                                 {
///                                     Hours = 0,
///                                     Minutes = 0,
///                                 },
///                                 EndTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs
///                                 {
///                                     Hours = 13,
///                                     Minutes = 0,
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudDeploy.Inputs.DeployPolicyRuleArgs
///             {
///                 RolloutRestriction = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionArgs
///                 {
///                     Id = "rule2",
///                     Invokers = new[]
///                     {
///                         "USER",
///                     },
///                     Actions = new[]
///                     {
///                         "CREATE",
///                     },
///                     TimeWindows = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs
///                     {
///                         TimeZone = "America/Los_Angeles",
///                         WeeklyWindows = new[]
///                         {
///                             new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs
///                             {
///                                 StartTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs
///                                 {
///                                     Hours = 13,
///                                     Minutes = 0,
///                                 },
///                                 EndTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs
///                                 {
///                                     Hours = 14,
///                                     Minutes = 0,
///                                     Seconds = 0,
///                                     Nanos = 0,
///                                 },
///                                 DaysOfWeeks = new[]
///                                 {
///                                     "MONDAY",
///                                 },
///                             },
///                         },
///                         OneTimeWindows = new[]
///                         {
///                             new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowArgs
///                             {
///                                 StartTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTimeArgs
///                                 {
///                                     Hours = 0,
///                                     Minutes = 0,
///                                 },
///                                 EndTime = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTimeArgs
///                                 {
///                                     Hours = 16,
///                                     Minutes = 0,
///                                 },
///                                 StartDate = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDateArgs
///                                 {
///                                     Year = 2019,
///                                     Month = 1,
///                                     Day = 1,
///                                 },
///                                 EndDate = new Gcp.CloudDeploy.Inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDateArgs
///                                 {
///                                     Year = 2019,
///                                     Month = 12,
///                                     Day = 31,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewDeployPolicy(ctx, "f-deploy-policy", &clouddeploy.DeployPolicyArgs{
/// 			Name:     pulumi.String("cd-policy"),
/// 			Location: pulumi.String("us-central1"),
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 			Description: pulumi.String("policy resource"),
/// 			Selectors: clouddeploy.DeployPolicySelectorArray{
/// 				&clouddeploy.DeployPolicySelectorArgs{
/// 					DeliveryPipeline: &clouddeploy.DeployPolicySelectorDeliveryPipelineArgs{
/// 						Id: pulumi.String("cd-pipeline"),
/// 						Labels: pulumi.StringMap{
/// 							"foo": pulumi.String("bar"),
/// 						},
/// 					},
/// 				},
/// 				&clouddeploy.DeployPolicySelectorArgs{
/// 					Target: &clouddeploy.DeployPolicySelectorTargetArgs{
/// 						Id: pulumi.String("dev"),
/// 						Labels: pulumi.StringMap{
/// 							"foo": pulumi.String("bar"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Suspended: pulumi.Bool(true),
/// 			Rules: clouddeploy.DeployPolicyRuleArray{
/// 				&clouddeploy.DeployPolicyRuleArgs{
/// 					RolloutRestriction: &clouddeploy.DeployPolicyRuleRolloutRestrictionArgs{
/// 						Id: pulumi.String("rule"),
/// 						TimeWindows: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs{
/// 							TimeZone: pulumi.String("America/Los_Angeles"),
/// 							WeeklyWindows: clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArray{
/// 								&clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs{
/// 									StartTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs{
/// 										Hours:   pulumi.Int(0),
/// 										Minutes: pulumi.Int(0),
/// 									},
/// 									EndTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs{
/// 										Hours:   pulumi.Int(13),
/// 										Minutes: pulumi.Int(0),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&clouddeploy.DeployPolicyRuleArgs{
/// 					RolloutRestriction: &clouddeploy.DeployPolicyRuleRolloutRestrictionArgs{
/// 						Id: pulumi.String("rule2"),
/// 						Invokers: pulumi.StringArray{
/// 							pulumi.String("USER"),
/// 						},
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("CREATE"),
/// 						},
/// 						TimeWindows: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs{
/// 							TimeZone: pulumi.String("America/Los_Angeles"),
/// 							WeeklyWindows: clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArray{
/// 								&clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs{
/// 									StartTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs{
/// 										Hours:   pulumi.Int(13),
/// 										Minutes: pulumi.Int(0),
/// 									},
/// 									EndTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs{
/// 										Hours:   pulumi.Int(14),
/// 										Minutes: pulumi.Int(0),
/// 										Seconds: pulumi.Int(0),
/// 										Nanos:   pulumi.Int(0),
/// 									},
/// 									DaysOfWeeks: pulumi.StringArray{
/// 										pulumi.String("MONDAY"),
/// 									},
/// 								},
/// 							},
/// 							OneTimeWindows: clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowArray{
/// 								&clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowArgs{
/// 									StartTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTimeArgs{
/// 										Hours:   pulumi.Int(0),
/// 										Minutes: pulumi.Int(0),
/// 									},
/// 									EndTime: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTimeArgs{
/// 										Hours:   pulumi.Int(16),
/// 										Minutes: pulumi.Int(0),
/// 									},
/// 									StartDate: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDateArgs{
/// 										Year:  pulumi.Int(2019),
/// 										Month: pulumi.Int(1),
/// 										Day:   pulumi.Int(1),
/// 									},
/// 									EndDate: &clouddeploy.DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDateArgs{
/// 										Year:  pulumi.Int(2019),
/// 										Month: pulumi.Int(12),
/// 										Day:   pulumi.Int(31),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.DeployPolicy;
/// import com.pulumi.gcp.clouddeploy.DeployPolicyArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicySelectorArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicySelectorDeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicySelectorTargetArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicyRuleArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicyRuleRolloutRestrictionArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeployPolicyRuleRolloutRestrictionTimeWindowsArgs;
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
///         var f_deploy_policy = new DeployPolicy("f-deploy-policy", DeployPolicyArgs.builder()
///             .name("cd-policy")
///             .location("us-central1")
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .description("policy resource")
///             .selectors(
///                 DeployPolicySelectorArgs.builder()
///                     .deliveryPipeline(DeployPolicySelectorDeliveryPipelineArgs.builder()
///                         .id("cd-pipeline")
///                         .labels(Map.of("foo", "bar"))
///                         .build())
///                     .build(),
///                 DeployPolicySelectorArgs.builder()
///                     .target(DeployPolicySelectorTargetArgs.builder()
///                         .id("dev")
///                         .labels(Map.of("foo", "bar"))
///                         .build())
///                     .build())
///             .suspended(true)
///             .rules(
///                 DeployPolicyRuleArgs.builder()
///                     .rolloutRestriction(DeployPolicyRuleRolloutRestrictionArgs.builder()
///                         .id("rule")
///                         .timeWindows(DeployPolicyRuleRolloutRestrictionTimeWindowsArgs.builder()
///                             .timeZone("America/Los_Angeles")
///                             .weeklyWindows(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs.builder()
///                                 .startTime(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs.builder()
///                                     .hours(0)
///                                     .minutes(0)
///                                     .build())
///                                 .endTime(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs.builder()
///                                     .hours(13)
///                                     .minutes(0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 DeployPolicyRuleArgs.builder()
///                     .rolloutRestriction(DeployPolicyRuleRolloutRestrictionArgs.builder()
///                         .id("rule2")
///                         .invokers("USER")
///                         .actions("CREATE")
///                         .timeWindows(DeployPolicyRuleRolloutRestrictionTimeWindowsArgs.builder()
///                             .timeZone("America/Los_Angeles")
///                             .weeklyWindows(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowArgs.builder()
///                                 .startTime(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTimeArgs.builder()
///                                     .hours(13)
///                                     .minutes(0)
///                                     .build())
///                                 .endTime(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTimeArgs.builder()
///                                     .hours(14)
///                                     .minutes(0)
///                                     .seconds(0)
///                                     .nanos(0)
///                                     .build())
///                                 .daysOfWeeks("MONDAY")
///                                 .build())
///                             .oneTimeWindows(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowArgs.builder()
///                                 .startTime(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTimeArgs.builder()
///                                     .hours(0)
///                                     .minutes(0)
///                                     .build())
///                                 .endTime(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTimeArgs.builder()
///                                     .hours(16)
///                                     .minutes(0)
///                                     .build())
///                                 .startDate(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDateArgs.builder()
///                                     .year(2019)
///                                     .month(1)
///                                     .day(1)
///                                     .build())
///                                 .endDate(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDateArgs.builder()
///                                     .year(2019)
///                                     .month(12)
///                                     .day(31)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   f-deploy-policy:
///     type: gcp:clouddeploy:DeployPolicy
///     properties:
///       name: cd-policy
///       location: us-central1
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
///       description: policy resource
///       selectors:
///         - deliveryPipeline:
///             id: cd-pipeline
///             labels:
///               foo: bar
///         - target:
///             id: dev
///             labels:
///               foo: bar
///       suspended: true
///       rules:
///         - rolloutRestriction:
///             id: rule
///             timeWindows:
///               timeZone: America/Los_Angeles
///               weeklyWindows:
///                 - startTime:
///                     hours: 0
///                     minutes: 0
///                   endTime:
///                     hours: '13'
///                     minutes: '00'
///         - rolloutRestriction:
///             id: rule2
///             invokers:
///               - USER
///             actions:
///               - CREATE
///             timeWindows:
///               timeZone: America/Los_Angeles
///               weeklyWindows:
///                 - startTime:
///                     hours: '13'
///                     minutes: '00'
///                   endTime:
///                     hours: '14'
///                     minutes: '00'
///                     seconds: '00'
///                     nanos: '00'
///                   daysOfWeeks:
///                     - MONDAY
///               oneTimeWindows:
///                 - startTime:
///                     hours: '00'
///                     minutes: '00'
///                   endTime:
///                     hours: '16'
///                     minutes: '00'
///                   startDate:
///                     year: '2019'
///                     month: '01'
///                     day: '01'
///                   endDate:
///                     year: '2019'
///                     month: '12'
///                     day: '31'
/// ```
///
///
/// ## Import
///
/// DeployPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/deployPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DeployPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deployPolicy:DeployPolicy default projects/{{project}}/locations/{{location}}/deployPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deployPolicy:DeployPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deployPolicy:DeployPolicy default {{location}}/{{name}}
/// ```
class DeployPolicy extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Output only. Time at which the DeployPolicy was created.
  late final pulumi.Output<String> createTime;
  /// Description of the `DeployPolicy`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The weak etag of the `DeployPolicy` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Name of the `DeployPolicy`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Rules to apply. At least one rule must be present.
  /// Structure is documented below.
  late final pulumi.Output<List<DeployPolicyRule>> rules;
  /// Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  /// Structure is documented below.
  late final pulumi.Output<List<DeployPolicySelector>> selectors;
  /// When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  late final pulumi.Output<bool?> suspended;
  /// Output only. Unique identifier of the `DeployPolicy`.
  late final pulumi.Output<String> uid;
  /// Output only. Time at which the DeployPolicy was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DeployPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeployPolicy]. {@macro pulumi_clouddeploy_deploy_policy_deploy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeployPolicy(
    String name, {
    DeployPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deployPolicy:DeployPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<DeployPolicyRule>>('rules');
    this.selectors = registerOutput<List<DeployPolicySelector>>('selectors');
    this.suspended = registerOutput<bool?>('suspended');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DeployPolicy] resource's state with the given [name] and [id].
  static DeployPolicy get(
    String name,
    pulumi.Input<String> id, {
    DeployPolicyState? state,
  }) {
    return DeployPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeployPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deployPolicy:DeployPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<DeployPolicyRule>>('rules');
    this.selectors = registerOutput<List<DeployPolicySelector>>('selectors');
    this.suspended = registerOutput<bool?>('suspended');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
