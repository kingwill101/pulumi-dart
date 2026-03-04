import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_anomaly_built_in_args.dart';
import 'alert_rule_anomaly_built_in_state.dart';

/// ## Disclaimers
///
/// &gt; **Note:** A Built-in Anomaly Alert Rule could not be deleted. delete a Terraform managed Built-in Anomaly Alert Rule will cause the Built-in Anomaly Alert Rule to be disabled.
///
/// Manages a Built-in Anomaly Alert Rule.
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
/// const exampleAlertRuleAnomalyBuiltIn = new azure.sentinel.AlertRuleAnomalyBuiltIn("example", {
///     displayName: "Potential data staging",
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
///     mode: "Production",
///     enabled: false,
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
///     name="example-law",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="PerGB2018")
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example",
///     workspace_id=example_analytics_workspace.id,
///     customer_managed_key_enabled=False)
/// example = azure.sentinel.get_alert_rule_anomaly_output(log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     display_name="Potential data staging")
/// example_alert_rule_anomaly_built_in = azure.sentinel.AlertRuleAnomalyBuiltIn("example",
///     display_name="Potential data staging",
///     log_analytics_workspace_id=example_analytics_workspace.id,
///     mode="Production",
///     enabled=False)
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
///     var exampleAlertRuleAnomalyBuiltIn = new Azure.Sentinel.AlertRuleAnomalyBuiltIn("example", new()
///     {
///         DisplayName = "Potential data staging",
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///         Mode = "Production",
///         Enabled = false,
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
/// 		_ = sentinel.GetAlertRuleAnomalyOutput(ctx, sentinel.GetAlertRuleAnomalyOutputArgs{
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			DisplayName:             pulumi.String("Potential data staging"),
/// 		}, nil)
/// 		_, err = sentinel.NewAlertRuleAnomalyBuiltIn(ctx, "example", &sentinel.AlertRuleAnomalyBuiltInArgs{
/// 			DisplayName:             pulumi.String("Potential data staging"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 			Mode:                    pulumi.String("Production"),
/// 			Enabled:                 pulumi.Bool(false),
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
/// import com.pulumi.azure.sentinel.SentinelFunctions;
/// import com.pulumi.azure.sentinel.inputs.GetAlertRuleAnomalyArgs;
/// import com.pulumi.azure.sentinel.AlertRuleAnomalyBuiltIn;
/// import com.pulumi.azure.sentinel.AlertRuleAnomalyBuiltInArgs;
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
///         var exampleAlertRuleAnomalyBuiltIn = new AlertRuleAnomalyBuiltIn("exampleAlertRuleAnomalyBuiltIn", AlertRuleAnomalyBuiltInArgs.builder()
///             .displayName("Potential data staging")
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .mode("Production")
///             .enabled(false)
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
///   exampleAlertRuleAnomalyBuiltIn:
///     type: azure:sentinel:AlertRuleAnomalyBuiltIn
///     name: example
///     properties:
///       displayName: Potential data staging
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///       mode: Production
///       enabled: false
/// variables:
///   example:
///     fn::invoke:
///       function: azure:sentinel:getAlertRuleAnomaly
///       arguments:
///         logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///         displayName: Potential data staging
/// ```
///
///
/// ## Import
///
/// Built In Anomaly Alert Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/alertRuleAnomalyBuiltIn:AlertRuleAnomalyBuiltIn example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/securityMLAnalyticsSettings/setting1
/// ```
class AlertRuleAnomalyBuiltIn extends pulumi.CustomResource {
  /// The version of the Anomaly Security ML Analytics Settings.
  late final pulumi.Output<int> anomalySettingsVersion;

  /// The anomaly version of the Anomaly Alert Rule.
  late final pulumi.Output<String> anomalyVersion;

  /// The description of the threshold observation.
  late final pulumi.Output<String> description;

  /// The Display Name of the built-in Anomaly Alert Rule.
  ///
  /// &gt; **Note:** One of `name` or `display_name` block must be specified.
  late final pulumi.Output<String> displayName;

  /// Should the Built-in Anomaly Alert Rule be enabled?
  late final pulumi.Output<bool> enabled;

