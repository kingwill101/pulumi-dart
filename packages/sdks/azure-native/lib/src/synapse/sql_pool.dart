import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_response.dart';
import 'sql_pool_args.dart';

/// A SQL Analytics pool
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a SQL Analytics pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlPool = new AzureNative.Synapse.SqlPool("sqlPool", new()
///     {
///         Collation = "",
///         CreateMode = "",
///         Location = "Southeast Asia",
///         MaxSizeBytes = 0,
///         RecoverableDatabaseId = "",
///         ResourceGroupName = "ExampleResourceGroup",
///         Sku = new AzureNative.Synapse.Inputs.SkuArgs
///         {
///             Name = "",
///             Tier = "",
///         },
///         SourceDatabaseId = "",
///         SqlPoolName = "ExampleSqlPool",
///         StorageAccountType = AzureNative.Synapse.StorageAccountType.LRS,
///         Tags = null,
///         WorkspaceName = "ExampleWorkspace",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewSqlPool(ctx, "sqlPool", &synapse.SqlPoolArgs{
/// 			Collation:             pulumi.String(""),
/// 			CreateMode:            pulumi.String(""),
/// 			Location:              pulumi.String("Southeast Asia"),
/// 			MaxSizeBytes:          pulumi.Float64(0),
/// 			RecoverableDatabaseId: pulumi.String(""),
/// 			ResourceGroupName:     pulumi.String("ExampleResourceGroup"),
/// 			Sku: &synapse.SkuArgs{
/// 				Name: pulumi.String(""),
/// 				Tier: pulumi.String(""),
/// 			},
/// 			SourceDatabaseId:   pulumi.String(""),
/// 			SqlPoolName:        pulumi.String("ExampleSqlPool"),
/// 			StorageAccountType: pulumi.String(synapse.StorageAccountTypeLRS),
/// 			Tags:               pulumi.StringMap{},
/// 			WorkspaceName:      pulumi.String("ExampleWorkspace"),
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
/// import com.pulumi.azurenative.synapse.SqlPool;
/// import com.pulumi.azurenative.synapse.SqlPoolArgs;
/// import com.pulumi.azurenative.synapse.inputs.SkuArgs;
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
///         var sqlPool = new SqlPool("sqlPool", SqlPoolArgs.builder()
///             .collation("")
///             .createMode("")
///             .location("Southeast Asia")
///             .maxSizeBytes(0.0)
///             .recoverableDatabaseId("")
///             .resourceGroupName("ExampleResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("")
///                 .tier("")
///                 .build())
///             .sourceDatabaseId("")
///             .sqlPoolName("ExampleSqlPool")
///             .storageAccountType("LRS")
///             .tags(Map.ofEntries(
///             ))
///             .workspaceName("ExampleWorkspace")
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
/// const sqlPool = new azure_native.synapse.SqlPool("sqlPool", {
///     collation: "",
///     createMode: "",
///     location: "Southeast Asia",
///     maxSizeBytes: 0,
///     recoverableDatabaseId: "",
///     resourceGroupName: "ExampleResourceGroup",
///     sku: {
///         name: "",
///         tier: "",
///     },
///     sourceDatabaseId: "",
///     sqlPoolName: "ExampleSqlPool",
///     storageAccountType: azure_native.synapse.StorageAccountType.LRS,
///     tags: {},
///     workspaceName: "ExampleWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_pool = azure_native.synapse.SqlPool("sqlPool",
///     collation="",
///     create_mode="",
///     location="Southeast Asia",
///     max_size_bytes=0,
///     recoverable_database_id="",
///     resource_group_name="ExampleResourceGroup",
///     sku={
///         "name": "",
///         "tier": "",
///     },
///     source_database_id="",
///     sql_pool_name="ExampleSqlPool",
///     storage_account_type=azure_native.synapse.StorageAccountType.LRS,
///     tags={},
///     workspace_name="ExampleWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlPool:
///     type: azure-native:synapse:SqlPool
///     properties:
///       collation: ""
///       createMode: ""
///       location: Southeast Asia
///       maxSizeBytes: 0
///       recoverableDatabaseId: ""
///       resourceGroupName: ExampleResourceGroup
///       sku:
///         name: ""
///         tier: ""
///       sourceDatabaseId: ""
///       sqlPoolName: ExampleSqlPool
///       storageAccountType: LRS
///       tags: {}
///       workspaceName: ExampleWorkspace
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
/// $ pulumi import azure-native:synapse:SqlPool ExampleSqlPool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/sqlPools/{sqlPoolName}
/// ```
class SqlPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Collation mode
  late final pulumi.Output<String?> collation;
  /// Date the SQL pool was created
  late final pulumi.Output<String> creationDate;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Maximum size in bytes
  late final pulumi.Output<double?> maxSizeBytes;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Resource state
  late final pulumi.Output<String?> provisioningState;
  /// Backup database to restore from
  late final pulumi.Output<String?> recoverableDatabaseId;
  /// Snapshot time to restore
  late final pulumi.Output<String?> restorePointInTime;
  /// SQL pool SKU
  late final pulumi.Output<SkuResponse?> sku;
  /// Specifies the time that the sql pool was deleted
  late final pulumi.Output<String?> sourceDatabaseDeletionDate;
  /// Resource status
  late final pulumi.Output<String> status;
  /// The storage account type used to store backups for this sql pool.
  late final pulumi.Output<String?> storageAccountType;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPool]. {@macro pulumi_synapse_sql_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPool(
    String name, {
    SqlPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:SqlPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.collation = registerOutput<String?>('collation');
    this.creationDate = registerOutput<String>('creationDate');
    this.location = registerOutput<String>('location');
    this.maxSizeBytes = registerOutput<double?>('maxSizeBytes');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.recoverableDatabaseId = registerOutput<String?>('recoverableDatabaseId');
    this.restorePointInTime = registerOutput<String?>('restorePointInTime');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.sourceDatabaseDeletionDate = registerOutput<String?>('sourceDatabaseDeletionDate');
    this.status = registerOutput<String>('status');
    this.storageAccountType = registerOutput<String?>('storageAccountType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
