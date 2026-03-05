import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_args.dart';
import 'automation_rule_state.dart';

/// Manages a Sentinel Automation Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleLogAnalyticsWorkspaceOnboarding = new azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", {workspaceId: exampleAnalyticsWorkspace.id});
/// const exampleAutomationRule = new azure.sentinel.AutomationRule("example", {
///     name: "56094f72-ac3f-40e7-a0c0-47bd95f70336",
///     logAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
///     displayName: "automation_rule1",
///     order: 1,
///     actionIncidents: [{
///         order: 1,
///         status: "Active",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", workspace_id=example_analytics_workspace.id)
/// example_automation_rule = azure.sentinel.AutomationRule("example",
///     name="56094f72-ac3f-40e7-a0c0-47bd95f70336",
///     log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     display_name="automation_rule1",
///     order=1,
///     action_incidents=[{
///         "order": 1,
///         "status": "Active",
///     }])
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
///         Name = "example-rg",
///         Location = "west europe",
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
///     var exampleAutomationRule = new Azure.Sentinel.AutomationRule("example", new()
///     {
///         Name = "56094f72-ac3f-40e7-a0c0-47bd95f70336",
///         LogAnalyticsWorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///         DisplayName = "automation_rule1",
///         Order = 1,
///         ActionIncidents = new[]
///         {
///             new Azure.Sentinel.Inputs.AutomationRuleActionIncidentArgs
///             {
///                 Order = 1,
///                 Status = "Active",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
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
/// 		_, err = sentinel.NewAutomationRule(ctx, "example", &sentinel.AutomationRuleArgs{
/// 			Name:                    pulumi.String("56094f72-ac3f-40e7-a0c0-47bd95f70336"),
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			DisplayName:             pulumi.String("automation_rule1"),
/// 			Order:                   pulumi.Int(1),
/// 			ActionIncidents: sentinel.AutomationRuleActionIncidentArray{
/// 				&sentinel.AutomationRuleActionIncidentArgs{
/// 					Order:  pulumi.Int(1),
/// 					Status: pulumi.String("Active"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboarding;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboardingArgs;
/// import com.pulumi.azure.sentinel.AutomationRule;
/// import com.pulumi.azure.sentinel.AutomationRuleArgs;
/// import com.pulumi.azure.sentinel.inputs.AutomationRuleActionIncidentArgs;
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
///             .name("example-rg")
///             .location("west europe")
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
///         var exampleAutomationRule = new AutomationRule("exampleAutomationRule", AutomationRuleArgs.builder()
///             .name("56094f72-ac3f-40e7-a0c0-47bd95f70336")
///             .logAnalyticsWorkspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
///             .displayName("automation_rule1")
///             .order(1)
///             .actionIncidents(AutomationRuleActionIncidentArgs.builder()
///                 .order(1)
///                 .status("Active")
///                 .build())
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
///       name: example-rg
///       location: west europe
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
///   exampleAutomationRule:
///     type: azure:sentinel:AutomationRule
///     name: example
///     properties:
///       name: 56094f72-ac3f-40e7-a0c0-47bd95f70336
///       logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///       displayName: automation_rule1
///       order: 1
///       actionIncidents:
///         - order: 1
///           status: Active
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2024-09-01
///
/// ## Import
///
/// Sentinel Automation Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/automationRule:AutomationRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/automationRules/rule1
/// ```
class AutomationRule extends pulumi.CustomResource {
  /// One or more `action_incident_task` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> actionIncidentTasks;
  /// One or more `action_incident` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> actionIncidents;
  /// One or more `action_playbook` blocks as defined below.
  ///
  /// &gt; **Note:** Either one `action_incident` block or `action_playbook` block has to be specified.
  late final pulumi.Output<List<Map<String, dynamic>>?> actionPlaybooks;
  /// A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic).
  late final pulumi.Output<String?> conditionJson;
  /// The display name which should be used for this Sentinel Automation Rule.
  late final pulumi.Output<String> displayName;
  /// Whether this Sentinel Automation Rule is enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled.
  late final pulumi.Output<String?> expiration;
  /// The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
  late final pulumi.Output<String> name;
  /// The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`.
  late final pulumi.Output<int> order;
  /// Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`.
  late final pulumi.Output<String?> triggersOn;
  /// Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`.
  late final pulumi.Output<String?> triggersWhen;

  /// Creates a new [AutomationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomationRule]. {@macro pulumi_sentinel_automation_rule_automation_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomationRule(
    String name, {
    AutomationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/automationRule:AutomationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionIncidentTasks = registerOutput<List<Map<String, dynamic>>?>('actionIncidentTasks');
    actionIncidents = registerOutput<List<Map<String, dynamic>>?>('actionIncidents');
    actionPlaybooks = registerOutput<List<Map<String, dynamic>>?>('actionPlaybooks');
    conditionJson = registerOutput<String?>('conditionJson');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    expiration = registerOutput<String?>('expiration');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    triggersOn = registerOutput<String?>('triggersOn');
    triggersWhen = registerOutput<String?>('triggersWhen');
  }

  /// Gets an existing [AutomationRule] resource's state with the given [name] and [id].
  static AutomationRule get(
    String name,
    pulumi.Input<String> id, {
    AutomationRuleState? state,
  }) {
    return AutomationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutomationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/automationRule:AutomationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionIncidentTasks = registerOutput<List<Map<String, dynamic>>?>('actionIncidentTasks');
    actionIncidents = registerOutput<List<Map<String, dynamic>>?>('actionIncidents');
    actionPlaybooks = registerOutput<List<Map<String, dynamic>>?>('actionPlaybooks');
    conditionJson = registerOutput<String?>('conditionJson');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    expiration = registerOutput<String?>('expiration');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    triggersOn = registerOutput<String?>('triggersOn');
    triggersWhen = registerOutput<String?>('triggersWhen');
  }
}
