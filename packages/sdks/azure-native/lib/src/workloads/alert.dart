import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_args.dart';
import 'alert_rule_properties_response.dart';
import 'error_detail_response.dart';
import 'system_data_response.dart';

/// A alert associated with SAP monitor.
///
/// Uses Azure REST API version 2024-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates an Alert
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alert = new AzureNative.Workloads.Alert("alert", new()
///     {
///         AlertName = "myAlert",
///         AlertRuleProperties = new AzureNative.Workloads.Inputs.AlertRulePropertiesArgs
///         {
///             ActionGroups = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup1",
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup2",
///             },
///             AlertQueryParameters = new[]
///             {
///                 new AzureNative.Workloads.Inputs.AlertQueryParameterArgs
///                 {
///                     Name = "providerInstance",
///                     Value = "",
///                 },
///                 new AzureNative.Workloads.Inputs.AlertQueryParameterArgs
///                 {
///                     Name = "workType",
///                     Value = "",
///                 },
///             },
///             AutoMitigate = AzureNative.Workloads.AlertAutoMitigate.Disable,
///             Dimension = "cpu",
///             EvaluationFrequency = 5,
///             FailingPeriodsOperator = AzureNative.Workloads.ConditionalOperator.GreaterThan,
///             FailingPeriodsToAlert = 3,
///             MuteActionsDuration = 0,
///             Severity = 3,
///             Status = AzureNative.Workloads.AlertRuleStatus.Enabled,
///             Threshold = 80,
///             ThresholdOperator = AzureNative.Workloads.ConditionalOperator.GreaterThan,
///             WindowSize = 15,
///         },
///         MonitorName = "mySapMonitor",
///         ProviderNames = new[]
///         {
///             "hana-provider-1",
///             "hana-provider-2",
///         },
///         ProviderType = "SapHana",
///         ResourceGroupName = "myResourceGroup",
///         TemplateName = "saphana-cpu-memory-health",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewAlert(ctx, "alert", &workloads.AlertArgs{
/// 			AlertName: pulumi.String("myAlert"),
/// 			AlertRuleProperties: &workloads.AlertRulePropertiesArgs{
/// 				ActionGroups: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup1"),
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup2"),
/// 				},
/// 				AlertQueryParameters: workloads.AlertQueryParameterArray{
/// 					&workloads.AlertQueryParameterArgs{
/// 						Name:  pulumi.String("providerInstance"),
/// 						Value: pulumi.String(""),
/// 					},
/// 					&workloads.AlertQueryParameterArgs{
/// 						Name:  pulumi.String("workType"),
/// 						Value: pulumi.String(""),
/// 					},
/// 				},
/// 				AutoMitigate:           pulumi.String(workloads.AlertAutoMitigateDisable),
/// 				Dimension:              pulumi.String("cpu"),
/// 				EvaluationFrequency:    pulumi.Int(5),
/// 				FailingPeriodsOperator: pulumi.String(workloads.ConditionalOperatorGreaterThan),
/// 				FailingPeriodsToAlert:  pulumi.Int(3),
/// 				MuteActionsDuration:    pulumi.Int(0),
/// 				Severity:               pulumi.Int(3),
/// 				Status:                 pulumi.String(workloads.AlertRuleStatusEnabled),
/// 				Threshold:              pulumi.Int(80),
/// 				ThresholdOperator:      pulumi.String(workloads.ConditionalOperatorGreaterThan),
/// 				WindowSize:             pulumi.Int(15),
/// 			},
/// 			MonitorName: pulumi.String("mySapMonitor"),
/// 			ProviderNames: pulumi.StringArray{
/// 				pulumi.String("hana-provider-1"),
/// 				pulumi.String("hana-provider-2"),
/// 			},
/// 			ProviderType:      pulumi.String("SapHana"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			TemplateName:      pulumi.String("saphana-cpu-memory-health"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.workloads.Alert;
/// import com.pulumi.azurenative.workloads.AlertArgs;
/// import com.pulumi.azurenative.workloads.inputs.AlertRulePropertiesArgs;
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
///         var alert = new Alert("alert", AlertArgs.builder()
///             .alertName("myAlert")
///             .alertRuleProperties(AlertRulePropertiesArgs.builder()
///                 .actionGroups(
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup1",
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup2")
///                 .alertQueryParameters(
///                     AlertQueryParameterArgs.builder()
///                         .name("providerInstance")
///                         .value("")
///                         .build(),
///                     AlertQueryParameterArgs.builder()
///                         .name("workType")
///                         .value("")
///                         .build())
///                 .autoMitigate("Disable")
///                 .dimension("cpu")
///                 .evaluationFrequency(5)
///                 .failingPeriodsOperator("GreaterThan")
///                 .failingPeriodsToAlert(3)
///                 .muteActionsDuration(0)
///                 .severity(3)
///                 .status("Enabled")
///                 .threshold(80)
///                 .thresholdOperator("GreaterThan")
///                 .windowSize(15)
///                 .build())
///             .monitorName("mySapMonitor")
///             .providerNames(
///                 "hana-provider-1",
///                 "hana-provider-2")
///             .providerType("SapHana")
///             .resourceGroupName("myResourceGroup")
///             .templateName("saphana-cpu-memory-health")
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
/// const alert = new azure_native.workloads.Alert("alert", {
///     alertName: "myAlert",
///     alertRuleProperties: {
///         actionGroups: [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup1",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup2",
///         ],
///         alertQueryParameters: [
///             {
///                 name: "providerInstance",
///                 value: "",
///             },
///             {
///                 name: "workType",
///                 value: "",
///             },
///         ],
///         autoMitigate: azure_native.workloads.AlertAutoMitigate.Disable,
///         dimension: "cpu",
///         evaluationFrequency: 5,
///         failingPeriodsOperator: azure_native.workloads.ConditionalOperator.GreaterThan,
///         failingPeriodsToAlert: 3,
///         muteActionsDuration: 0,
///         severity: 3,
///         status: azure_native.workloads.AlertRuleStatus.Enabled,
///         threshold: 80,
///         thresholdOperator: azure_native.workloads.ConditionalOperator.GreaterThan,
///         windowSize: 15,
///     },
///     monitorName: "mySapMonitor",
///     providerNames: [
///         "hana-provider-1",
///         "hana-provider-2",
///     ],
///     providerType: "SapHana",
///     resourceGroupName: "myResourceGroup",
///     templateName: "saphana-cpu-memory-health",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alert = azure_native.workloads.Alert("alert",
///     alert_name="myAlert",
///     alert_rule_properties={
///         "action_groups": [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup1",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup2",
///         ],
///         "alert_query_parameters": [
///             {
///                 "name": "providerInstance",
///                 "value": "",
///             },
///             {
///                 "name": "workType",
///                 "value": "",
///             },
///         ],
///         "auto_mitigate": azure_native.workloads.AlertAutoMitigate.DISABLE,
///         "dimension": "cpu",
///         "evaluation_frequency": 5,
///         "failing_periods_operator": azure_native.workloads.ConditionalOperator.GREATER_THAN,
///         "failing_periods_to_alert": 3,
///         "mute_actions_duration": 0,
///         "severity": 3,
///         "status": azure_native.workloads.AlertRuleStatus.ENABLED,
///         "threshold": 80,
///         "threshold_operator": azure_native.workloads.ConditionalOperator.GREATER_THAN,
///         "window_size": 15,
///     },
///     monitor_name="mySapMonitor",
///     provider_names=[
///         "hana-provider-1",
///         "hana-provider-2",
///     ],
///     provider_type="SapHana",
///     resource_group_name="myResourceGroup",
///     template_name="saphana-cpu-memory-health")
///
/// ```
///
/// ```yaml
/// resources:
///   alert:
///     type: azure-native:workloads:Alert
///     properties:
///       alertName: myAlert
///       alertRuleProperties:
///         actionGroups:
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup1
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.insights/actiongroups/actiongroup2
///         alertQueryParameters:
///           - name: providerInstance
///             value: ""
///           - name: workType
///             value: ""
///         autoMitigate: Disable
///         dimension: cpu
///         evaluationFrequency: 5
///         failingPeriodsOperator: GreaterThan
///         failingPeriodsToAlert: 3
///         muteActionsDuration: 0
///         severity: 3
///         status: Enabled
///         threshold: 80
///         thresholdOperator: GreaterThan
///         windowSize: 15
///       monitorName: mySapMonitor
///       providerNames:
///         - hana-provider-1
///         - hana-provider-2
///       providerType: SapHana
///       resourceGroupName: myResourceGroup
///       templateName: saphana-cpu-memory-health
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
/// $ pulumi import azure-native:workloads:Alert myAlert /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/monitors/{monitorName}/alerts/{alertName}
/// ```
class Alert extends pulumi.CustomResource {
  /// Describes the properties of an alert.
  late final pulumi.Output<AlertRulePropertiesResponse?> alertRuleProperties;
  /// ID of the alert rule resource created.
  late final pulumi.Output<String> alertRuleResourceId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Defines the alert instance errors.
  late final pulumi.Output<ErrorDetailResponse> errors;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Name of provider instances associated with the alert.
  late final pulumi.Output<List<String>?> providerNames;
  /// The provider type for alert. For example, the value can be SapHana.
  late final pulumi.Output<String?> providerType;
  /// State of provisioning of the alert instance
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Name of the alert template from which it was created.
  late final pulumi.Output<String?> templateName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Alert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alert]. {@macro pulumi_workloads_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alert(
    String name, {
    AlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:workloads:Alert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertRuleProperties = registerOutput<AlertRulePropertiesResponse?>('alertRuleProperties');
    this.alertRuleResourceId = registerOutput<String>('alertRuleResourceId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.errors = registerOutput<ErrorDetailResponse>('errors');
    this.name = registerOutput<String>('name');
    this.providerNames = registerOutput<List<String>?>('providerNames');
    this.providerType = registerOutput<String?>('providerType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.templateName = registerOutput<String?>('templateName');
    this.type = registerOutput<String>('type');
  }
}
