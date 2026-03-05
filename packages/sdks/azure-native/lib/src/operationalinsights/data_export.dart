import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_export_args.dart';

/// The top level data export resource container.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2020-08-01.
///
/// Other available API versions: 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataExportCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataExport = new AzureNative.OperationalInsights.DataExport("dataExport", new()
///     {
///         DataExportName = "export1",
///         ResourceGroupName = "RgTest1",
///         ResourceId = "/subscriptions/192b9f85-a39a-4276-b96d-d5cd351703f9/resourceGroups/OIAutoRest1234/providers/Microsoft.EventHub/namespaces/test",
///         TableNames = new[]
///         {
///             "Heartbeat",
///         },
///         WorkspaceName = "DeWnTest1234",
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
/// 		_, err := operationalinsights.NewDataExport(ctx, "dataExport", &operationalinsights.DataExportArgs{
/// 			DataExportName:    pulumi.String("export1"),
/// 			ResourceGroupName: pulumi.String("RgTest1"),
/// 			ResourceId:        pulumi.String("/subscriptions/192b9f85-a39a-4276-b96d-d5cd351703f9/resourceGroups/OIAutoRest1234/providers/Microsoft.EventHub/namespaces/test"),
/// 			TableNames: pulumi.StringArray{
/// 				pulumi.String("Heartbeat"),
/// 			},
/// 			WorkspaceName: pulumi.String("DeWnTest1234"),
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
/// import com.pulumi.azurenative.operationalinsights.DataExport;
/// import com.pulumi.azurenative.operationalinsights.DataExportArgs;
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
///         var dataExport = new DataExport("dataExport", DataExportArgs.builder()
///             .dataExportName("export1")
///             .resourceGroupName("RgTest1")
///             .resourceId("/subscriptions/192b9f85-a39a-4276-b96d-d5cd351703f9/resourceGroups/OIAutoRest1234/providers/Microsoft.EventHub/namespaces/test")
///             .tableNames("Heartbeat")
///             .workspaceName("DeWnTest1234")
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
/// const dataExport = new azure_native.operationalinsights.DataExport("dataExport", {
///     dataExportName: "export1",
///     resourceGroupName: "RgTest1",
///     resourceId: "/subscriptions/192b9f85-a39a-4276-b96d-d5cd351703f9/resourceGroups/OIAutoRest1234/providers/Microsoft.EventHub/namespaces/test",
///     tableNames: ["Heartbeat"],
///     workspaceName: "DeWnTest1234",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_export = azure_native.operationalinsights.DataExport("dataExport",
///     data_export_name="export1",
///     resource_group_name="RgTest1",
///     resource_id="/subscriptions/192b9f85-a39a-4276-b96d-d5cd351703f9/resourceGroups/OIAutoRest1234/providers/Microsoft.EventHub/namespaces/test",
///     table_names=["Heartbeat"],
///     workspace_name="DeWnTest1234")
///
/// ```
///
/// ```yaml
/// resources:
///   dataExport:
///     type: azure-native:operationalinsights:DataExport
///     properties:
///       dataExportName: export1
///       resourceGroupName: RgTest1
///       resourceId: /subscriptions/192b9f85-a39a-4276-b96d-d5cd351703f9/resourceGroups/OIAutoRest1234/providers/Microsoft.EventHub/namespaces/test
///       tableNames:
///         - Heartbeat
///       workspaceName: DeWnTest1234
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
/// $ pulumi import azure-native:operationalinsights:DataExport export1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/dataExports/{dataExportName}
/// ```
class DataExport extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The latest data export rule modification time.
  late final pulumi.Output<String?> createdDate;
  /// The data export rule ID.
  late final pulumi.Output<String?> dataExportId;
  /// Active when enabled.
  late final pulumi.Output<bool?> enable;
  /// Optional. Allows to define an Event Hub name. Not applicable when destination is Storage Account.
  late final pulumi.Output<String?> eventHubName;
  /// Date and time when the export was last modified.
  late final pulumi.Output<String?> lastModifiedDate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The destination resource ID. This can be copied from the Properties entry of the destination resource in Azure.
  late final pulumi.Output<String> resourceId;
  /// An array of tables to export, for example: [“Heartbeat, SecurityEvent”].
  late final pulumi.Output<List<String>> tableNames;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataExport]. {@macro pulumi_operationalinsights_data_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataExport(
    String name, {
    DataExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:DataExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String?>('createdDate');
    dataExportId = registerOutput<String?>('dataExportId');
    enable = registerOutput<bool?>('enable');
    eventHubName = registerOutput<String?>('eventHubName');
    lastModifiedDate = registerOutput<String?>('lastModifiedDate');
    this.name = registerOutput<String>('name');
    resourceId = registerOutput<String>('resourceId');
    tableNames = registerOutput<List<String>>('tableNames');
    type = registerOutput<String>('type');
  }
}