  /// The frequency the Anomaly Alert Rule will be run.
  late final pulumi.Output<String> frequency;

  /// The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;

  /// mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  late final pulumi.Output<String> mode;

  /// A list of `multi_select_observation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> multiSelectObservations;

  /// The Name of the built-in Anomaly Alert Rule.
  late final pulumi.Output<String> name;

  /// A list of `prioritized_exclude_observation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>>
  prioritizedExcludeObservations;

  /// A `required_data_connector` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> requiredDataConnectors;

  /// The ID of the anomaly settings definition Id.
  late final pulumi.Output<String> settingsDefinitionId;

  /// A list of `single_select_observation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> singleSelectObservations;

  /// A list of categories of attacks by which to classify the rule.
  late final pulumi.Output<List<String>> tactics;

  /// A list of techniques of attacks by which to classify the rule.
  late final pulumi.Output<List<String>> techniques;

  /// A list of `threshold_observation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> thresholdObservations;

  /// Creates a new [AlertRuleAnomalyBuiltIn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertRuleAnomalyBuiltIn]. {@macro pulumi_sentinel_alert_rule_anomaly_built_in_alert_rule_anomaly_built_in_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertRuleAnomalyBuiltIn(
    String name, {
    AlertRuleAnomalyBuiltInArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:sentinel/alertRuleAnomalyBuiltIn:AlertRuleAnomalyBuiltIn',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    anomalySettingsVersion = registerOutput<int>('anomalySettingsVersion');
    anomalyVersion = registerOutput<String>('anomalyVersion');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    frequency = registerOutput<String>('frequency');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    mode = registerOutput<String>('mode');
    multiSelectObservations = registerOutput<List<Map<String, dynamic>>>(
      'multiSelectObservations',
    );
    this.name = registerOutput<String>('name');
    prioritizedExcludeObservations = registerOutput<List<Map<String, dynamic>>>(
      'prioritizedExcludeObservations',
    );
    requiredDataConnectors = registerOutput<List<Map<String, dynamic>>>(
      'requiredDataConnectors',
    );
    settingsDefinitionId = registerOutput<String>('settingsDefinitionId');
    singleSelectObservations = registerOutput<List<Map<String, dynamic>>>(
      'singleSelectObservations',
    );
    tactics = registerOutput<List<String>>('tactics');
    techniques = registerOutput<List<String>>('techniques');
    thresholdObservations = registerOutput<List<Map<String, dynamic>>>(
      'thresholdObservations',
    );
  }

  /// Gets an existing [AlertRuleAnomalyBuiltIn] resource's state with the given [name] and [id].
  static AlertRuleAnomalyBuiltIn get(
    String name,
    pulumi.Input<String> id, {
    AlertRuleAnomalyBuiltInState? state,
  }) {
    return AlertRuleAnomalyBuiltIn._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertRuleAnomalyBuiltIn._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:sentinel/alertRuleAnomalyBuiltIn:AlertRuleAnomalyBuiltIn',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    anomalySettingsVersion = registerOutput<int>('anomalySettingsVersion');
    anomalyVersion = registerOutput<String>('anomalyVersion');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    frequency = registerOutput<String>('frequency');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    mode = registerOutput<String>('mode');
    multiSelectObservations = registerOutput<List<Map<String, dynamic>>>(
      'multiSelectObservations',
    );
    this.name = registerOutput<String>('name');
    prioritizedExcludeObservations = registerOutput<List<Map<String, dynamic>>>(
      'prioritizedExcludeObservations',
    );
    requiredDataConnectors = registerOutput<List<Map<String, dynamic>>>(
      'requiredDataConnectors',
    );
    settingsDefinitionId = registerOutput<String>('settingsDefinitionId');
    singleSelectObservations = registerOutput<List<Map<String, dynamic>>>(
      'singleSelectObservations',
    );
    tactics = registerOutput<List<String>>('tactics');
    techniques = registerOutput<List<String>>('techniques');
    thresholdObservations = registerOutput<List<Map<String, dynamic>>>(
      'thresholdObservations',
    );
  }
}
