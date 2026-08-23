import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_rule_anomaly_args.dart';
import 'get_alert_rule_anomaly_result.dart';
import 'get_alert_rule_args.dart';
import 'get_alert_rule_result.dart';
import 'get_alert_rule_template_args.dart';
import 'get_alert_rule_template_result.dart';

/// Use this data source to access information about an existing Sentinel Alert Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.operationalinsights.getAnalyticsWorkspace({
///     name: "example",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetAlertRule = example.then(example => azure.sentinel.getAlertRule({
///     name: "existing",
///     logAnalyticsWorkspaceId: example.id,
/// }));
/// export const id = exampleGetAlertRule.then(exampleGetAlertRule => exampleGetAlertRule.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.operationalinsights.get_analytics_workspace(name="example",
///     resource_group_name="example-resources")
/// example_get_alert_rule = azure.sentinel.get_alert_rule(name="existing",
///     log_analytics_workspace_id=example.id)
/// pulumi.export("id", example_get_alert_rule.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.OperationalInsights.GetAnalyticsWorkspace.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetAlertRule = Azure.Sentinel.GetAlertRule.Invoke(new()
///     {
///         Name = "existing",
///         LogAnalyticsWorkspaceId = example.Apply(getAnalyticsWorkspaceResult => getAnalyticsWorkspaceResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetAlertRule.Apply(getAlertRuleResult => getAlertRuleResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := operationalinsights.LookupAnalyticsWorkspace(ctx, &operationalinsights.LookupAnalyticsWorkspaceArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetAlertRule, err := sentinel.GetAlertRule(ctx, &sentinel.GetAlertRuleArgs{
/// 			Name:                    "existing",
/// 			LogAnalyticsWorkspaceId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetAlertRule.Id)
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
/// data "azure_operationalinsights_getanalyticsworkspace" "example" {
///   name                = "example"
///   resource_group_name = "example-resources"
/// }
/// data "azure_sentinel_getalertrule" "exampleGetAlertRule" {
///   name                       = "existing"
///   log_analytics_workspace_id = data.azure_operationalinsights_getanalyticsworkspace.example.id
/// }
///
/// output "id" {
///   value = data.azure_sentinel_getalertrule.exampleGetAlertRule.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.operationalinsights.OperationalinsightsFunctions;
/// import com.pulumi.azure.operationalinsights.inputs.GetAnalyticsWorkspaceArgs;
/// import com.pulumi.azure.sentinel.SentinelFunctions;
/// import com.pulumi.azure.sentinel.inputs.GetAlertRuleArgs;
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
///         final var example = OperationalinsightsFunctions.getAnalyticsWorkspace(GetAnalyticsWorkspaceArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetAlertRule = SentinelFunctions.getAlertRule(GetAlertRuleArgs.builder()
///             .name("existing")
///             .logAnalyticsWorkspaceId(example.id())
///             .build());
///
///         ctx.export("id", exampleGetAlertRule.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:operationalinsights:getAnalyticsWorkspace
///       arguments:
///         name: example
///         resourceGroupName: example-resources
///   exampleGetAlertRule:
///     fn::invoke:
///       function: azure:sentinel:getAlertRule
///       arguments:
///         name: existing
///         logAnalyticsWorkspaceId: ${example.id}
/// outputs:
///   id: ${exampleGetAlertRule.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2023-12-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_sentinel_get_alert_rule_get_alert_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertRuleResult> getAlertRule(
  GetAlertRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:sentinel/getAlertRule:getAlertRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertRuleResult.fromMap(result);
}

