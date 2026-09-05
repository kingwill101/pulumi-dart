import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_machine_learning_behavior_analytics_args.dart';
import 'alert_rule_machine_learning_behavior_analytics_state.dart';

/// Manages a Sentinel Machine Learning Behavior Analytics Alert Rule.
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
/// const exampleAlertRuleMachineLearningBehaviorAnalytics = new azure.sentinel.AlertRuleMachineLearningBehaviorAnalytics("example", {
///     name: "example-ml-alert-rule",
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
///     alertRuleTemplateGuid: "737a2ce1-70a3-4968-9e90-3e6aca836abf",
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
/// example_alert_rule_machine_learning_behavior_analytics = azure.sentinel.AlertRuleMachineLearningBehaviorAnalytics("example",
///     name="example-ml-alert-rule",
///     log_analytics_workspace_id=example_analytics_workspace.id,
///     alert_rule_template_guid="737a2ce1-70a3-4968-9e90-3e6aca836abf")
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
///     var exampleAlertRuleMachineLearningBehaviorAnalytics = new Azure.Sentinel.AlertRuleMachineLearningBehaviorAnalytics("example", new()
///     {
///         Name = "example-ml-alert-rule",
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///         AlertRuleTemplateGuid = "737a2ce1-70a3-4968-9e90-3e6aca836abf",
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
/// 		_, err = sentinel.NewLogAnalyticsWorkspaceOnboarding(ctx, "example", &sentinel.LogAnalyticsWorkspaceOnboardingArgs{
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewAlertRuleMachineLearningBehaviorAnalytics(ctx, "example", &sentinel.AlertRuleMachineLearningBehaviorAnalyticsArgs{
/// 			Name:                    pulumi.String("example-ml-alert-rule"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			AlertRuleTemplateGuid:   pulumi.String("737a2ce1-70a3-4968-9e90-3e6aca836abf"),
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
/// resource "azure_sentinel_alertrulemachinelearningbehavioranalytics" "example" {
///   name                       = "example-ml-alert-rule"
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
///   alert_rule_template_guid   = "737a2ce1-70a3-4968-9e90-3e6aca836abf"
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
/// import com.pulumi.azure.sentinel.AlertRuleMachineLearningBehaviorAnalytics;
/// import com.pulumi.azure.sentinel.AlertRuleMachineLearningBehaviorAnalyticsArgs;
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
///         var exampleAlertRuleMachineLearningBehaviorAnalytics = new AlertRuleMachineLearningBehaviorAnalytics("exampleAlertRuleMachineLearningBehaviorAnalytics", AlertRuleMachineLearningBehaviorAnalyticsArgs.builder()
///             .name("example-ml-alert-rule")
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .alertRuleTemplateGuid("737a2ce1-70a3-4968-9e90-3e6aca836abf")
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
///   exampleAlertRuleMachineLearningBehaviorAnalytics:
///     type: azure:sentinel:AlertRuleMachineLearningBehaviorAnalytics
///     name: example
///     properties:
///       name: example-ml-alert-rule
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///       alertRuleTemplateGuid: 737a2ce1-70a3-4968-9e90-3e6aca836abf
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
/// Sentinel Machine Learning Behavior Analytics Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/alertRuleMachineLearningBehaviorAnalytics:AlertRuleMachineLearningBehaviorAnalytics example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/alertRules/rule1
/// ```
class AlertRuleMachineLearningBehaviorAnalytics extends pulumi.CustomResource {
  /// The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  late final pulumi.Output<String> alertRuleTemplateGuid;
  /// Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [AlertRuleMachineLearningBehaviorAnalytics].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertRuleMachineLearningBehaviorAnalytics]. {@macro pulumi_sentinel_alert_rule_machine_learning_behavior_analytics_alert_rule_machine_learning_behavior_analytics_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertRuleMachineLearningBehaviorAnalytics(
    String name, {
    AlertRuleMachineLearningBehaviorAnalyticsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleMachineLearningBehaviorAnalytics:AlertRuleMachineLearningBehaviorAnalytics',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    alertRuleTemplateGuid = registerOutput<String>('alertRuleTemplateGuid');
    enabled = registerOutput<bool?>('enabled');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [AlertRuleMachineLearningBehaviorAnalytics] resource's state with the given [name] and [id].
  static AlertRuleMachineLearningBehaviorAnalytics get(
    String name,
    pulumi.Input<String> id, {
    AlertRuleMachineLearningBehaviorAnalyticsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AlertRuleMachineLearningBehaviorAnalytics._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AlertRuleMachineLearningBehaviorAnalytics._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleMachineLearningBehaviorAnalytics:AlertRuleMachineLearningBehaviorAnalytics',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertRuleTemplateGuid = registerOutput<String>('alertRuleTemplateGuid');
    enabled = registerOutput<bool?>('enabled');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [AlertRuleMachineLearningBehaviorAnalytics] resource.
  AlertRuleMachineLearningBehaviorAnalytics.reference(String urn)
    : super(
        'azure:sentinel/alertRuleMachineLearningBehaviorAnalytics:AlertRuleMachineLearningBehaviorAnalytics',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alertRuleTemplateGuid = registerOutput<String>('alertRuleTemplateGuid');
    enabled = registerOutput<bool?>('enabled');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
  }
}
