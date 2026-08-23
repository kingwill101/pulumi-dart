import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_ms_security_incident_args.dart';
import 'alert_rule_ms_security_incident_state.dart';

/// Manages a Sentinel MS Security Incident Alert Rule.
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
/// const exampleAlertRuleMsSecurityIncident = new azure.sentinel.AlertRuleMsSecurityIncident("example", {
///     name: "example-ms-security-incident-alert-rule",
///     logAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
///     productFilter: "Microsoft Cloud App Security",
///     displayName: "example rule",
///     severityFilters: ["High"],
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
/// example_alert_rule_ms_security_incident = azure.sentinel.AlertRuleMsSecurityIncident("example",
///     name="example-ms-security-incident-alert-rule",
///     log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     product_filter="Microsoft Cloud App Security",
///     display_name="example rule",
///     severity_filters=["High"])
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
///     var exampleAlertRuleMsSecurityIncident = new Azure.Sentinel.AlertRuleMsSecurityIncident("example", new()
///     {
///         Name = "example-ms-security-incident-alert-rule",
///         LogAnalyticsWorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///         ProductFilter = "Microsoft Cloud App Security",
///         DisplayName = "example rule",
///         SeverityFilters = new[]
///         {
///             "High",
///         },
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
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewAlertRuleMsSecurityIncident(ctx, "example", &sentinel.AlertRuleMsSecurityIncidentArgs{
/// 			Name:                    pulumi.String("example-ms-security-incident-alert-rule"),
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			ProductFilter:           pulumi.String("Microsoft Cloud App Security"),
/// 			DisplayName:             pulumi.String("example rule"),
/// 			SeverityFilters: pulumi.StringArray{
/// 				pulumi.String("High"),
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
/// resource "azure_sentinel_alertrulemssecurityincident" "example" {
///   name                       = "example-ms-security-incident-alert-rule"
///   log_analytics_workspace_id = azure_sentinel_loganalyticsworkspaceonboarding.example.workspace_id
///   product_filter             = "Microsoft Cloud App Security"
///   display_name               = "example rule"
///   severity_filters           = ["High"]
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
/// import com.pulumi.azure.sentinel.AlertRuleMsSecurityIncident;
/// import com.pulumi.azure.sentinel.AlertRuleMsSecurityIncidentArgs;
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
///         var exampleAlertRuleMsSecurityIncident = new AlertRuleMsSecurityIncident("exampleAlertRuleMsSecurityIncident", AlertRuleMsSecurityIncidentArgs.builder()
///             .name("example-ms-security-incident-alert-rule")
///             .logAnalyticsWorkspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
///             .productFilter("Microsoft Cloud App Security")
///             .displayName("example rule")
///             .severityFilters("High")
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
///   exampleAlertRuleMsSecurityIncident:
///     type: azure:sentinel:AlertRuleMsSecurityIncident
///     name: example
///     properties:
///       name: example-ms-security-incident-alert-rule
///       logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///       productFilter: Microsoft Cloud App Security
///       displayName: example rule
///       severityFilters:
///         - High
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
/// Sentinel MS Security Incident Alert Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/alertRuleMsSecurityIncident:AlertRuleMsSecurityIncident example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/alertRules/rule1
/// ```
class AlertRuleMsSecurityIncident extends pulumi.CustomResource {
  /// The GUID of the alert rule template which is used to create this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  late final pulumi.Output<String?> alertRuleTemplateGuid;
  /// The description of this Sentinel MS Security Incident Alert Rule.
  late final pulumi.Output<String?> description;
  /// The friendly name of this Sentinel MS Security Incident Alert Rule.
  late final pulumi.Output<String> displayName;
  /// Only create incidents when the alert display name doesn't contain text from this list.
  late final pulumi.Output<List<String>?> displayNameExcludeFilters;
  /// Only create incidents when the alert display name contain text from this list, leave empty to apply no filter.
  late final pulumi.Output<List<String>?> displayNameFilters;
  /// Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel MS Security Incident Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  late final pulumi.Output<String> name;
  /// The Microsoft Security Service from where the alert will be generated. Possible values are `Azure Active Directory Identity Protection`, `Azure Advanced Threat Protection`, `Azure Security Center`, `Azure Security Center for IoT`, `Microsoft Cloud App Security`, `Microsoft Defender Advanced Threat Protection` and `Office 365 Advanced Threat Protection`.
  late final pulumi.Output<String> productFilter;
  /// Only create incidents from alerts when alert severity level is contained in this list. Possible values are `High`, `Medium`, `Low` and `Informational`.
  ///
  /// &gt; **Note:** At least one of the severity filters need to be set.
  late final pulumi.Output<List<String>> severityFilters;

  /// Creates a new [AlertRuleMsSecurityIncident].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertRuleMsSecurityIncident]. {@macro pulumi_sentinel_alert_rule_ms_security_incident_alert_rule_ms_security_incident_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertRuleMsSecurityIncident(
    String name, {
    AlertRuleMsSecurityIncidentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleMsSecurityIncident:AlertRuleMsSecurityIncident',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertRuleTemplateGuid = registerOutput<String?>('alertRuleTemplateGuid');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    displayNameExcludeFilters = registerOutput<List<String>?>('displayNameExcludeFilters');
    displayNameFilters = registerOutput<List<String>?>('displayNameFilters');
    enabled = registerOutput<bool?>('enabled');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    productFilter = registerOutput<String>('productFilter');
    severityFilters = registerOutput<List<String>>('severityFilters');
  }

  /// Gets an existing [AlertRuleMsSecurityIncident] resource's state with the given [name] and [id].
  static AlertRuleMsSecurityIncident get(
    String name,
    pulumi.Input<String> id, {
    AlertRuleMsSecurityIncidentState? state,
  }) {
    return AlertRuleMsSecurityIncident._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertRuleMsSecurityIncident._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleMsSecurityIncident:AlertRuleMsSecurityIncident',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertRuleTemplateGuid = registerOutput<String?>('alertRuleTemplateGuid');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    displayNameExcludeFilters = registerOutput<List<String>?>('displayNameExcludeFilters');
    displayNameFilters = registerOutput<List<String>?>('displayNameFilters');
    enabled = registerOutput<bool?>('enabled');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    productFilter = registerOutput<String>('productFilter');
    severityFilters = registerOutput<List<String>>('severityFilters');
  }
}
