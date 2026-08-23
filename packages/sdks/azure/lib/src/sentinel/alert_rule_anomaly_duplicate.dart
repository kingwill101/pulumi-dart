import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_anomaly_duplicate_args.dart';
import 'alert_rule_anomaly_duplicate_state.dart';

/// Manages a Duplicated Anomaly Alert Rule.
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
///     displayName: "UEBA Anomalous Sign In",
/// });
/// const exampleAlertRuleAnomalyDuplicate = new azure.sentinel.AlertRuleAnomalyDuplicate("example", {
///     displayName: "example duplicated UEBA Anomalous Sign In",
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
///     builtInRuleId: example.apply(example => example.id),
///     enabled: true,
///     mode: "Flighting",
///     thresholdObservations: [{
///         name: "Anomaly score threshold",
///         value: "0.6",
///     }],
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
///     display_name="UEBA Anomalous Sign In")
/// example_alert_rule_anomaly_duplicate = azure.sentinel.AlertRuleAnomalyDuplicate("example",
///     display_name="example duplicated UEBA Anomalous Sign In",
///     log_analytics_workspace_id=example_analytics_workspace.id,
///     built_in_rule_id=example.id,
///     enabled=True,
///     mode="Flighting",
///     threshold_observations=[{
///         "name": "Anomaly score threshold",
///         "value": "0.6",
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
///         DisplayName = "UEBA Anomalous Sign In",
///     });
///
///     var exampleAlertRuleAnomalyDuplicate = new Azure.Sentinel.AlertRuleAnomalyDuplicate("example", new()
///     {
///         DisplayName = "example duplicated UEBA Anomalous Sign In",
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///         BuiltInRuleId = example.Apply(getAlertRuleAnomalyResult => getAlertRuleAnomalyResult.Id),
///         Enabled = true,
///         Mode = "Flighting",
///         ThresholdObservations = new[]
///         {
///             new Azure.Sentinel.Inputs.AlertRuleAnomalyDuplicateThresholdObservationArgs
///             {
///                 Name = "Anomaly score threshold",
///                 Value = "0.6",
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
/// 			DisplayName:             pulumi.String("UEBA Anomalous Sign In"),
/// 		}, nil)
/// 		_, err = sentinel.NewAlertRuleAnomalyDuplicate(ctx, "example", &sentinel.AlertRuleAnomalyDuplicateArgs{
/// 			DisplayName:             pulumi.String("example duplicated UEBA Anomalous Sign In"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 			BuiltInRuleId: pulumi.String(example.ApplyT(func(example sentinel.GetAlertRuleAnomalyResult) (*string, error) {
/// 				return example.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Enabled: pulumi.Bool(true),
/// 			Mode:    pulumi.String("Flighting"),
/// 			ThresholdObservations: sentinel.AlertRuleAnomalyDuplicateThresholdObservationArray{
/// 				&sentinel.AlertRuleAnomalyDuplicateThresholdObservationArgs{
/// 					Name:  pulumi.String("Anomaly score threshold"),
/// 					Value: pulumi.String("0.6"),
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
///   display_name               = "UEBA Anomalous Sign In"
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
/// resource "azure_sentinel_alertruleanomalyduplicate" "example" {
///   display_name               = "example duplicated UEBA Anomalous Sign In"
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
///   built_in_rule_id           = data.azure_sentinel_getalertruleanomaly.example.id
///   enabled                    = true
///   mode                       = "Flighting"
///   threshold_observations {
///     name  = "Anomaly score threshold"
///     value = "0.6"
///   }
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
/// import com.pulumi.azure.sentinel.AlertRuleAnomalyDuplicate;
/// import com.pulumi.azure.sentinel.AlertRuleAnomalyDuplicateArgs;
/// import com.pulumi.azure.sentinel.inputs.AlertRuleAnomalyDuplicateThresholdObservationArgs;
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
///             .displayName("UEBA Anomalous Sign In")
///             .build());
///
///         var exampleAlertRuleAnomalyDuplicate = new AlertRuleAnomalyDuplicate("exampleAlertRuleAnomalyDuplicate", AlertRuleAnomalyDuplicateArgs.builder()
///             .displayName("example duplicated UEBA Anomalous Sign In")
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .builtInRuleId(example.applyValue(_example -> _example.id()))
///             .enabled(true)
///             .mode("Flighting")
///             .thresholdObservations(AlertRuleAnomalyDuplicateThresholdObservationArgs.builder()
///                 .name("Anomaly score threshold")
///                 .value("0.6")
///                 .build())
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
///   exampleAlertRuleAnomalyDuplicate:
///     type: azure:sentinel:AlertRuleAnomalyDuplicate
///     name: example
///     properties:
///       displayName: example duplicated UEBA Anomalous Sign In
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///       builtInRuleId: ${example.id}
///       enabled: true
///       mode: Flighting
///       thresholdObservations:
///         - name: Anomaly score threshold
///           value: '0.6'
/// variables:
///   example:
///     fn::invoke:
///       function: azure:sentinel:getAlertRuleAnomaly
///       arguments:
///         logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///         displayName: UEBA Anomalous Sign In
/// ```
///
///
/// ## Import
///
/// Built In Anomaly Alert Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/alertRuleAnomalyDuplicate:AlertRuleAnomalyDuplicate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/securityMLAnalyticsSettings/setting1
/// ```
class AlertRuleAnomalyDuplicate extends pulumi.CustomResource {
  /// The version of the Anomaly Security ML Analytics Settings.
  late final pulumi.Output<int> anomalySettingsVersion;
  /// The anomaly version of the Anomaly Alert Rule.
  late final pulumi.Output<String> anomalyVersion;
  /// The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  late final pulumi.Output<String> builtInRuleId;
  /// The description of the Anomaly Alert Rule.
  late final pulumi.Output<String> description;
  /// The Display Name of the built-in Anomaly Alert Rule.
  late final pulumi.Output<String> displayName;
  /// Should the Duplicated Anomaly Alert Rule be enabled?
  late final pulumi.Output<bool> enabled;
  /// The frequency the Anomaly Alert Rule will be run, such as "P1D".
  late final pulumi.Output<String> frequency;
  /// Whether the current settings of the Anomaly Alert Rule equals default settings.
  late final pulumi.Output<bool> isDefaultSettings;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  late final pulumi.Output<String> mode;
  /// A list of `multiSelectObservation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> multiSelectObservations;
  late final pulumi.Output<String> name;
  /// A list of `prioritizedExcludeObservation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> prioritizedExcludeObservations;
  /// A `requiredDataConnector` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> requiredDataConnectors;
  /// The ID of the anomaly settings definition Id.
  late final pulumi.Output<String> settingsDefinitionId;
  /// A list of `singleSelectObservation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> singleSelectObservations;
  /// A list of categories of attacks by which to classify the rule.
  late final pulumi.Output<List<String>> tactics;
  /// A list of techniques of attacks by which to classify the rule.
  late final pulumi.Output<List<String>> techniques;
  /// A list of `thresholdObservation` blocks as defined below.
  ///
  /// &gt; **Note:** un-specified `multiSelectObservation`, `singleSelectObservation`, `prioritizedExcludeObservation` and `thresholdObservation` will be inherited from the built-in Anomaly Alert Rule.
  late final pulumi.Output<List<Map<String, dynamic>>> thresholdObservations;

