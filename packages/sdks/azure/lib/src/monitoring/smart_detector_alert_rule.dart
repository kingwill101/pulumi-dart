import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_detector_alert_rule_action_group.dart';
import 'smart_detector_alert_rule_args.dart';
import 'smart_detector_alert_rule_state.dart';

/// Manages an Monitor Smart Detector Alert Rule.
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
///     name: "example-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "example-action-group",
///     resourceGroupName: example.name,
///     shortName: "example",
/// });
/// const exampleSmartDetectorAlertRule = new azure.monitoring.SmartDetectorAlertRule("example", {
///     name: "example-smart-detector-alert-rule",
///     resourceGroupName: example.name,
///     severity: "Sev0",
///     scopeResourceIds: [exampleInsights.id],
///     frequency: "PT1M",
///     detectorType: "FailureAnomaliesDetector",
///     actionGroup: {
///         ids: [exampleActionGroup.id],
///     },
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
///     name="example-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="example-action-group",
///     resource_group_name=example.name,
///     short_name="example")
/// example_smart_detector_alert_rule = azure.monitoring.SmartDetectorAlertRule("example",
///     name="example-smart-detector-alert-rule",
///     resource_group_name=example.name,
///     severity="Sev0",
///     scope_resource_ids=[example_insights.id],
///     frequency="PT1M",
///     detector_type="FailureAnomaliesDetector",
///     action_group={
///         "ids": [example_action_group.id],
///     })
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
///         Name = "example-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleActionGroup = new Azure.Monitoring.ActionGroup("example", new()
///     {
///         Name = "example-action-group",
///         ResourceGroupName = example.Name,
///         ShortName = "example",
///     });
///
///     var exampleSmartDetectorAlertRule = new Azure.Monitoring.SmartDetectorAlertRule("example", new()
///     {
///         Name = "example-smart-detector-alert-rule",
///         ResourceGroupName = example.Name,
///         Severity = "Sev0",
///         ScopeResourceIds = new[]
///         {
///             exampleInsights.Id,
///         },
///         Frequency = "PT1M",
///         DetectorType = "FailureAnomaliesDetector",
///         ActionGroup = new Azure.Monitoring.Inputs.SmartDetectorAlertRuleActionGroupArgs
///         {
///             Ids = new[]
///             {
///                 exampleActionGroup.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
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
/// 			Name:              pulumi.String("example-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleActionGroup, err := monitoring.NewActionGroup(ctx, "example", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("example-action-group"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSmartDetectorAlertRule(ctx, "example", &monitoring.SmartDetectorAlertRuleArgs{
/// 			Name:              pulumi.String("example-smart-detector-alert-rule"),
/// 			ResourceGroupName: example.Name,
/// 			Severity:          pulumi.String("Sev0"),
/// 			ScopeResourceIds: pulumi.StringArray{
/// 				exampleInsights.ID(),
/// 			},
/// 			Frequency:    pulumi.String("PT1M"),
/// 			DetectorType: pulumi.String("FailureAnomaliesDetector"),
/// 			ActionGroup: &monitoring.SmartDetectorAlertRuleActionGroupArgs{
/// 				Ids: pulumi.StringArray{
/// 					exampleActionGroup.ID(),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "example-appinsights"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_monitoring_actiongroup" "example" {
///   name                = "example-action-group"
///   resource_group_name = azure_core_resourcegroup.example.name
///   short_name          = "example"
/// }
/// resource "azure_monitoring_smartdetectoralertrule" "example" {
///   name                = "example-smart-detector-alert-rule"
///   resource_group_name = azure_core_resourcegroup.example.name
///   severity            = "Sev0"
///   scope_resource_ids  = [azure_appinsights_insights.example.id]
///   frequency           = "PT1M"
///   detector_type       = "FailureAnomaliesDetector"
///   action_group = {
///     ids = [azure_monitoring_actiongroup.example.id]
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.monitoring.SmartDetectorAlertRule;
/// import com.pulumi.azure.monitoring.SmartDetectorAlertRuleArgs;
/// import com.pulumi.azure.monitoring.inputs.SmartDetectorAlertRuleActionGroupArgs;
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
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleActionGroup = new ActionGroup("exampleActionGroup", ActionGroupArgs.builder()
///             .name("example-action-group")
///             .resourceGroupName(example.name())
///             .shortName("example")
///             .build());
///
///         var exampleSmartDetectorAlertRule = new SmartDetectorAlertRule("exampleSmartDetectorAlertRule", SmartDetectorAlertRuleArgs.builder()
///             .name("example-smart-detector-alert-rule")
///             .resourceGroupName(example.name())
///             .severity("Sev0")
///             .scopeResourceIds(exampleInsights.id())
///             .frequency("PT1M")
///             .detectorType("FailureAnomaliesDetector")
///             .actionGroup(SmartDetectorAlertRuleActionGroupArgs.builder()
///                 .ids(exampleActionGroup.id())
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
///       name: example-resources
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleActionGroup:
///     type: azure:monitoring:ActionGroup
///     name: example
///     properties:
///       name: example-action-group
///       resourceGroupName: ${example.name}
///       shortName: example
///   exampleSmartDetectorAlertRule:
///     type: azure:monitoring:SmartDetectorAlertRule
///     name: example
///     properties:
///       name: example-smart-detector-alert-rule
///       resourceGroupName: ${example.name}
///       severity: Sev0
///       scopeResourceIds:
///         - ${exampleInsights.id}
///       frequency: PT1M
///       detectorType: FailureAnomaliesDetector
///       actionGroup:
///         ids:
///           - ${exampleActionGroup.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AlertsManagement` - 2019-06-01
///
/// ## Import
///
/// Monitor Smart Detector Alert Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/smartDetectorAlertRule:SmartDetectorAlertRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AlertsManagement/smartDetectorAlertRules/rule1
/// ```
class SmartDetectorAlertRule extends pulumi.CustomResource {
  /// An `actionGroup` block as defined below.
  late final pulumi.Output<SmartDetectorAlertRuleActionGroup> actionGroup;
  /// Specifies a description for the Smart Detector Alert Rule.
  late final pulumi.Output<String?> description;
  /// Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`.
  late final pulumi.Output<String> detectorType;
  /// Is the Smart Detector Alert Rule enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format.
  late final pulumi.Output<String> frequency;
  /// Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the scopes of this Smart Detector Alert Rule.
  late final pulumi.Output<List<String>> scopeResourceIds;
  /// Specifies the severity of this Smart Detector Alert Rule. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3` or `Sev4`.
  late final pulumi.Output<String> severity;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again.
  late final pulumi.Output<String?> throttlingDuration;

  /// Creates a new [SmartDetectorAlertRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmartDetectorAlertRule]. {@macro pulumi_monitoring_smart_detector_alert_rule_smart_detector_alert_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmartDetectorAlertRule(
    String name, {
    SmartDetectorAlertRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/smartDetectorAlertRule:SmartDetectorAlertRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionGroup = registerOutput<SmartDetectorAlertRuleActionGroup>('actionGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SmartDetectorAlertRuleActionGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    detectorType = registerOutput<String>('detectorType');
    enabled = registerOutput<bool?>('enabled');
    frequency = registerOutput<String>('frequency');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopeResourceIds = registerOutput<List<String>>('scopeResourceIds');
    severity = registerOutput<String>('severity');
    tags = registerOutput<Map<String, String>?>('tags');
    throttlingDuration = registerOutput<String?>('throttlingDuration');
  }

  /// Gets an existing [SmartDetectorAlertRule] resource's state with the given [name] and [id].
  static SmartDetectorAlertRule get(
    String name,
    pulumi.Input<String> id, {
    SmartDetectorAlertRuleState? state,
  }) {
    return SmartDetectorAlertRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SmartDetectorAlertRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/smartDetectorAlertRule:SmartDetectorAlertRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionGroup = registerOutput<SmartDetectorAlertRuleActionGroup>('actionGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SmartDetectorAlertRuleActionGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    detectorType = registerOutput<String>('detectorType');
    enabled = registerOutput<bool?>('enabled');
    frequency = registerOutput<String>('frequency');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopeResourceIds = registerOutput<List<String>>('scopeResourceIds');
    severity = registerOutput<String>('severity');
    tags = registerOutput<Map<String, String>?>('tags');
    throttlingDuration = registerOutput<String?>('throttlingDuration');
  }
}
