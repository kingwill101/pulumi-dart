import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_definition_response.dart';
import 'summary_log_args.dart';
import 'system_data_response.dart';

/// Workspace data summary rules definition.
///
/// Uses Azure REST API version 2025-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SummaryLogsUpsert
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var summaryLog = new AzureNative.OperationalInsights.SummaryLog("summaryLog", new()
///     {
///         ResourceGroupName = "oiautorest6685",
///         RuleDefinition = new AzureNative.OperationalInsights.Inputs.RuleDefinitionArgs
///         {
///             BinDelay = 10,
///             BinSize = 180,
///             BinStartTime = "2020-02-03T04:05:06Z",
///             DestinationTable = "MyDestinationTable_CL",
///             Query = "MyTable_CL",
///         },
///         RuleType = AzureNative.OperationalInsights.RuleTypeEnum.User,
///         SummaryLogsName = "summarylogs1",
///         WorkspaceName = "oiautorest6685",
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewSummaryLog(ctx, "summaryLog", &operationalinsights.SummaryLogArgs{
/// 			ResourceGroupName: pulumi.String("oiautorest6685"),
/// 			RuleDefinition: &operationalinsights.RuleDefinitionArgs{
/// 				BinDelay:         pulumi.Int(10),
/// 				BinSize:          pulumi.Int(180),
/// 				BinStartTime:     pulumi.String("2020-02-03T04:05:06Z"),
/// 				DestinationTable: pulumi.String("MyDestinationTable_CL"),
/// 				Query:            pulumi.String("MyTable_CL"),
/// 			},
/// 			RuleType:        pulumi.String(operationalinsights.RuleTypeEnumUser),
/// 			SummaryLogsName: pulumi.String("summarylogs1"),
/// 			WorkspaceName:   pulumi.String("oiautorest6685"),
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
/// import com.pulumi.azurenative.operationalinsights.SummaryLog;
/// import com.pulumi.azurenative.operationalinsights.SummaryLogArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.RuleDefinitionArgs;
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
///         var summaryLog = new SummaryLog("summaryLog", SummaryLogArgs.builder()
///             .resourceGroupName("oiautorest6685")
///             .ruleDefinition(RuleDefinitionArgs.builder()
///                 .binDelay(10)
///                 .binSize(180)
///                 .binStartTime("2020-02-03T04:05:06Z")
///                 .destinationTable("MyDestinationTable_CL")
///                 .query("MyTable_CL")
///                 .build())
///             .ruleType("User")
///             .summaryLogsName("summarylogs1")
///             .workspaceName("oiautorest6685")
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
/// const summaryLog = new azure_native.operationalinsights.SummaryLog("summaryLog", {
///     resourceGroupName: "oiautorest6685",
///     ruleDefinition: {
///         binDelay: 10,
///         binSize: 180,
///         binStartTime: "2020-02-03T04:05:06Z",
///         destinationTable: "MyDestinationTable_CL",
///         query: "MyTable_CL",
///     },
///     ruleType: azure_native.operationalinsights.RuleTypeEnum.User,
///     summaryLogsName: "summarylogs1",
///     workspaceName: "oiautorest6685",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// summary_log = azure_native.operationalinsights.SummaryLog("summaryLog",
///     resource_group_name="oiautorest6685",
///     rule_definition={
///         "bin_delay": 10,
///         "bin_size": 180,
///         "bin_start_time": "2020-02-03T04:05:06Z",
///         "destination_table": "MyDestinationTable_CL",
///         "query": "MyTable_CL",
///     },
///     rule_type=azure_native.operationalinsights.RuleTypeEnum.USER,
///     summary_logs_name="summarylogs1",
///     workspace_name="oiautorest6685")
///
/// ```
///
/// ```yaml
/// resources:
///   summaryLog:
///     type: azure-native:operationalinsights:SummaryLog
///     properties:
///       resourceGroupName: oiautorest6685
///       ruleDefinition:
///         binDelay: 10
///         binSize: 180
///         binStartTime: 2020-02-03T04:05:06Z
///         destinationTable: MyDestinationTable_CL
///         query: MyTable_CL
///       ruleType: User
///       summaryLogsName: summarylogs1
///       workspaceName: oiautorest6685
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
/// $ pulumi import azure-native:operationalinsights:SummaryLog summarylogs1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/summaryLogs/{summaryLogsName}
/// ```
class SummaryLog extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the Summary rule.
  late final pulumi.Output<String?> description;
  /// The display name of the Summary rule.
  late final pulumi.Output<String?> displayName;
  /// Indicates if Summary rule is active. If not, Summary rule execution stops.
  late final pulumi.Output<bool> isActive;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Summary rule is in provisioning state. If set to 'updating' or 'deleting', indicates a resource lock due to an ongoing operation, preventing any update to the Summary rule until the operation is complete.
  late final pulumi.Output<String> provisioningState;
  /// Rule definition parameters.
  late final pulumi.Output<RuleDefinitionResponse?> ruleDefinition;
  /// SummaryRules rule type: User.
  late final pulumi.Output<String?> ruleType;
  /// Indicates the reason for rule deactivation.
  late final pulumi.Output<String> statusCode;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SummaryLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SummaryLog]. {@macro pulumi_operationalinsights_summary_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SummaryLog(
    String name, {
    SummaryLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:SummaryLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isActive = registerOutput<bool>('isActive');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    ruleDefinition = registerOutput<RuleDefinitionResponse?>('ruleDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleType = registerOutput<String?>('ruleType');
    statusCode = registerOutput<String>('statusCode');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
