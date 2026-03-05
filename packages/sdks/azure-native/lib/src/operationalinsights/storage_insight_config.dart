import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_response.dart';
import 'storage_insight_config_args.dart';
import 'storage_insight_status_response.dart';

/// The top level storage insight resource container.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2020-08-01.
///
/// Other available API versions: 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageInsightsCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageInsightConfig = new AzureNative.OperationalInsights.StorageInsightConfig("storageInsightConfig", new()
///     {
///         Containers = new[]
///         {
///             "wad-iis-logfiles",
///         },
///         ResourceGroupName = "OIAutoRest5123",
///         StorageAccount = new AzureNative.OperationalInsights.Inputs.StorageAccountArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000005/resourcegroups/OIAutoRest6987/providers/microsoft.storage/storageaccounts/AzTestFakeSA9945",
///             Key = "1234",
///         },
///         StorageInsightName = "AzTestSI1110",
///         Tables = new[]
///         {
///             "WADWindowsEventLogsTable",
///             "LinuxSyslogVer2v0",
///         },
///         WorkspaceName = "aztest5048",
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
/// 		_, err := operationalinsights.NewStorageInsightConfig(ctx, "storageInsightConfig", &operationalinsights.StorageInsightConfigArgs{
/// 			Containers: pulumi.StringArray{
/// 				pulumi.String("wad-iis-logfiles"),
/// 			},
/// 			ResourceGroupName: pulumi.String("OIAutoRest5123"),
/// 			StorageAccount: &operationalinsights.StorageAccountArgs{
/// 				Id:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000005/resourcegroups/OIAutoRest6987/providers/microsoft.storage/storageaccounts/AzTestFakeSA9945"),
/// 				Key: pulumi.String("1234"),
/// 			},
/// 			StorageInsightName: pulumi.String("AzTestSI1110"),
/// 			Tables: pulumi.StringArray{
/// 				pulumi.String("WADWindowsEventLogsTable"),
/// 				pulumi.String("LinuxSyslogVer2v0"),
/// 			},
/// 			WorkspaceName: pulumi.String("aztest5048"),
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
/// import com.pulumi.azurenative.operationalinsights.StorageInsightConfig;
/// import com.pulumi.azurenative.operationalinsights.StorageInsightConfigArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.StorageAccountArgs;
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
///         var storageInsightConfig = new StorageInsightConfig("storageInsightConfig", StorageInsightConfigArgs.builder()
///             .containers("wad-iis-logfiles")
///             .resourceGroupName("OIAutoRest5123")
///             .storageAccount(StorageAccountArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000005/resourcegroups/OIAutoRest6987/providers/microsoft.storage/storageaccounts/AzTestFakeSA9945")
///                 .key("1234")
///                 .build())
///             .storageInsightName("AzTestSI1110")
///             .tables(
///                 "WADWindowsEventLogsTable",
///                 "LinuxSyslogVer2v0")
///             .workspaceName("aztest5048")
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
/// const storageInsightConfig = new azure_native.operationalinsights.StorageInsightConfig("storageInsightConfig", {
///     containers: ["wad-iis-logfiles"],
///     resourceGroupName: "OIAutoRest5123",
///     storageAccount: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000005/resourcegroups/OIAutoRest6987/providers/microsoft.storage/storageaccounts/AzTestFakeSA9945",
///         key: "1234",
///     },
///     storageInsightName: "AzTestSI1110",
///     tables: [
///         "WADWindowsEventLogsTable",
///         "LinuxSyslogVer2v0",
///     ],
///     workspaceName: "aztest5048",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_insight_config = azure_native.operationalinsights.StorageInsightConfig("storageInsightConfig",
///     containers=["wad-iis-logfiles"],
///     resource_group_name="OIAutoRest5123",
///     storage_account={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000005/resourcegroups/OIAutoRest6987/providers/microsoft.storage/storageaccounts/AzTestFakeSA9945",
///         "key": "1234",
///     },
///     storage_insight_name="AzTestSI1110",
///     tables=[
///         "WADWindowsEventLogsTable",
///         "LinuxSyslogVer2v0",
///     ],
///     workspace_name="aztest5048")
///
/// ```
///
/// ```yaml
/// resources:
///   storageInsightConfig:
///     type: azure-native:operationalinsights:StorageInsightConfig
///     properties:
///       containers:
///         - wad-iis-logfiles
///       resourceGroupName: OIAutoRest5123
///       storageAccount:
///         id: /subscriptions/00000000-0000-0000-0000-000000000005/resourcegroups/OIAutoRest6987/providers/microsoft.storage/storageaccounts/AzTestFakeSA9945
///         key: '1234'
///       storageInsightName: AzTestSI1110
///       tables:
///         - WADWindowsEventLogsTable
///         - LinuxSyslogVer2v0
///       workspaceName: aztest5048
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
/// $ pulumi import azure-native:operationalinsights:StorageInsightConfig AzTestSI1110 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/storageInsightConfigs/{storageInsightName}
/// ```
class StorageInsightConfig extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The names of the blob containers that the workspace should read
  late final pulumi.Output<List<String>?> containers;

  /// The ETag of the storage insight.
  late final pulumi.Output<String?> eTag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the storage insight
  late final pulumi.Output<StorageInsightStatusResponse> status;

  /// The storage account connection details
  late final pulumi.Output<StorageAccountResponse> storageAccount;

  /// The names of the Azure tables that the workspace should read
  late final pulumi.Output<List<String>?> tables;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageInsightConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageInsightConfig]. {@macro pulumi_operationalinsights_storage_insight_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageInsightConfig(
    String name, {
    StorageInsightConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:operationalinsights:StorageInsightConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containers = registerOutput<List<String>?>('containers');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    status = registerOutput<StorageInsightStatusResponse>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StorageInsightStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storageAccount = registerOutput<StorageAccountResponse>(
      'storageAccount',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StorageAccountResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tables = registerOutput<List<String>?>('tables');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
