import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_v2_action.dart';
import 'scheduled_query_rules_alert_v2_args.dart';
import 'scheduled_query_rules_alert_v2_identity.dart';
import 'scheduled_query_rules_alert_v2_state.dart';

/// Manages an AlertingAction Scheduled Query Rules Version 2 resource within Azure Monitor
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example-ai",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "example-mag",
///     resourceGroupName: example.name,
///     shortName: "test mag",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-uai",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleInsights.id,
///     roleDefinitionName: "Reader",
///     principalId: exampleUserAssignedIdentity.principalId,
/// });
/// const exampleScheduledQueryRulesAlertV2 = new azure.monitoring.ScheduledQueryRulesAlertV2("example", {
///     name: "example-msqrv2",
///     resourceGroupName: example.name,
///     location: example.location,
///     evaluationFrequency: "PT10M",
///     windowDuration: "PT10M",
///     scopes: exampleInsights.id,
///     severity: 4,
///     criterias: [{
///         query: `requests
///   | summarize CountByCountry=count() by client_CountryOrRegion
/// `,
///         timeAggregationMethod: "Maximum",
///         threshold: 17.5,
///         operator: "LessThan",
///         resourceIdColumn: "client_CountryOrRegion",
///         metricMeasureColumn: "CountByCountry",
///         dimensions: [{
///             name: "client_CountryOrRegion",
///             operator: "Exclude",
///             values: ["123"],
///         }],
///         failingPeriods: {
///             minimumFailingPeriodsToTriggerAlert: 1,
///             numberOfEvaluationPeriods: 1,
///         },
///     }],
///     autoMitigationEnabled: true,
///     workspaceAlertsStorageEnabled: false,
///     description: "example sqr",
///     displayName: "example-sqr",
///     enabled: true,
///     queryTimeRangeOverride: "PT1H",
///     skipQueryValidation: true,
///     action: {
///         actionGroups: [exampleActionGroup.id],
///         customProperties: {
///             key: "value",
///             key2: "value2",
///         },
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     tags: {
///         key: "value",
///         key2: "value2",
///     },
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="example-ai",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="example-mag",
///     resource_group_name=example.name,
///     short_name="test mag")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-uai",
///     location=example.location,
///     resource_group_name=example.name)
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_insights.id,
///     role_definition_name="Reader",
///     principal_id=example_user_assigned_identity.principal_id)
/// example_scheduled_query_rules_alert_v2 = azure.monitoring.ScheduledQueryRulesAlertV2("example",
///     name="example-msqrv2",
///     resource_group_name=example.name,
///     location=example.location,
///     evaluation_frequency="PT10M",
///     window_duration="PT10M",
///     scopes=example_insights.id,
///     severity=4,
///     criterias=[{
///         "query": """requests
///   | summarize CountByCountry=count() by client_CountryOrRegion
/// """,
///         "time_aggregation_method": "Maximum",
///         "threshold": 17.5,
///         "operator": "LessThan",
///         "resource_id_column": "client_CountryOrRegion",
///         "metric_measure_column": "CountByCountry",
///         "dimensions": [{
///             "name": "client_CountryOrRegion",
///             "operator": "Exclude",
///             "values": ["123"],
///         }],
///         "failing_periods": {
///             "minimum_failing_periods_to_trigger_alert": 1,
///             "number_of_evaluation_periods": 1,
///         },
///     }],
///     auto_mitigation_enabled=True,
///     workspace_alerts_storage_enabled=False,
///     description="example sqr",
///     display_name="example-sqr",
///     enabled=True,
///     query_time_range_override="PT1H",
///     skip_query_validation=True,
///     action={
///         "action_groups": [example_action_group.id],
///         "custom_properties": {
///             "key": "value",
///             "key2": "value2",
///         },
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     tags={
///         "key": "value",
///         "key2": "value2",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example-ai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleActionGroup = new Azure.Monitoring.ActionGroup("example", new()
///     {
///         Name = "example-mag",
///         ResourceGroupName = example.Name,
///         ShortName = "test mag",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-uai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleInsights.Id,
///         RoleDefinitionName = "Reader",
///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
///     });
///
///     var exampleScheduledQueryRulesAlertV2 = new Azure.Monitoring.ScheduledQueryRulesAlertV2("example", new()
///     {
///         Name = "example-msqrv2",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         EvaluationFrequency = "PT10M",
///         WindowDuration = "PT10M",
///         Scopes = exampleInsights.Id,
///         Severity = 4,
///         Criterias = new[]
///         {
///             new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertV2CriteriaArgs
///             {
///                 Query = @"requests
///   | summarize CountByCountry=count() by client_CountryOrRegion
/// ",
///                 TimeAggregationMethod = "Maximum",
///                 Threshold = 17.5,
///                 Operator = "LessThan",
///                 ResourceIdColumn = "client_CountryOrRegion",
///                 MetricMeasureColumn = "CountByCountry",
///                 Dimensions = new[]
///                 {
///                     new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertV2CriteriaDimensionArgs
///                     {
///                         Name = "client_CountryOrRegion",
///                         Operator = "Exclude",
///                         Values = new[]
///                         {
///                             "123",
///                         },
///                     },
///                 },
///                 FailingPeriods = new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertV2CriteriaFailingPeriodsArgs
///                 {
///                     MinimumFailingPeriodsToTriggerAlert = 1,
///                     NumberOfEvaluationPeriods = 1,
///                 },
///             },
///         },
///         AutoMitigationEnabled = true,
///         WorkspaceAlertsStorageEnabled = false,
///         Description = "example sqr",
///         DisplayName = "example-sqr",
///         Enabled = true,
///         QueryTimeRangeOverride = "PT1H",
///         SkipQueryValidation = true,
///         Action = new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertV2ActionArgs
///         {
///             ActionGroups = new[]
///             {
///                 exampleActionGroup.Id,
///             },
///             CustomProperties =
///             {
///                 { "key", "value" },
///                 { "key2", "value2" },
///             },
///         },
///         Identity = new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertV2IdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         Tags =
///         {
///             { "key", "value" },
///             { "key2", "value2" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example-ai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleActionGroup, err := monitoring.NewActionGroup(ctx, "example", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("example-mag"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("test mag"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-uai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleInsights.ID(),
/// 			RoleDefinitionName: pulumi.String("Reader"),
/// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewScheduledQueryRulesAlertV2(ctx, "example", &monitoring.ScheduledQueryRulesAlertV2Args{
/// 			Name:                pulumi.String("example-msqrv2"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			EvaluationFrequency: pulumi.String("PT10M"),
/// 			WindowDuration:      pulumi.String("PT10M"),
/// 			Scopes:              exampleInsights.ID(),
/// 			Severity:            pulumi.Int(4),
/// 			Criterias: monitoring.ScheduledQueryRulesAlertV2CriteriaArray{
/// 				&monitoring.ScheduledQueryRulesAlertV2CriteriaArgs{
/// 					Query:                 pulumi.String("requests\n  | summarize CountByCountry=count() by client_CountryOrRegion\n"),
/// 					TimeAggregationMethod: pulumi.String("Maximum"),
/// 					Threshold:             pulumi.Float64(17.5),
/// 					Operator:              pulumi.String("LessThan"),
/// 					ResourceIdColumn:      pulumi.String("client_CountryOrRegion"),
/// 					MetricMeasureColumn:   pulumi.String("CountByCountry"),
/// 					Dimensions: monitoring.ScheduledQueryRulesAlertV2CriteriaDimensionArray{
/// 						&monitoring.ScheduledQueryRulesAlertV2CriteriaDimensionArgs{
/// 							Name:     pulumi.String("client_CountryOrRegion"),
/// 							Operator: pulumi.String("Exclude"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("123"),
/// 							},
/// 						},
/// 					},
/// 					FailingPeriods: &monitoring.ScheduledQueryRulesAlertV2CriteriaFailingPeriodsArgs{
/// 						MinimumFailingPeriodsToTriggerAlert: pulumi.Int(1),
/// 						NumberOfEvaluationPeriods:           pulumi.Int(1),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigationEnabled:         pulumi.Bool(true),
/// 			WorkspaceAlertsStorageEnabled: pulumi.Bool(false),
/// 			Description:                   pulumi.String("example sqr"),
/// 			DisplayName:                   pulumi.String("example-sqr"),
/// 			Enabled:                       pulumi.Bool(true),
/// 			QueryTimeRangeOverride:        pulumi.String("PT1H"),
/// 			SkipQueryValidation:           pulumi.Bool(true),
/// 			Action: &monitoring.ScheduledQueryRulesAlertV2ActionArgs{
/// 				ActionGroups: pulumi.StringArray{
/// 					exampleActionGroup.ID(),
/// 				},
/// 				CustomProperties: pulumi.StringMap{
/// 					"key":  pulumi.String("value"),
/// 					"key2": pulumi.String("value2"),
/// 				},
/// 			},
/// 			Identity: &monitoring.ScheduledQueryRulesAlertV2IdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key":  pulumi.String("value"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 		}))
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.monitoring.ScheduledQueryRulesAlertV2;
/// import com.pulumi.azure.monitoring.ScheduledQueryRulesAlertV2Args;
/// import com.pulumi.azure.monitoring.inputs.ScheduledQueryRulesAlertV2CriteriaArgs;
/// import com.pulumi.azure.monitoring.inputs.ScheduledQueryRulesAlertV2CriteriaFailingPeriodsArgs;
/// import com.pulumi.azure.monitoring.inputs.ScheduledQueryRulesAlertV2ActionArgs;
/// import com.pulumi.azure.monitoring.inputs.ScheduledQueryRulesAlertV2IdentityArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-ai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleActionGroup = new ActionGroup("exampleActionGroup", ActionGroupArgs.builder()
///             .name("example-mag")
///             .resourceGroupName(example.name())
///             .shortName("test mag")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleInsights.id())
///             .roleDefinitionName("Reader")
///             .principalId(exampleUserAssignedIdentity.principalId())
///             .build());
///
///         var exampleScheduledQueryRulesAlertV2 = new ScheduledQueryRulesAlertV2("exampleScheduledQueryRulesAlertV2", ScheduledQueryRulesAlertV2Args.builder()
///             .name("example-msqrv2")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .evaluationFrequency("PT10M")
///             .windowDuration("PT10M")
///             .scopes(exampleInsights.id())
///             .severity(4)
///             .criterias(ScheduledQueryRulesAlertV2CriteriaArgs.builder()
///                 .query("""
/// requests
///   | summarize CountByCountry=count() by client_CountryOrRegion
///                 """)
///                 .timeAggregationMethod("Maximum")
///                 .threshold(17.5)
///                 .operator("LessThan")
///                 .resourceIdColumn("client_CountryOrRegion")
///                 .metricMeasureColumn("CountByCountry")
///                 .dimensions(ScheduledQueryRulesAlertV2CriteriaDimensionArgs.builder()
///                     .name("client_CountryOrRegion")
///                     .operator("Exclude")
///                     .values("123")
///                     .build())
///                 .failingPeriods(ScheduledQueryRulesAlertV2CriteriaFailingPeriodsArgs.builder()
///                     .minimumFailingPeriodsToTriggerAlert(1)
///                     .numberOfEvaluationPeriods(1)
///                     .build())
///                 .build())
///             .autoMitigationEnabled(true)
///             .workspaceAlertsStorageEnabled(false)
///             .description("example sqr")
///             .displayName("example-sqr")
///             .enabled(true)
///             .queryTimeRangeOverride("PT1H")
///             .skipQueryValidation(true)
///             .action(ScheduledQueryRulesAlertV2ActionArgs.builder()
///                 .actionGroups(exampleActionGroup.id())
///                 .customProperties(Map.ofEntries(
///                     Map.entry("key", "value"),
///                     Map.entry("key2", "value2")
///                 ))
///                 .build())
///             .identity(ScheduledQueryRulesAlertV2IdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key", "value"),
///                 Map.entry("key2", "value2")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-ai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleActionGroup:
///     type: azure:monitoring:ActionGroup
///     name: example
///     properties:
///       name: example-mag
///       resourceGroupName: ${example.name}
///       shortName: test mag
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example-uai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleInsights.id}
///       roleDefinitionName: Reader
///       principalId: ${exampleUserAssignedIdentity.principalId}
///   exampleScheduledQueryRulesAlertV2:
///     type: azure:monitoring:ScheduledQueryRulesAlertV2
///     name: example
///     properties:
///       name: example-msqrv2
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       evaluationFrequency: PT10M
///       windowDuration: PT10M
///       scopes: ${exampleInsights.id}
///       severity: 4
///       criterias:
///         - query: |
///             requests
///               | summarize CountByCountry=count() by client_CountryOrRegion
///           timeAggregationMethod: Maximum
///           threshold: 17.5
///           operator: LessThan
///           resourceIdColumn: client_CountryOrRegion
///           metricMeasureColumn: CountByCountry
///           dimensions:
///             - name: client_CountryOrRegion
///               operator: Exclude
///               values:
///                 - '123'
///           failingPeriods:
///             minimumFailingPeriodsToTriggerAlert: 1
///             numberOfEvaluationPeriods: 1
///       autoMitigationEnabled: true
///       workspaceAlertsStorageEnabled: false
///       description: example sqr
///       displayName: example-sqr
///       enabled: true
///       queryTimeRangeOverride: PT1H
///       skipQueryValidation: true
///       action:
///         actionGroups:
///           - ${exampleActionGroup.id}
///         customProperties:
///           key: value
///           key2: value2
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       tags:
///         key: value
///         key2: value2
///     options:
///       dependsOn:
///         - ${exampleAssignment}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2023-03-15-preview
///
/// ## Import
///
/// Monitor Scheduled Query Rule Alert can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/scheduledQueryRulesAlertV2:ScheduledQueryRulesAlertV2 example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Insights/scheduledQueryRules/rule1
/// ```
class ScheduledQueryRulesAlertV2 extends pulumi.CustomResource {
  /// An `action` block as defined below.
  late final pulumi.Output<ScheduledQueryRulesAlertV2Action?> action;

  /// Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be `true` or `false`. The default is `false`.
  late final pulumi.Output<bool?> autoMitigationEnabled;

  /// The api-version used when creating this alert rule.
  late final pulumi.Output<String> createdWithApiVersion;

  /// A `criteria` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> criterias;

  /// Specifies the description of the scheduled query rule.
  late final pulumi.Output<String?> description;

  /// Specifies the display name of the alert rule.
  late final pulumi.Output<String?> displayName;

  /// Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`.
  ///
  /// &gt; **Note:** `evaluation_frequency` cannot be greater than the query look back which is `window_duration`*`number_of_evaluation_periods`.
  ///
  /// &gt; **Note:** `evaluation_frequency` cannot be greater than the `mute_actions_after_alert_duration`.
  late final pulumi.Output<String> evaluationFrequency;

  /// An `identity` block as defined below.
  late final pulumi.Output<ScheduledQueryRulesAlertV2Identity?> identity;

  /// True if this alert rule is a legacy Log Analytic Rule.
  late final pulumi.Output<bool> isALegacyLogAnalyticsRule;

  /// The flag indicates whether this Scheduled Query Rule has been configured to be stored in the customer's storage.
  late final pulumi.Output<bool> isWorkspaceAlertsStorageConfigured;

  /// Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  ///
  /// &gt; **Note:** `auto_mitigation_enabled` and `mute_actions_after_alert_duration` are mutually exclusive and cannot both be set.
  late final pulumi.Output<String?> muteActionsAfterAlertDuration;

  /// Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Set this if the alert evaluation period is different from the query time range. If not specified, the value is `window_duration`*`number_of_evaluation_periods`. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  ///
  /// &gt; **Note:** `query_time_range_override` cannot be less than the query look back which is `window_duration`*`number_of_evaluation_periods`.
  late final pulumi.Output<String?> queryTimeRangeOverride;

  /// Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list.
  late final pulumi.Output<String> scopes;

  /// Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest.
  late final pulumi.Output<int> severity;

  /// Specifies the flag which indicates whether the provided query should be validated or not. The default is false.
  late final pulumi.Output<bool?> skipQueryValidation;

  /// A mapping of tags which should be assigned to the Monitor Scheduled Query Rule.
  late final pulumi.Output<Map<String, String>?> tags;

  /// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is `Microsoft.Compute/virtualMachines`, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria.
  late final pulumi.Output<List<String>?> targetResourceTypes;

  /// Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If `evaluation_frequency` is `PT1M`, possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, and `PT6H`. Otherwise, possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, and `P2D`.
  late final pulumi.Output<String> windowDuration;

  /// Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be `true` or `false`. The default is `false`.
  late final pulumi.Output<bool?> workspaceAlertsStorageEnabled;

  /// Creates a new [ScheduledQueryRulesAlertV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledQueryRulesAlertV2]. {@macro pulumi_monitoring_scheduled_query_rules_alert_v2_scheduled_query_rules_alert_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledQueryRulesAlertV2(
    String name, {
    ScheduledQueryRulesAlertV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:monitoring/scheduledQueryRulesAlertV2:ScheduledQueryRulesAlertV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<ScheduledQueryRulesAlertV2Action?>('action');
    autoMitigationEnabled = registerOutput<bool?>('autoMitigationEnabled');
    createdWithApiVersion = registerOutput<String>('createdWithApiVersion');
    criterias = registerOutput<List<Map<String, dynamic>>>('criterias');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    evaluationFrequency = registerOutput<String>('evaluationFrequency');
    identity = registerOutput<ScheduledQueryRulesAlertV2Identity?>('identity');
    isALegacyLogAnalyticsRule = registerOutput<bool>(
      'isALegacyLogAnalyticsRule',
    );
    isWorkspaceAlertsStorageConfigured = registerOutput<bool>(
      'isWorkspaceAlertsStorageConfigured',
    );
    location = registerOutput<String>('location');
    muteActionsAfterAlertDuration = registerOutput<String?>(
      'muteActionsAfterAlertDuration',
    );
    this.name = registerOutput<String>('name');
    queryTimeRangeOverride = registerOutput<String?>('queryTimeRangeOverride');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<String>('scopes');
    severity = registerOutput<int>('severity');
    skipQueryValidation = registerOutput<bool?>('skipQueryValidation');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceTypes = registerOutput<List<String>?>('targetResourceTypes');
    windowDuration = registerOutput<String>('windowDuration');
    workspaceAlertsStorageEnabled = registerOutput<bool?>(
      'workspaceAlertsStorageEnabled',
    );
  }

  /// Gets an existing [ScheduledQueryRulesAlertV2] resource's state with the given [name] and [id].
  static ScheduledQueryRulesAlertV2 get(
    String name,
    pulumi.Input<String> id, {
    ScheduledQueryRulesAlertV2State? state,
  }) {
    return ScheduledQueryRulesAlertV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScheduledQueryRulesAlertV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:monitoring/scheduledQueryRulesAlertV2:ScheduledQueryRulesAlertV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<ScheduledQueryRulesAlertV2Action?>('action');
    autoMitigationEnabled = registerOutput<bool?>('autoMitigationEnabled');
    createdWithApiVersion = registerOutput<String>('createdWithApiVersion');
    criterias = registerOutput<List<Map<String, dynamic>>>('criterias');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    evaluationFrequency = registerOutput<String>('evaluationFrequency');
    identity = registerOutput<ScheduledQueryRulesAlertV2Identity?>('identity');
    isALegacyLogAnalyticsRule = registerOutput<bool>(
      'isALegacyLogAnalyticsRule',
    );
    isWorkspaceAlertsStorageConfigured = registerOutput<bool>(
      'isWorkspaceAlertsStorageConfigured',
    );
    location = registerOutput<String>('location');
    muteActionsAfterAlertDuration = registerOutput<String?>(
      'muteActionsAfterAlertDuration',
    );
    this.name = registerOutput<String>('name');
    queryTimeRangeOverride = registerOutput<String?>('queryTimeRangeOverride');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<String>('scopes');
    severity = registerOutput<int>('severity');
    skipQueryValidation = registerOutput<bool?>('skipQueryValidation');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceTypes = registerOutput<List<String>?>('targetResourceTypes');
    windowDuration = registerOutput<String>('windowDuration');
    workspaceAlertsStorageEnabled = registerOutput<bool?>(
      'workspaceAlertsStorageEnabled',
    );
  }
}
