import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_storage_account_args.dart';

/// Linked storage accounts top level resource container.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2020-08-01.
///
/// Other available API versions: 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LinkedStorageAccountsCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedStorageAccount = new AzureNative.OperationalInsights.LinkedStorageAccount("linkedStorageAccount", new()
///     {
///         DataSourceType = "CustomLogs",
///         ResourceGroupName = "mms-eus",
///         StorageAccountIds = new[]
///         {
///             "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageA",
///             "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageB",
///         },
///         WorkspaceName = "testLinkStorageAccountsWS",
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
/// 		_, err := operationalinsights.NewLinkedStorageAccount(ctx, "linkedStorageAccount", &operationalinsights.LinkedStorageAccountArgs{
/// 			DataSourceType:    pulumi.String("CustomLogs"),
/// 			ResourceGroupName: pulumi.String("mms-eus"),
/// 			StorageAccountIds: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageA"),
/// 				pulumi.String("/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageB"),
/// 			},
/// 			WorkspaceName: pulumi.String("testLinkStorageAccountsWS"),
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
/// import com.pulumi.azurenative.operationalinsights.LinkedStorageAccount;
/// import com.pulumi.azurenative.operationalinsights.LinkedStorageAccountArgs;
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
///         var linkedStorageAccount = new LinkedStorageAccount("linkedStorageAccount", LinkedStorageAccountArgs.builder()
///             .dataSourceType("CustomLogs")
///             .resourceGroupName("mms-eus")
///             .storageAccountIds(
///                 "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageA",
///                 "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageB")
///             .workspaceName("testLinkStorageAccountsWS")
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
/// const linkedStorageAccount = new azure_native.operationalinsights.LinkedStorageAccount("linkedStorageAccount", {
///     dataSourceType: "CustomLogs",
///     resourceGroupName: "mms-eus",
///     storageAccountIds: [
///         "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageA",
///         "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageB",
///     ],
///     workspaceName: "testLinkStorageAccountsWS",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_storage_account = azure_native.operationalinsights.LinkedStorageAccount("linkedStorageAccount",
///     data_source_type="CustomLogs",
///     resource_group_name="mms-eus",
///     storage_account_ids=[
///         "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageA",
///         "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageB",
///     ],
///     workspace_name="testLinkStorageAccountsWS")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedStorageAccount:
///     type: azure-native:operationalinsights:LinkedStorageAccount
///     properties:
///       dataSourceType: CustomLogs
///       resourceGroupName: mms-eus
///       storageAccountIds:
///         - /subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageA
///         - /subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/mms-eus/providers/Microsoft.Storage/storageAccounts/testStorageB
///       workspaceName: testLinkStorageAccountsWS
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
/// $ pulumi import azure-native:operationalinsights:LinkedStorageAccount CustomLogs /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/linkedStorageAccounts/{dataSourceType}
/// ```
class LinkedStorageAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Linked storage accounts type.
  late final pulumi.Output<String> dataSourceType;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Linked storage accounts resources ids.
  late final pulumi.Output<List<String>?> storageAccountIds;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LinkedStorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedStorageAccount]. {@macro pulumi_operationalinsights_linked_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedStorageAccount(
    String name, {
    LinkedStorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:LinkedStorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.dataSourceType = registerOutput<String>('dataSourceType');
    this.name = registerOutput<String>('name');
    this.storageAccountIds = registerOutput<List<String>?>('storageAccountIds');
    this.type = registerOutput<String>('type');
  }
}
