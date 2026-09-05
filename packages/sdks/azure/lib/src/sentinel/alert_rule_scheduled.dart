import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_scheduled_alert_details_override.dart';
import 'alert_rule_scheduled_args.dart';
import 'alert_rule_scheduled_entity_mapping.dart';
import 'alert_rule_scheduled_event_grouping.dart';
import 'alert_rule_scheduled_incident.dart';
import 'alert_rule_scheduled_sentinel_entity_mapping.dart';
import 'alert_rule_scheduled_state.dart';

/// Manages a Sentinel Scheduled Alert Rule.
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleLogAnalyticsWorkspaceOnboarding = new azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", {workspaceId: exampleAnalyticsWorkspace.id});
/// const exampleAlertRuleScheduled = new azure.sentinel.AlertRuleScheduled("example", {
///     name: "example",
///     logAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
///     displayName: "example",
///     severity: "High",
///     query: `AzureActivity |
///   where OperationName == \\"Create or Update Virtual Machine\\" or OperationName ==\\"Create Deployment\\" |
///   where ActivityStatus == \\"Succeeded\\" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", workspace_id=example_analytics_workspace.id)
/// example_alert_rule_scheduled = azure.sentinel.AlertRuleScheduled("example",
///     name="example",
///     log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     display_name="example",
///     severity="High",
///     query="""AzureActivity |
///   where OperationName == \"Create or Update Virtual Machine\" or OperationName ==\"Create Deployment\" |
///   where ActivityStatus == \"Succeeded\" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
/// """)
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleLogAnalyticsWorkspaceOnboarding = new Azure.Sentinel.LogAnalyticsWorkspaceOnboarding("example", new()
///     {
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleAlertRuleScheduled = new Azure.Sentinel.AlertRuleScheduled("example", new()
///     {
///         Name = "example",
///         LogAnalyticsWorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///         DisplayName = "example",
///         Severity = "High",
///         Query = @"AzureActivity |
///   where OperationName == \""Create or Update Virtual Machine\"" or OperationName ==\""Create Deployment\"" |
///   where ActivityStatus == \""Succeeded\"" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogAnalyticsWorkspaceOnboarding, err := sentinel.NewLogAnalyticsWorkspaceOnboarding(ctx, "example", &sentinel.LogAnalyticsWorkspaceOnboardingArgs{
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewAlertRuleScheduled(ctx, "example", &sentinel.AlertRuleScheduledArgs{
/// 			Name:                    pulumi.String("example"),
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			DisplayName:             pulumi.String("example"),
/// 			Severity:                pulumi.String("High"),
/// 			Query:                   pulumi.String("AzureActivity |\n  where OperationName == \\\"Create or Update Virtual Machine\\\" or OperationName ==\\\"Create Deployment\\\" |\n  where ActivityStatus == \\\"Succeeded\\\" |\n  make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller\n"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example-workspace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
/// }
/// resource "azure_sentinel_loganalyticsworkspaceonboarding" "example" {
///   workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_sentinel_alertrulescheduled" "example" {
///   name                       = "example"
///   log_analytics_workspace_id = azure_sentinel_loganalyticsworkspaceonboarding.example.workspace_id
///   display_name               = "example"
///   severity                   = "High"
///   query                      = "AzureActivity |\n  where OperationName == \\\"Create or Update Virtual Machine\\\" or OperationName ==\\\"Create Deployment\\\" |\n  where ActivityStatus == \\\"Succeeded\\\" |\n  make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller\n"
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboarding;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboardingArgs;
/// import com.pulumi.azure.sentinel.AlertRuleScheduled;
/// import com.pulumi.azure.sentinel.AlertRuleScheduledArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleLogAnalyticsWorkspaceOnboarding = new LogAnalyticsWorkspaceOnboarding("exampleLogAnalyticsWorkspaceOnboarding", LogAnalyticsWorkspaceOnboardingArgs.builder()
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleAlertRuleScheduled = new AlertRuleScheduled("exampleAlertRuleScheduled", AlertRuleScheduledArgs.builder()
///             .name("example")
///             .logAnalyticsWorkspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
///             .displayName("example")
///             .severity("High")
///             .query("""
/// AzureActivity |
///   where OperationName == \"Create or Update Virtual Machine\" or OperationName ==\"Create Deployment\" |
///   where ActivityStatus == \"Succeeded\" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
///             """)
///             .build());
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleLogAnalyticsWorkspaceOnboarding:
///     type: azure:sentinel:LogAnalyticsWorkspaceOnboarding
///     name: example
///     properties:
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleAlertRuleScheduled:
///     type: azure:sentinel:AlertRuleScheduled
///     name: example
///     properties:
///       name: example
///       logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///       displayName: example
///       severity: High
///       query: |
///         AzureActivity |
///           where OperationName == \"Create or Update Virtual Machine\" or OperationName ==\"Create Deployment\" |
///           where ActivityStatus == \"Succeeded\" |
///           make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2023-12-01-preview
///
/// ## Import
///
/// Sentinel Scheduled Alert Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/alertRuleScheduled:AlertRuleScheduled example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/alertRules/rule1
/// ```
class AlertRuleScheduled extends pulumi.CustomResource {
  /// An `alertDetailsOverride` block as defined below.
  late final pulumi.Output<List<AlertRuleScheduledAlertDetailsOverride>?> alertDetailsOverrides;
  /// The GUID of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  late final pulumi.Output<String?> alertRuleTemplateGuid;
  /// The version of the alert rule template which is used for this Sentinel Scheduled Alert Rule.
  late final pulumi.Output<String?> alertRuleTemplateVersion;
  /// A map of string key-value pairs of columns to be attached to this Sentinel Scheduled Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  late final pulumi.Output<Map<String, String>?> customDetails;
  /// The description of this Sentinel Scheduled Alert Rule.
  late final pulumi.Output<String?> description;
  /// The friendly name of this Sentinel Scheduled Alert Rule.
  late final pulumi.Output<String> displayName;
  /// Should the Sentinel Scheduled Alert Rule be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// A list of `entityMapping` blocks as defined below.
  late final pulumi.Output<List<AlertRuleScheduledEntityMapping>?> entityMappings;
  /// A `eventGrouping` block as defined below.
  late final pulumi.Output<AlertRuleScheduledEventGrouping?> eventGrouping;
  /// A `incident` block as defined below.
  late final pulumi.Output<AlertRuleScheduledIncident> incident;
  /// The ID of the Log Analytics Workspace this Sentinel Scheduled Alert Rule belongs to. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  late final pulumi.Output<String> name;
  /// The query of this Sentinel Scheduled Alert Rule.
  late final pulumi.Output<String> query;
  /// The ISO 8601 timespan duration between two consecutive queries. Defaults to `PT5H`.
  late final pulumi.Output<String?> queryFrequency;
  /// The ISO 8601 timespan duration, which determine the time period of the data covered by the query. For example, it can query the past 10 minutes of data, or the past 6 hours of data. Defaults to `PT5H`.
  ///
  /// &gt; **Note:** `queryPeriod` must larger than or equal to `queryFrequency`, which ensures there is no gaps in the overall query coverage.
  late final pulumi.Output<String?> queryPeriod;
  /// A list of `sentinelEntityMapping` blocks as defined below.
  ///
  /// &gt; **Note:** `entityMapping` and `sentinelEntityMapping` together can't exceed 10.
  late final pulumi.Output<List<AlertRuleScheduledSentinelEntityMapping>?> sentinelEntityMappings;
  /// The alert severity of this Sentinel Scheduled Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  late final pulumi.Output<String> severity;
  /// If `suppressionEnabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  ///
  /// &gt; **Note:** `suppressionDuration` must larger than or equal to `queryFrequency`, otherwise the suppression has no actual effect since no query will happen during the suppression duration.
  late final pulumi.Output<String?> suppressionDuration;
  /// Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to `false`.
  late final pulumi.Output<bool?> suppressionEnabled;
  /// A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance` and `ResourceDevelopment`.
  late final pulumi.Output<List<String>?> tactics;
  /// A list of techniques of attacks by which to classify the rule.
  late final pulumi.Output<List<String>?> techniques;
  /// The alert trigger operator, combined with `triggerThreshold`, setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are `Equal`, `GreaterThan`, `LessThan`, `NotEqual`. Defaults to `GreaterThan`.
  late final pulumi.Output<String?> triggerOperator;
  /// The baseline number of query results generated, combined with `triggerOperator`, setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to `0`.
  late final pulumi.Output<int?> triggerThreshold;

  /// Creates a new [AlertRuleScheduled].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertRuleScheduled]. {@macro pulumi_sentinel_alert_rule_scheduled_alert_rule_scheduled_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertRuleScheduled(
    String name, {
    AlertRuleScheduledArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleScheduled:AlertRuleScheduled',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    alertDetailsOverrides = registerOutput<List<AlertRuleScheduledAlertDetailsOverride>?>('alertDetailsOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledAlertDetailsOverride>(guardedValue, (value) => AlertRuleScheduledAlertDetailsOverride.fromMap((value as Map).cast<String, dynamic>())); });
    alertRuleTemplateGuid = registerOutput<String?>('alertRuleTemplateGuid');
    alertRuleTemplateVersion = registerOutput<String?>('alertRuleTemplateVersion');
    customDetails = registerOutput<Map<String, String>?>('customDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    entityMappings = registerOutput<List<AlertRuleScheduledEntityMapping>?>('entityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledEntityMapping>(guardedValue, (value) => AlertRuleScheduledEntityMapping.fromMap((value as Map).cast<String, dynamic>())); });
    eventGrouping = registerOutput<AlertRuleScheduledEventGrouping?>('eventGrouping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertRuleScheduledEventGrouping.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incident = registerOutput<AlertRuleScheduledIncident>('incident', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertRuleScheduledIncident.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    queryFrequency = registerOutput<String?>('queryFrequency');
    queryPeriod = registerOutput<String?>('queryPeriod');
    sentinelEntityMappings = registerOutput<List<AlertRuleScheduledSentinelEntityMapping>?>('sentinelEntityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledSentinelEntityMapping>(guardedValue, (value) => AlertRuleScheduledSentinelEntityMapping.fromMap((value as Map).cast<String, dynamic>())); });
    severity = registerOutput<String>('severity');
    suppressionDuration = registerOutput<String?>('suppressionDuration');
    suppressionEnabled = registerOutput<bool?>('suppressionEnabled');
    tactics = registerOutput<List<String>?>('tactics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    techniques = registerOutput<List<String>?>('techniques', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    triggerOperator = registerOutput<String?>('triggerOperator');
    triggerThreshold = registerOutput<int?>('triggerThreshold');
  }

  /// Gets an existing [AlertRuleScheduled] resource's state with the given [name] and [id].
  static AlertRuleScheduled get(
    String name,
    pulumi.Input<String> id, {
    AlertRuleScheduledState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AlertRuleScheduled._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AlertRuleScheduled._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleScheduled:AlertRuleScheduled',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertDetailsOverrides = registerOutput<List<AlertRuleScheduledAlertDetailsOverride>?>('alertDetailsOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledAlertDetailsOverride>(guardedValue, (value) => AlertRuleScheduledAlertDetailsOverride.fromMap((value as Map).cast<String, dynamic>())); });
    alertRuleTemplateGuid = registerOutput<String?>('alertRuleTemplateGuid');
    alertRuleTemplateVersion = registerOutput<String?>('alertRuleTemplateVersion');
    customDetails = registerOutput<Map<String, String>?>('customDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    entityMappings = registerOutput<List<AlertRuleScheduledEntityMapping>?>('entityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledEntityMapping>(guardedValue, (value) => AlertRuleScheduledEntityMapping.fromMap((value as Map).cast<String, dynamic>())); });
    eventGrouping = registerOutput<AlertRuleScheduledEventGrouping?>('eventGrouping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertRuleScheduledEventGrouping.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incident = registerOutput<AlertRuleScheduledIncident>('incident', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertRuleScheduledIncident.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    queryFrequency = registerOutput<String?>('queryFrequency');
    queryPeriod = registerOutput<String?>('queryPeriod');
    sentinelEntityMappings = registerOutput<List<AlertRuleScheduledSentinelEntityMapping>?>('sentinelEntityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledSentinelEntityMapping>(guardedValue, (value) => AlertRuleScheduledSentinelEntityMapping.fromMap((value as Map).cast<String, dynamic>())); });
    severity = registerOutput<String>('severity');
    suppressionDuration = registerOutput<String?>('suppressionDuration');
    suppressionEnabled = registerOutput<bool?>('suppressionEnabled');
    tactics = registerOutput<List<String>?>('tactics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    techniques = registerOutput<List<String>?>('techniques', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    triggerOperator = registerOutput<String?>('triggerOperator');
    triggerThreshold = registerOutput<int?>('triggerThreshold');
  }

  /// Creates a typed reference to an existing [AlertRuleScheduled] resource.
  AlertRuleScheduled.reference(String urn)
    : super(
        'azure:sentinel/alertRuleScheduled:AlertRuleScheduled',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alertDetailsOverrides = registerOutput<List<AlertRuleScheduledAlertDetailsOverride>?>('alertDetailsOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledAlertDetailsOverride>(guardedValue, (value) => AlertRuleScheduledAlertDetailsOverride.fromMap((value as Map).cast<String, dynamic>())); });
    alertRuleTemplateGuid = registerOutput<String?>('alertRuleTemplateGuid');
    alertRuleTemplateVersion = registerOutput<String?>('alertRuleTemplateVersion');
    customDetails = registerOutput<Map<String, String>?>('customDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    entityMappings = registerOutput<List<AlertRuleScheduledEntityMapping>?>('entityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledEntityMapping>(guardedValue, (value) => AlertRuleScheduledEntityMapping.fromMap((value as Map).cast<String, dynamic>())); });
    eventGrouping = registerOutput<AlertRuleScheduledEventGrouping?>('eventGrouping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertRuleScheduledEventGrouping.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incident = registerOutput<AlertRuleScheduledIncident>('incident', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertRuleScheduledIncident.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    queryFrequency = registerOutput<String?>('queryFrequency');
    queryPeriod = registerOutput<String?>('queryPeriod');
    sentinelEntityMappings = registerOutput<List<AlertRuleScheduledSentinelEntityMapping>?>('sentinelEntityMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertRuleScheduledSentinelEntityMapping>(guardedValue, (value) => AlertRuleScheduledSentinelEntityMapping.fromMap((value as Map).cast<String, dynamic>())); });
    severity = registerOutput<String>('severity');
    suppressionDuration = registerOutput<String?>('suppressionDuration');
    suppressionEnabled = registerOutput<bool?>('suppressionEnabled');
    tactics = registerOutput<List<String>?>('tactics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    techniques = registerOutput<List<String>?>('techniques', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    triggerOperator = registerOutput<String?>('triggerOperator');
    triggerThreshold = registerOutput<int?>('triggerThreshold');
  }
}