  /// Creates a new [AlertRuleAnomalyDuplicate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertRuleAnomalyDuplicate]. {@macro pulumi_sentinel_alert_rule_anomaly_duplicate_alert_rule_anomaly_duplicate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertRuleAnomalyDuplicate(
    String name, {
    AlertRuleAnomalyDuplicateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleAnomalyDuplicate:AlertRuleAnomalyDuplicate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    anomalySettingsVersion = registerOutput<int>('anomalySettingsVersion');
    anomalyVersion = registerOutput<String>('anomalyVersion');
    builtInRuleId = registerOutput<String>('builtInRuleId');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    frequency = registerOutput<String>('frequency');
    isDefaultSettings = registerOutput<bool>('isDefaultSettings');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    mode = registerOutput<String>('mode');
    multiSelectObservations = registerOutput<List<Map<String, dynamic>>>('multiSelectObservations');
    this.name = registerOutput<String>('name');
    prioritizedExcludeObservations = registerOutput<List<Map<String, dynamic>>>('prioritizedExcludeObservations');
    requiredDataConnectors = registerOutput<List<Map<String, dynamic>>>('requiredDataConnectors');
    settingsDefinitionId = registerOutput<String>('settingsDefinitionId');
    singleSelectObservations = registerOutput<List<Map<String, dynamic>>>('singleSelectObservations');
    tactics = registerOutput<List<String>>('tactics');
    techniques = registerOutput<List<String>>('techniques');
    thresholdObservations = registerOutput<List<Map<String, dynamic>>>('thresholdObservations');
  }

  /// Gets an existing [AlertRuleAnomalyDuplicate] resource's state with the given [name] and [id].
  static AlertRuleAnomalyDuplicate get(
    String name,
    pulumi.Input<String> id, {
    AlertRuleAnomalyDuplicateState? state,
  }) {
    return AlertRuleAnomalyDuplicate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertRuleAnomalyDuplicate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/alertRuleAnomalyDuplicate:AlertRuleAnomalyDuplicate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    anomalySettingsVersion = registerOutput<int>('anomalySettingsVersion');
    anomalyVersion = registerOutput<String>('anomalyVersion');
    builtInRuleId = registerOutput<String>('builtInRuleId');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    frequency = registerOutput<String>('frequency');
    isDefaultSettings = registerOutput<bool>('isDefaultSettings');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    mode = registerOutput<String>('mode');
    multiSelectObservations = registerOutput<List<Map<String, dynamic>>>('multiSelectObservations');
    this.name = registerOutput<String>('name');
    prioritizedExcludeObservations = registerOutput<List<Map<String, dynamic>>>('prioritizedExcludeObservations');
    requiredDataConnectors = registerOutput<List<Map<String, dynamic>>>('requiredDataConnectors');
    settingsDefinitionId = registerOutput<String>('settingsDefinitionId');
    singleSelectObservations = registerOutput<List<Map<String, dynamic>>>('singleSelectObservations');
    tactics = registerOutput<List<String>>('tactics');
    techniques = registerOutput<List<String>>('techniques');
    thresholdObservations = registerOutput<List<Map<String, dynamic>>>('thresholdObservations');
  }
}