/// Use this data source to access information about an existing Anomaly Alert Rule.
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
///     name: "example-law",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "PerGB2018",
/// });
/// const exampleLogAnalyticsWorkspaceOnboarding = new azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", {
///     workspaceId: exampleAnalyticsWorkspace.id,
///     customerManagedKeyEnabled: false,
/// });
/// const example = azure.sentinel.getAlertRuleAnomalyOutput({
///     logAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
///     displayName: "Potential data staging",
/// });
/// export const id = example.apply(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-law",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="PerGB2018")
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example",
///     workspace_id=example_analytics_workspace.id,
///     customer_managed_key_enabled=False)
/// example = azure.sentinel.get_alert_rule_anomaly_output(log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     display_name="Potential data staging")
/// pulumi.export("id", example.id)
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
///         Name = "example-law",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleLogAnalyticsWorkspaceOnboarding = new Azure.Sentinel.LogAnalyticsWorkspaceOnboarding("example", new()
///     {
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///         CustomerManagedKeyEnabled = false,
///     });
///
///     var example = Azure.Sentinel.GetAlertRuleAnomaly.Invoke(new()
///     {
///         LogAnalyticsWorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///         DisplayName = "Potential data staging",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAlertRuleAnomalyResult => getAlertRuleAnomalyResult.Id),
///     };
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
/// 			Name:              pulumi.String("example-law"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogAnalyticsWorkspaceOnboarding, err := sentinel.NewLogAnalyticsWorkspaceOnboarding(ctx, "example", &sentinel.LogAnalyticsWorkspaceOnboardingArgs{
/// 			WorkspaceId:               exampleAnalyticsWorkspace.ID(),
/// 			CustomerManagedKeyEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := sentinel.GetAlertRuleAnomalyOutput(ctx, sentinel.GetAlertRuleAnomalyOutputArgs{
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			DisplayName:             pulumi.String("Potential data staging"),
/// 		}, nil)
/// 		ctx.Export("id", example.ApplyT(func(example sentinel.GetAlertRuleAnomalyResult) (*string, error) {
/// 			return example.Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// data "azure_sentinel_getalertruleanomaly" "example" {
///   log_analytics_workspace_id = azure_sentinel_loganalyticsworkspaceonboarding.example.workspace_id
///   display_name               = "Potential data staging"
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example-law"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
/// }
/// resource "azure_sentinel_loganalyticsworkspaceonboarding" "example" {
///   workspace_id                 = azure_operationalinsights_analyticsworkspace.example.id
///   customer_managed_key_enabled = false
/// }
/// output "id" {
///   value = data.azure_sentinel_getalertruleanomaly.example.id
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
/// import com.pulumi.azure.sentinel.SentinelFunctions;
/// import com.pulumi.azure.sentinel.inputs.GetAlertRuleAnomalyArgs;
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
///             .name("example-law")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleLogAnalyticsWorkspaceOnboarding = new LogAnalyticsWorkspaceOnboarding("exampleLogAnalyticsWorkspaceOnboarding", LogAnalyticsWorkspaceOnboardingArgs.builder()
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .customerManagedKeyEnabled(false)
///             .build());
///
///         final var example = SentinelFunctions.getAlertRuleAnomaly(GetAlertRuleAnomalyArgs.builder()
///             .logAnalyticsWorkspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
///             .displayName("Potential data staging")
///             .build());
///
///         ctx.export("id", example.applyValue(_example -> _example.id()));
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
///       name: example-law
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: PerGB2018
///   exampleLogAnalyticsWorkspaceOnboarding:
///     type: azure:sentinel:LogAnalyticsWorkspaceOnboarding
///     name: example
///     properties:
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///       customerManagedKeyEnabled: false
/// variables:
///   example:
///     fn::invoke:
///       function: azure:sentinel:getAlertRuleAnomaly
///       arguments:
///         logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///         displayName: Potential data staging
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sentinel_get_alert_rule_anomaly_get_alert_rule_anomaly_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertRuleAnomalyResult> getAlertRuleAnomaly(
  GetAlertRuleAnomalyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:sentinel/getAlertRuleAnomaly:getAlertRuleAnomaly',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertRuleAnomalyResult.fromMap(result);
}

/// Use this data source to access information about an existing Sentinel Alert Rule Template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.sentinel.getAlertRuleTemplate({
///     logAnalyticsWorkspaceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1",
///     displayName: "Create incidents based on Azure Security Center for IoT alerts",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.sentinel.get_alert_rule_template(log_analytics_workspace_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1",
///     display_name="Create incidents based on Azure Security Center for IoT alerts")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Sentinel.GetAlertRuleTemplate.Invoke(new()
///     {
///         LogAnalyticsWorkspaceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1",
///         DisplayName = "Create incidents based on Azure Security Center for IoT alerts",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAlertRuleTemplateResult => getAlertRuleTemplateResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sentinel.GetAlertRuleTemplate(ctx, &sentinel.GetAlertRuleTemplateArgs{
/// 			LogAnalyticsWorkspaceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1",
/// 			DisplayName:             pulumi.StringRef("Create incidents based on Azure Security Center for IoT alerts"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
///   log_analytics_workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1"
///   display_name               = "Create incidents based on Azure Security Center for IoT alerts"
/// }
///
/// output "id" {
///   value = data.azure_sentinel_getalertruletemplate.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.sentinel.SentinelFunctions;
/// import com.pulumi.azure.sentinel.inputs.GetAlertRuleTemplateArgs;
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
///         final var example = SentinelFunctions.getAlertRuleTemplate(GetAlertRuleTemplateArgs.builder()
///             .logAnalyticsWorkspaceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1")
///             .displayName("Create incidents based on Azure Security Center for IoT alerts")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:sentinel:getAlertRuleTemplate
///       arguments:
///         logAnalyticsWorkspaceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1
///         displayName: Create incidents based on Azure Security Center for IoT alerts
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sentinel_get_alert_rule_template_get_alert_rule_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertRuleTemplateResult> getAlertRuleTemplate(
  GetAlertRuleTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:sentinel/getAlertRuleTemplate:getAlertRuleTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertRuleTemplateResult.fromMap(result);
}
