import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_threat_intelligence_args.dart';
import 'alert_rule_threat_intelligence_state.dart';

/// Manages a Sentinel Threat Intelligence Alert Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "pergb2018",
/// });
/// const exampleAnalyticsSolution = new azure.operationalinsights.AnalyticsSolution("example", {
///     solutionName: "SecurityInsights",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     workspaceResourceId: exampleAnalyticsWorkspace.id,
///     workspaceName: exampleAnalyticsWorkspace.name,
///     plan: {
///         publisher: "Microsoft",
///         product: "OMSGallery/SecurityInsights",
///     },
/// });
/// const example = azure.sentinel.getAlertRuleTemplateOutput({
///     displayName: "(Preview) Microsoft Defender Threat Intelligence Analytics",
///     logAnalyticsWorkspaceId: exampleAnalyticsSolution.workspaceResourceId,
/// });
/// const exampleAlertRuleThreatIntelligence = new azure.sentinel.AlertRuleThreatIntelligence("example", {
///     name: "example-rule",
///     logAnalyticsWorkspaceId: exampleAnalyticsSolution.workspaceResourceId,
///     alertRuleTemplateGuid: example.apply(example => example.name),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="pergb2018")
/// example_analytics_solution = azure.operationalinsights.AnalyticsSolution("example",
///     solution_name="SecurityInsights",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     workspace_resource_id=example_analytics_workspace.id,
///     workspace_name=example_analytics_workspace.name,
///     plan={
///         "publisher": "Microsoft",
///         "product": "OMSGallery/SecurityInsights",
///     })
/// example = azure.sentinel.get_alert_rule_template_output(display_name="(Preview) Microsoft Defender Threat Intelligence Analytics",
///     log_analytics_workspace_id=example_analytics_solution.workspace_resource_id)
/// example_alert_rule_threat_intelligence = azure.sentinel.AlertRuleThreatIntelligence("example",
///     name="example-rule",
///     log_analytics_workspace_id=example_analytics_solution.workspace_resource_id,
///     alert_rule_template_guid=example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "pergb2018",
///     });
///
///     var exampleAnalyticsSolution = new Azure.OperationalInsights.AnalyticsSolution("example", new()
///     {
///         SolutionName = "SecurityInsights",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         WorkspaceResourceId = exampleAnalyticsWorkspace.Id,
///         WorkspaceName = exampleAnalyticsWorkspace.Name,
///         Plan = new Azure.OperationalInsights.Inputs.AnalyticsSolutionPlanArgs
///         {
///             Publisher = "Microsoft",
///             Product = "OMSGallery/SecurityInsights",
///         },
///     });
///
///     var example = Azure.Sentinel.GetAlertRuleTemplate.Invoke(new()
///     {
///         DisplayName = "(Preview) Microsoft Defender Threat Intelligence Analytics",
///         LogAnalyticsWorkspaceId = exampleAnalyticsSolution.WorkspaceResourceId,
///     });
///
///     var exampleAlertRuleThreatIntelligence = new Azure.Sentinel.AlertRuleThreatIntelligence("example", new()
///     {
///         Name = "example-rule",
///         LogAnalyticsWorkspaceId = exampleAnalyticsSolution.WorkspaceResourceId,
///         AlertRuleTemplateGuid = example.Apply(getAlertRuleTemplateResult => getAlertRuleTemplateResult.Name),
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
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("pergb2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsSolution, err := operationalinsights.NewAnalyticsSolution(ctx, "example", &operationalinsights.AnalyticsSolutionArgs{
/// 			SolutionName:        pulumi.String("SecurityInsights"),
/// 			Location:            exampleResourceGroup.Location,
/// 			ResourceGroupName:   exampleResourceGroup.Name,
/// 			WorkspaceResourceId: exampleAnalyticsWorkspace.ID(),
/// 			WorkspaceName:       exampleAnalyticsWorkspace.Name,
/// 			Plan: &operationalinsights.AnalyticsSolutionPlanArgs{
/// 				Publisher: pulumi.String("Microsoft"),
/// 				Product:   pulumi.String("OMSGallery/SecurityInsights"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := sentinel.GetAlertRuleTemplateOutput(ctx, sentinel.GetAlertRuleTemplateOutputArgs{
/// 			DisplayName:             pulumi.String("(Preview) Microsoft Defender Threat Intelligence Analytics"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsSolution.WorkspaceResourceId,
/// 		}, nil)
/// 		_, err = sentinel.NewAlertRuleThreatIntelligence(ctx, "example", &sentinel.AlertRuleThreatIntelligenceArgs{
/// 			Name:                    pulumi.String("example-rule"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsSolution.WorkspaceResourceId,
/// 			AlertRuleTemplateGuid: pulumi.String(example.ApplyT(func(example sentinel.GetAlertRuleTemplateResult) (*string, error) {
/// 				return example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// data "azure_sentinel_getalertruletemplate" "example" {
///   display_name               = "(Preview) Microsoft Defender Threat Intelligence Analytics"
///   log_analytics_workspace_id = azure_operationalinsights_analyticssolution.example.workspace_resource_id
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
///   sku                 = "pergb2018"
/// }
/// resource "azure_operationalinsights_analyticssolution" "example" {
///   solution_name         = "SecurityInsights"
///   location              = azure_core_resourcegroup.example.location
///   resource_group_name   = azure_core_resourcegroup.example.name
///   workspace_resource_id = azure_operationalinsights_analyticsworkspace.example.id
///   workspace_name        = azure_operationalinsights_analyticsworkspace.example.name
///   plan = {
///     publisher = "Microsoft"
///     product   = "OMSGallery/SecurityInsights"
///   }
/// }
/// resource "azure_sentinel_alertrulethreatintelligence" "example" {
///   name                       = "example-rule"
///   log_analytics_workspace_id = azure_operationalinsights_analyticssolution.example.workspace_resource_id
///   alert_rule_template_guid   = data.azure_sentinel_getalertruletemplate.example.name
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
/// import com.pulumi.azure.operationalinsights.AnalyticsSolution;
/// import com.pulumi.azure.operationalinsights.AnalyticsSolutionArgs;
/// import com.pulumi.azure.operationalinsights.inputs.AnalyticsSolutionPlanArgs;
/// import com.pulumi.azure.sentinel.SentinelFunctions;
/// import com.pulumi.azure.sentinel.inputs.GetAlertRuleTemplateArgs;
/// import com.pulumi.azure.sentinel.AlertRuleThreatIntelligence;
/// import com.pulumi.azure.sentinel.AlertRuleThreatIntelligenceArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("pergb2018")
///             .build());
///
///         var exampleAnalyticsSolution = new AnalyticsSolution("exampleAnalyticsSolution", AnalyticsSolutionArgs.builder()
///             .solutionName("SecurityInsights")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .workspaceResourceId(exampleAnalyticsWorkspace.id())
///             .workspaceName(exampleAnalyticsWorkspace.name())
///             .plan(AnalyticsSolutionPlanArgs.builder()
///                 .publisher("Microsoft")
///                 .product("OMSGallery/SecurityInsights")
///                 .build())
///             .build());
///
///         final var example = SentinelFunctions.getAlertRuleTemplate(GetAlertRuleTemplateArgs.builder()
///             .displayName("(Preview) Microsoft Defender Threat Intelligence Analytics")
///             .logAnalyticsWorkspaceId(exampleAnalyticsSolution.workspaceResourceId())
///             .build());
///
///         var exampleAlertRuleThreatIntelligence = new AlertRuleThreatIntelligence("exampleAlertRuleThreatIntelligence", AlertRuleThreatIntelligenceArgs.builder()
///             .name("example-rule")
///             .logAnalyticsWorkspaceId(exampleAnalyticsSolution.workspaceResourceId())
///             .alertRuleTemplateGuid(example.applyValue(_example -> _example.name()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: pergb2018
///   exampleAnalyticsSolution:
///     type: azure:operationalinsights:AnalyticsSolution
///     name: example
///     properties:
///       solutionName: SecurityInsights
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       workspaceResourceId: ${exampleAnalyticsWorkspace.id}
///       workspaceName: ${exampleAnalyticsWorkspace.name}
///       plan:
///         publisher: Microsoft
///         product: OMSGallery/SecurityInsights
///   exampleAlertRuleThreatIntelligence:
///     type: azure:sentinel:AlertRuleThreatIntelligence
///     name: example
///     properties:
///       name: example-rule
///       logAnalyticsWorkspaceId: ${exampleAnalyticsSolution.workspaceResourceId}
///       alertRuleTemplateGuid: ${example.name}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:sentinel:getAlertRuleTemplate
///       arguments:
///         displayName: (Preview) Microsoft Defender Threat Intelligence Analytics
///         logAnalyticsWorkspaceId: ${exampleAnalyticsSolution.workspaceResourceId}
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
/// Sentinel Threat Intelligence Alert Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/alertRuleThreatIntelligence:AlertRuleThreatIntelligence example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/alertRules/rule1
/// ```
class AlertRuleThreatIntelligence extends pulumi.CustomResource {
  /// The GUID of the alert rule template which is used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  late final pulumi.Output<String> alertRuleTemplateGuid;
  /// Whether the Threat Intelligence Alert rule enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The ID of the Log Analytics Workspace this Sentinel Threat Intelligence Alert Rule belongs to. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [AlertRuleThreatIntelligence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertRuleThreatIntelligence]. {@macro pulumi_sentinel_alert_rule_threat_intelligence_alert_rule_threat_intelligence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertRuleThreatIntelligence(
    String name, {
    AlertRuleThreatIntelligenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleThreatIntelligence:AlertRuleThreatIntelligence',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertRuleTemplateGuid = registerOutput<String>('alertRuleTemplateGuid');
    enabled = registerOutput<bool?>('enabled');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [AlertRuleThreatIntelligence] resource's state with the given [name] and [id].
  static AlertRuleThreatIntelligence get(
    String name,
    pulumi.Input<String> id, {
    AlertRuleThreatIntelligenceState? state,
  }) {
    return AlertRuleThreatIntelligence._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertRuleThreatIntelligence._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleThreatIntelligence:AlertRuleThreatIntelligence',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertRuleTemplateGuid = registerOutput<String>('alertRuleTemplateGuid');
    enabled = registerOutput<bool?>('enabled');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
  }
}
