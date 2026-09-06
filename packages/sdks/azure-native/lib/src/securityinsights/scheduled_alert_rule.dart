import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_details_override_response.dart';
import 'entity_mapping_response.dart';
import 'event_grouping_settings_response.dart';
import 'incident_configuration_response.dart';
import 'scheduled_alert_rule_args.dart';
import 'system_data_response.dart';

/// Represents scheduled alert rule.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a Fusion alert rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledAlertRule = new AzureNative.SecurityInsights.ScheduledAlertRule("scheduledAlertRule", new()
///     {
///         ResourceGroupName = "myRg",
///         RuleId = "myFirstFusionRule",
///         WorkspaceName = "myWorkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewScheduledAlertRule(ctx, "scheduledAlertRule", &securityinsights.ScheduledAlertRuleArgs{
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			RuleId:            pulumi.String("myFirstFusionRule"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_scheduledalertrule" "scheduledAlertRule" {
///   resource_group_name = "myRg"
///   rule_id             = "myFirstFusionRule"
///   workspace_name      = "myWorkspace"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.ScheduledAlertRule;
/// import com.pulumi.azurenative.securityinsights.ScheduledAlertRuleArgs;
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
///         var scheduledAlertRule = new ScheduledAlertRule("scheduledAlertRule", ScheduledAlertRuleArgs.builder()
///             .resourceGroupName("myRg")
///             .ruleId("myFirstFusionRule")
///             .workspaceName("myWorkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const scheduledAlertRule = new azure_native.securityinsights.ScheduledAlertRule("scheduledAlertRule", {
///     resourceGroupName: "myRg",
///     ruleId: "myFirstFusionRule",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_alert_rule = azure_native.securityinsights.ScheduledAlertRule("scheduledAlertRule",
///     resource_group_name="myRg",
///     rule_id="myFirstFusionRule",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledAlertRule:
///     type: azure-native:securityinsights:ScheduledAlertRule
///     properties:
///       resourceGroupName: myRg
///       ruleId: myFirstFusionRule
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a MicrosoftSecurityIncidentCreation rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledAlertRule = new AzureNative.SecurityInsights.ScheduledAlertRule("scheduledAlertRule", new()
///     {
///         ResourceGroupName = "myRg",
///         RuleId = "microsoftSecurityIncidentCreationRuleExample",
///         WorkspaceName = "myWorkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewScheduledAlertRule(ctx, "scheduledAlertRule", &securityinsights.ScheduledAlertRuleArgs{
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			RuleId:            pulumi.String("microsoftSecurityIncidentCreationRuleExample"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_scheduledalertrule" "scheduledAlertRule" {
///   resource_group_name = "myRg"
///   rule_id             = "microsoftSecurityIncidentCreationRuleExample"
///   workspace_name      = "myWorkspace"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.ScheduledAlertRule;
/// import com.pulumi.azurenative.securityinsights.ScheduledAlertRuleArgs;
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
///         var scheduledAlertRule = new ScheduledAlertRule("scheduledAlertRule", ScheduledAlertRuleArgs.builder()
///             .resourceGroupName("myRg")
///             .ruleId("microsoftSecurityIncidentCreationRuleExample")
///             .workspaceName("myWorkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const scheduledAlertRule = new azure_native.securityinsights.ScheduledAlertRule("scheduledAlertRule", {
///     resourceGroupName: "myRg",
///     ruleId: "microsoftSecurityIncidentCreationRuleExample",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_alert_rule = azure_native.securityinsights.ScheduledAlertRule("scheduledAlertRule",
///     resource_group_name="myRg",
///     rule_id="microsoftSecurityIncidentCreationRuleExample",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledAlertRule:
///     type: azure-native:securityinsights:ScheduledAlertRule
///     properties:
///       resourceGroupName: myRg
///       ruleId: microsoftSecurityIncidentCreationRuleExample
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a Scheduled alert rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledAlertRule = new AzureNative.SecurityInsights.ScheduledAlertRule("scheduledAlertRule", new()
///     {
///         AlertDetailsOverride = new AzureNative.SecurityInsights.Inputs.AlertDetailsOverrideArgs
///         {
///             AlertDescriptionFormat = "Suspicious activity was made by {{ComputerIP}}",
///             AlertDisplayNameFormat = "Alert from {{Computer}}",
///             AlertDynamicProperties = new[]
///             {
///                 new AzureNative.SecurityInsights.Inputs.AlertPropertyMappingArgs
///                 {
///                     AlertProperty = AzureNative.SecurityInsights.AlertProperty.ProductComponentName,
///                     Value = "ProductComponentNameCustomColumn",
///                 },
///                 new AzureNative.SecurityInsights.Inputs.AlertPropertyMappingArgs
///                 {
///                     AlertProperty = AzureNative.SecurityInsights.AlertProperty.ProductName,
///                     Value = "ProductNameCustomColumn",
///                 },
///                 new AzureNative.SecurityInsights.Inputs.AlertPropertyMappingArgs
///                 {
///                     AlertProperty = AzureNative.SecurityInsights.AlertProperty.AlertLink,
///                     Value = "Link",
///                 },
///             },
///         },
///         CustomDetails =
///         {
///             { "OperatingSystemName", "OSName" },
///             { "OperatingSystemType", "OSType" },
///         },
///         Description = "An example for a scheduled rule",
///         DisplayName = "My scheduled rule",
///         Enabled = true,
///         EntityMappings = new[]
///         {
///             new AzureNative.SecurityInsights.Inputs.EntityMappingArgs
///             {
///                 EntityType = AzureNative.SecurityInsights.EntityMappingType.Host,
///                 FieldMappings = new[]
///                 {
///                     new AzureNative.SecurityInsights.Inputs.FieldMappingArgs
///                     {
///                         ColumnName = "Computer",
///                         Identifier = "FullName",
///                     },
///                 },
///             },
///             new AzureNative.SecurityInsights.Inputs.EntityMappingArgs
///             {
///                 EntityType = AzureNative.SecurityInsights.EntityMappingType.IP,
///                 FieldMappings = new[]
///                 {
///                     new AzureNative.SecurityInsights.Inputs.FieldMappingArgs
///                     {
///                         ColumnName = "ComputerIP",
///                         Identifier = "Address",
///                     },
///                 },
///             },
///         },
///         EventGroupingSettings = new AzureNative.SecurityInsights.Inputs.EventGroupingSettingsArgs
///         {
///             AggregationKind = AzureNative.SecurityInsights.EventGroupingAggregationKind.AlertPerResult,
///         },
///         IncidentConfiguration = new AzureNative.SecurityInsights.Inputs.IncidentConfigurationArgs
///         {
///             CreateIncident = true,
///             GroupingConfiguration = new AzureNative.SecurityInsights.Inputs.GroupingConfigurationArgs
///             {
///                 Enabled = true,
///                 GroupByAlertDetails = new[]
///                 {
///                     AzureNative.SecurityInsights.AlertDetail.DisplayName,
///                 },
///                 GroupByCustomDetails = new[]
///                 {
///                     "OperatingSystemType",
///                     "OperatingSystemName",
///                 },
///                 GroupByEntities = new[]
///                 {
///                     AzureNative.SecurityInsights.EntityMappingType.Host,
///                 },
///                 LookbackDuration = "PT5H",
///                 MatchingMethod = AzureNative.SecurityInsights.MatchingMethod.Selected,
///                 ReopenClosedIncident = false,
///             },
///         },
///         Kind = "Scheduled",
///         Query = "Heartbeat",
///         QueryFrequency = "PT1H",
///         QueryPeriod = "P2DT1H30M",
///         ResourceGroupName = "myRg",
///         RuleId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         Severity = AzureNative.SecurityInsights.AlertSeverity.High,
///         SuppressionDuration = "PT1H",
///         SuppressionEnabled = false,
///         Tactics = new[]
///         {
///             AzureNative.SecurityInsights.AttackTactic.Persistence,
///             AzureNative.SecurityInsights.AttackTactic.LateralMovement,
///         },
///         TriggerOperator = AzureNative.SecurityInsights.TriggerOperator.GreaterThan,
///         TriggerThreshold = 0,
///         WorkspaceName = "myWorkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewScheduledAlertRule(ctx, "scheduledAlertRule", &securityinsights.ScheduledAlertRuleArgs{
/// 			AlertDetailsOverride: &securityinsights.AlertDetailsOverrideArgs{
/// 				AlertDescriptionFormat: pulumi.String("Suspicious activity was made by {{ComputerIP}}"),
/// 				AlertDisplayNameFormat: pulumi.String("Alert from {{Computer}}"),
/// 				AlertDynamicProperties: securityinsights.AlertPropertyMappingArray{
/// 					&securityinsights.AlertPropertyMappingArgs{
/// 						AlertProperty: pulumi.String(securityinsights.AlertPropertyProductComponentName),
/// 						Value:         pulumi.String("ProductComponentNameCustomColumn"),
/// 					},
/// 					&securityinsights.AlertPropertyMappingArgs{
/// 						AlertProperty: pulumi.String(securityinsights.AlertPropertyProductName),
/// 						Value:         pulumi.String("ProductNameCustomColumn"),
/// 					},
/// 					&securityinsights.AlertPropertyMappingArgs{
/// 						AlertProperty: pulumi.String(securityinsights.AlertPropertyAlertLink),
/// 						Value:         pulumi.String("Link"),
/// 					},
/// 				},
/// 			},
/// 			CustomDetails: pulumi.StringMap{
/// 				"OperatingSystemName": pulumi.String("OSName"),
/// 				"OperatingSystemType": pulumi.String("OSType"),
/// 			},
/// 			Description: pulumi.String("An example for a scheduled rule"),
/// 			DisplayName: pulumi.String("My scheduled rule"),
/// 			Enabled:     pulumi.Bool(true),
/// 			EntityMappings: securityinsights.EntityMappingArray{
/// 				&securityinsights.EntityMappingArgs{
/// 					EntityType: pulumi.String(securityinsights.EntityMappingTypeHost),
/// 					FieldMappings: securityinsights.FieldMappingArray{
/// 						&securityinsights.FieldMappingArgs{
/// 							ColumnName: pulumi.String("Computer"),
/// 							Identifier: pulumi.String("FullName"),
/// 						},
/// 					},
/// 				},
/// 				&securityinsights.EntityMappingArgs{
/// 					EntityType: pulumi.String(securityinsights.EntityMappingTypeIP),
/// 					FieldMappings: securityinsights.FieldMappingArray{
/// 						&securityinsights.FieldMappingArgs{
/// 							ColumnName: pulumi.String("ComputerIP"),
/// 							Identifier: pulumi.String("Address"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EventGroupingSettings: &securityinsights.EventGroupingSettingsArgs{
/// 				AggregationKind: pulumi.String(securityinsights.EventGroupingAggregationKindAlertPerResult),
/// 			},
/// 			IncidentConfiguration: &securityinsights.IncidentConfigurationArgs{
/// 				CreateIncident: pulumi.Bool(true),
/// 				GroupingConfiguration: &securityinsights.GroupingConfigurationArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					GroupByAlertDetails: pulumi.StringArray{
/// 						pulumi.String(securityinsights.AlertDetailDisplayName),
/// 					},
/// 					GroupByCustomDetails: pulumi.StringArray{
/// 						pulumi.String("OperatingSystemType"),
/// 						pulumi.String("OperatingSystemName"),
/// 					},
/// 					GroupByEntities: pulumi.StringArray{
/// 						pulumi.String(securityinsights.EntityMappingTypeHost),
/// 					},
/// 					LookbackDuration:     pulumi.String("PT5H"),
/// 					MatchingMethod:       pulumi.String(securityinsights.MatchingMethodSelected),
/// 					ReopenClosedIncident: pulumi.Bool(false),
/// 				},
/// 			},
/// 			Kind:                pulumi.String("Scheduled"),
/// 			Query:               pulumi.String("Heartbeat"),
/// 			QueryFrequency:      pulumi.String("PT1H"),
/// 			QueryPeriod:         pulumi.String("P2DT1H30M"),
/// 			ResourceGroupName:   pulumi.String("myRg"),
/// 			RuleId:              pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			Severity:            pulumi.String(securityinsights.AlertSeverityHigh),
/// 			SuppressionDuration: pulumi.String("PT1H"),
/// 			SuppressionEnabled:  pulumi.Bool(false),
/// 			Tactics: pulumi.StringArray{
/// 				pulumi.String(securityinsights.AttackTacticPersistence),
/// 				pulumi.String(securityinsights.AttackTacticLateralMovement),
/// 			},
/// 			TriggerOperator:  securityinsights.TriggerOperatorGreaterThan,
/// 			TriggerThreshold: pulumi.Int(0),
/// 			WorkspaceName:    pulumi.String("myWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_scheduledalertrule" "scheduledAlertRule" {
///   alert_details_override = {
///     alert_description_format  = "Suspicious activity was made by {{ComputerIP}}"
///     alert_display_name_format = "Alert from {{Computer}}"
///     alert_dynamic_properties = [{
///       "alertProperty" = "ProductComponentName"
///       "value"         = "ProductComponentNameCustomColumn"
///       }, {
///       "alertProperty" = "ProductName"
///       "value"         = "ProductNameCustomColumn"
///       }, {
///       "alertProperty" = "AlertLink"
///       "value"         = "Link"
///     }]
///   }
///   custom_details = {
///     "OperatingSystemName" = "OSName"
///     "OperatingSystemType" = "OSType"
///   }
///   description  = "An example for a scheduled rule"
///   display_name = "My scheduled rule"
///   enabled      = true
///   entity_mappings {
///     entity_type = "Host"
///     field_mappings {
///       column_name = "Computer"
///       identifier  = "FullName"
///     }
///   }
///   entity_mappings {
///     entity_type = "IP"
///     field_mappings {
///       column_name = "ComputerIP"
///       identifier  = "Address"
///     }
///   }
///   event_grouping_settings = {
///     aggregation_kind = "AlertPerResult"
///   }
///   incident_configuration = {
///     create_incident = true
///     grouping_configuration = {
///       enabled                 = true
///       group_by_alert_details  = ["DisplayName"]
///       group_by_custom_details = ["OperatingSystemType", "OperatingSystemName"]
///       group_by_entities       = ["Host"]
///       lookback_duration       = "PT5H"
///       matching_method         = "Selected"
///       reopen_closed_incident  = false
///     }
///   }
///   kind                 = "Scheduled"
///   query                = "Heartbeat"
///   query_frequency      = "PT1H"
///   query_period         = "P2DT1H30M"
///   resource_group_name  = "myRg"
///   rule_id              = "73e01a99-5cd7-4139-a149-9f2736ff2ab5"
///   severity             = "High"
///   suppression_duration = "PT1H"
///   suppression_enabled  = false
///   tactics              = ["Persistence", "LateralMovement"]
///   trigger_operator     = "GreaterThan"
///   trigger_threshold    = 0
///   workspace_name       = "myWorkspace"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.ScheduledAlertRule;
/// import com.pulumi.azurenative.securityinsights.ScheduledAlertRuleArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.AlertDetailsOverrideArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.EntityMappingArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.EventGroupingSettingsArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.IncidentConfigurationArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.GroupingConfigurationArgs;
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
///         var scheduledAlertRule = new ScheduledAlertRule("scheduledAlertRule", ScheduledAlertRuleArgs.builder()
///             .alertDetailsOverride(AlertDetailsOverrideArgs.builder()
///                 .alertDescriptionFormat("Suspicious activity was made by {{ComputerIP}}")
///                 .alertDisplayNameFormat("Alert from {{Computer}}")
///                 .alertDynamicProperties(
///                     AlertPropertyMappingArgs.builder()
///                         .alertProperty("ProductComponentName")
///                         .value("ProductComponentNameCustomColumn")
///                         .build(),
///                     AlertPropertyMappingArgs.builder()
///                         .alertProperty("ProductName")
///                         .value("ProductNameCustomColumn")
///                         .build(),
///                     AlertPropertyMappingArgs.builder()
///                         .alertProperty("AlertLink")
///                         .value("Link")
///                         .build())
///                 .build())
///             .customDetails(Map.ofEntries(
///                 Map.entry("OperatingSystemName", "OSName"),
///                 Map.entry("OperatingSystemType", "OSType")
///             ))
///             .description("An example for a scheduled rule")
///             .displayName("My scheduled rule")
///             .enabled(true)
///             .entityMappings(
///                 EntityMappingArgs.builder()
///                     .entityType("Host")
///                     .fieldMappings(FieldMappingArgs.builder()
///                         .columnName("Computer")
///                         .identifier("FullName")
///                         .build())
///                     .build(),
///                 EntityMappingArgs.builder()
///                     .entityType("IP")
///                     .fieldMappings(FieldMappingArgs.builder()
///                         .columnName("ComputerIP")
///                         .identifier("Address")
///                         .build())
///                     .build())
///             .eventGroupingSettings(EventGroupingSettingsArgs.builder()
///                 .aggregationKind("AlertPerResult")
///                 .build())
///             .incidentConfiguration(IncidentConfigurationArgs.builder()
///                 .createIncident(true)
///                 .groupingConfiguration(GroupingConfigurationArgs.builder()
///                     .enabled(true)
///                     .groupByAlertDetails("DisplayName")
///                     .groupByCustomDetails(
///                         "OperatingSystemType",
///                         "OperatingSystemName")
///                     .groupByEntities("Host")
///                     .lookbackDuration("PT5H")
///                     .matchingMethod("Selected")
///                     .reopenClosedIncident(false)
///                     .build())
///                 .build())
///             .kind("Scheduled")
///             .query("Heartbeat")
///             .queryFrequency("PT1H")
///             .queryPeriod("P2DT1H30M")
///             .resourceGroupName("myRg")
///             .ruleId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .severity("High")
///             .suppressionDuration("PT1H")
///             .suppressionEnabled(false)
///             .tactics(
///                 "Persistence",
///                 "LateralMovement")
///             .triggerOperator("GreaterThan")
///             .triggerThreshold(0)
///             .workspaceName("myWorkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const scheduledAlertRule = new azure_native.securityinsights.ScheduledAlertRule("scheduledAlertRule", {
///     alertDetailsOverride: {
///         alertDescriptionFormat: "Suspicious activity was made by {{ComputerIP}}",
///         alertDisplayNameFormat: "Alert from {{Computer}}",
///         alertDynamicProperties: [
///             {
///                 alertProperty: azure_native.securityinsights.AlertProperty.ProductComponentName,
///                 value: "ProductComponentNameCustomColumn",
///             },
///             {
///                 alertProperty: azure_native.securityinsights.AlertProperty.ProductName,
///                 value: "ProductNameCustomColumn",
///             },
///             {
///                 alertProperty: azure_native.securityinsights.AlertProperty.AlertLink,
///                 value: "Link",
///             },
///         ],
///     },
///     customDetails: {
///         OperatingSystemName: "OSName",
///         OperatingSystemType: "OSType",
///     },
///     description: "An example for a scheduled rule",
///     displayName: "My scheduled rule",
///     enabled: true,
///     entityMappings: [
///         {
///             entityType: azure_native.securityinsights.EntityMappingType.Host,
///             fieldMappings: [{
///                 columnName: "Computer",
///                 identifier: "FullName",
///             }],
///         },
///         {
///             entityType: azure_native.securityinsights.EntityMappingType.IP,
///             fieldMappings: [{
///                 columnName: "ComputerIP",
///                 identifier: "Address",
///             }],
///         },
///     ],
///     eventGroupingSettings: {
///         aggregationKind: azure_native.securityinsights.EventGroupingAggregationKind.AlertPerResult,
///     },
///     incidentConfiguration: {
///         createIncident: true,
///         groupingConfiguration: {
///             enabled: true,
///             groupByAlertDetails: [azure_native.securityinsights.AlertDetail.DisplayName],
///             groupByCustomDetails: [
///                 "OperatingSystemType",
///                 "OperatingSystemName",
///             ],
///             groupByEntities: [azure_native.securityinsights.EntityMappingType.Host],
///             lookbackDuration: "PT5H",
///             matchingMethod: azure_native.securityinsights.MatchingMethod.Selected,
///             reopenClosedIncident: false,
///         },
///     },
///     kind: "Scheduled",
///     query: "Heartbeat",
///     queryFrequency: "PT1H",
///     queryPeriod: "P2DT1H30M",
///     resourceGroupName: "myRg",
///     ruleId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     severity: azure_native.securityinsights.AlertSeverity.High,
///     suppressionDuration: "PT1H",
///     suppressionEnabled: false,
///     tactics: [
///         azure_native.securityinsights.AttackTactic.Persistence,
///         azure_native.securityinsights.AttackTactic.LateralMovement,
///     ],
///     triggerOperator: azure_native.securityinsights.TriggerOperator.GreaterThan,
///     triggerThreshold: 0,
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_alert_rule = azure_native.securityinsights.ScheduledAlertRule("scheduledAlertRule",
///     alert_details_override={
///         "alert_description_format": "Suspicious activity was made by {{ComputerIP}}",
///         "alert_display_name_format": "Alert from {{Computer}}",
///         "alert_dynamic_properties": [
///             {
///                 "alert_property": azure_native.securityinsights.AlertProperty.PRODUCT_COMPONENT_NAME,
///                 "value": "ProductComponentNameCustomColumn",
///             },
///             {
///                 "alert_property": azure_native.securityinsights.AlertProperty.PRODUCT_NAME,
///                 "value": "ProductNameCustomColumn",
///             },
///             {
///                 "alert_property": azure_native.securityinsights.AlertProperty.ALERT_LINK,
///                 "value": "Link",
///             },
///         ],
///     },
///     custom_details={
///         "OperatingSystemName": "OSName",
///         "OperatingSystemType": "OSType",
///     },
///     description="An example for a scheduled rule",
///     display_name="My scheduled rule",
///     enabled=True,
///     entity_mappings=[
///         {
///             "entity_type": azure_native.securityinsights.EntityMappingType.HOST,
///             "field_mappings": [{
///                 "column_name": "Computer",
///                 "identifier": "FullName",
///             }],
///         },
///         {
///             "entity_type": azure_native.securityinsights.EntityMappingType.IP,
///             "field_mappings": [{
///                 "column_name": "ComputerIP",
///                 "identifier": "Address",
///             }],
///         },
///     ],
///     event_grouping_settings={
///         "aggregation_kind": azure_native.securityinsights.EventGroupingAggregationKind.ALERT_PER_RESULT,
///     },
///     incident_configuration={
///         "create_incident": True,
///         "grouping_configuration": {
///             "enabled": True,
///             "group_by_alert_details": [azure_native.securityinsights.AlertDetail.DISPLAY_NAME],
///             "group_by_custom_details": [
///                 "OperatingSystemType",
///                 "OperatingSystemName",
///             ],
///             "group_by_entities": [azure_native.securityinsights.EntityMappingType.HOST],
///             "lookback_duration": "PT5H",
///             "matching_method": azure_native.securityinsights.MatchingMethod.SELECTED,
///             "reopen_closed_incident": False,
///         },
///     },
///     kind="Scheduled",
///     query="Heartbeat",
///     query_frequency="PT1H",
///     query_period="P2DT1H30M",
///     resource_group_name="myRg",
///     rule_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     severity=azure_native.securityinsights.AlertSeverity.HIGH,
///     suppression_duration="PT1H",
///     suppression_enabled=False,
///     tactics=[
///         azure_native.securityinsights.AttackTactic.PERSISTENCE,
///         azure_native.securityinsights.AttackTactic.LATERAL_MOVEMENT,
///     ],
///     trigger_operator=azure_native.securityinsights.TriggerOperator.GREATER_THAN,
///     trigger_threshold=0,
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledAlertRule:
///     type: azure-native:securityinsights:ScheduledAlertRule
///     properties:
///       alertDetailsOverride:
///         alertDescriptionFormat: Suspicious activity was made by {{ComputerIP}}
///         alertDisplayNameFormat: Alert from {{Computer}}
///         alertDynamicProperties:
///           - alertProperty: ProductComponentName
///             value: ProductComponentNameCustomColumn
///           - alertProperty: ProductName
///             value: ProductNameCustomColumn
///           - alertProperty: AlertLink
///             value: Link
///       customDetails:
///         OperatingSystemName: OSName
///         OperatingSystemType: OSType
///       description: An example for a scheduled rule
///       displayName: My scheduled rule
///       enabled: true
///       entityMappings:
///         - entityType: Host
///           fieldMappings:
///             - columnName: Computer
///               identifier: FullName
///         - entityType: IP
///           fieldMappings:
///             - columnName: ComputerIP
///               identifier: Address
///       eventGroupingSettings:
///         aggregationKind: AlertPerResult
///       incidentConfiguration:
///         createIncident: true
///         groupingConfiguration:
///           enabled: true
///           groupByAlertDetails:
///             - DisplayName
///           groupByCustomDetails:
///             - OperatingSystemType
///             - OperatingSystemName
///           groupByEntities:
///             - Host
///           lookbackDuration: PT5H
///           matchingMethod: Selected
///           reopenClosedIncident: false
///       kind: Scheduled
///       query: Heartbeat
///       queryFrequency: PT1H
///       queryPeriod: P2DT1H30M
///       resourceGroupName: myRg
///       ruleId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       severity: High
///       suppressionDuration: PT1H
///       suppressionEnabled: false
///       tactics:
///         - Persistence
///         - LateralMovement
///       triggerOperator: GreaterThan
///       triggerThreshold: 0
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:securityinsights:ScheduledAlertRule 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/alertRules/{ruleId}
/// ```
class ScheduledAlertRule extends pulumi.CustomResource {
  /// The alert details override settings
  late final pulumi.Output<AlertDetailsOverrideResponse?> alertDetailsOverride;
  /// The Name of the alert rule template used to create this rule.
  late final pulumi.Output<String?> alertRuleTemplateName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Dictionary of string key-value pairs of columns to be attached to the alert
  late final pulumi.Output<Map<String, String>?> customDetails;
  /// The description of the alert rule.
  late final pulumi.Output<String?> description;
  /// The display name for alerts created by this alert rule.
  late final pulumi.Output<String> displayName;
  /// Determines whether this alert rule is enabled or disabled.
  late final pulumi.Output<bool> enabled;
  /// Array of the entity mappings of the alert rule
  late final pulumi.Output<List<EntityMappingResponse>?> entityMappings;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The event grouping settings.
  late final pulumi.Output<EventGroupingSettingsResponse?> eventGroupingSettings;
  /// The settings of the incidents that created from alerts triggered by this analytics rule
  late final pulumi.Output<IncidentConfigurationResponse?> incidentConfiguration;
  /// The kind of the alert rule
  /// Expected value is 'Scheduled'.
  late final pulumi.Output<String> kind;
  /// The last time that this alert rule has been modified.
  late final pulumi.Output<String> lastModifiedUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The query that creates alerts for this rule.
  late final pulumi.Output<String> query;
  /// The frequency (in ISO 8601 duration format) for this alert rule to run.
  late final pulumi.Output<String> queryFrequency;
  /// The period (in ISO 8601 duration format) that this alert rule looks at.
  late final pulumi.Output<String> queryPeriod;
  /// The severity for alerts created by this alert rule.
  late final pulumi.Output<String> severity;
  /// The suppression (in ISO 8601 duration format) to wait since last time this alert rule been triggered.
  late final pulumi.Output<String> suppressionDuration;
  /// Determines whether the suppression for this alert rule is enabled or disabled.
  late final pulumi.Output<bool> suppressionEnabled;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tactics of the alert rule
  late final pulumi.Output<List<String>?> tactics;
  /// The techniques of the alert rule
  late final pulumi.Output<List<String>?> techniques;
  /// The version of the alert rule template used to create this rule - in format &lt;a.b.c&gt;, where all are numbers, for example 0 &lt;1.0.2&gt;
  late final pulumi.Output<String?> templateVersion;
  /// The operation against the threshold that triggers alert rule.
  late final pulumi.Output<String> triggerOperator;
  /// The threshold triggers this alert rule.
  late final pulumi.Output<int> triggerThreshold;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ScheduledAlertRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledAlertRule]. {@macro pulumi_securityinsights_scheduled_alert_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledAlertRule(
    String name, {
    ScheduledAlertRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:ScheduledAlertRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertDetailsOverride = registerOutput<AlertDetailsOverrideResponse?>('alertDetailsOverride', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertDetailsOverrideResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    alertRuleTemplateName = registerOutput<String?>('alertRuleTemplateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customDetails = registerOutput<Map<String, String>?>('customDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    entityMappings = registerOutput<List<EntityMappingResponse>?>('entityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EntityMappingResponse>(guardedValue, (value) => EntityMappingResponse.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String?>('etag');
    eventGroupingSettings = registerOutput<EventGroupingSettingsResponse?>('eventGroupingSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGroupingSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incidentConfiguration = registerOutput<IncidentConfigurationResponse?>('incidentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IncidentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    lastModifiedUtc = registerOutput<String>('lastModifiedUtc');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    queryFrequency = registerOutput<String>('queryFrequency');
    queryPeriod = registerOutput<String>('queryPeriod');
    severity = registerOutput<String>('severity');
    suppressionDuration = registerOutput<String>('suppressionDuration');
    suppressionEnabled = registerOutput<bool>('suppressionEnabled');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tactics = registerOutput<List<String>?>('tactics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    techniques = registerOutput<List<String>?>('techniques', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    templateVersion = registerOutput<String?>('templateVersion');
    triggerOperator = registerOutput<String>('triggerOperator');
    triggerThreshold = registerOutput<int>('triggerThreshold');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ScheduledAlertRule] resource.
  ScheduledAlertRule.reference(String urn)
    : super(
        'azure-native:securityinsights:ScheduledAlertRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alertDetailsOverride = registerOutput<AlertDetailsOverrideResponse?>('alertDetailsOverride', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertDetailsOverrideResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    alertRuleTemplateName = registerOutput<String?>('alertRuleTemplateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customDetails = registerOutput<Map<String, String>?>('customDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    entityMappings = registerOutput<List<EntityMappingResponse>?>('entityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EntityMappingResponse>(guardedValue, (value) => EntityMappingResponse.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String?>('etag');
    eventGroupingSettings = registerOutput<EventGroupingSettingsResponse?>('eventGroupingSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGroupingSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incidentConfiguration = registerOutput<IncidentConfigurationResponse?>('incidentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IncidentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    lastModifiedUtc = registerOutput<String>('lastModifiedUtc');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    queryFrequency = registerOutput<String>('queryFrequency');
    queryPeriod = registerOutput<String>('queryPeriod');
    severity = registerOutput<String>('severity');
    suppressionDuration = registerOutput<String>('suppressionDuration');
    suppressionEnabled = registerOutput<bool>('suppressionEnabled');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tactics = registerOutput<List<String>?>('tactics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    techniques = registerOutput<List<String>?>('techniques', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    templateVersion = registerOutput<String?>('templateVersion');
    triggerOperator = registerOutput<String>('triggerOperator');
    triggerThreshold = registerOutput<int>('triggerThreshold');
    type = registerOutput<String>('type');
  }
}
