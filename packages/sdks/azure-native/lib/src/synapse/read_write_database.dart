import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_statistics_response.dart';
import 'read_write_database_args.dart';
import 'system_data_response.dart';

/// Class representing a read write database.
///
/// Uses Azure REST API version 2021-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoPoolDatabasesCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var readWriteDatabase = new AzureNative.Synapse.ReadWriteDatabase("readWriteDatabase", new()
///     {
///         DatabaseName = "KustoDatabase8",
///         Kind = "ReadWrite",
///         KustoPoolName = "kustoclusterrptest4",
///         Location = "westus",
///         ResourceGroupName = "kustorptest",
///         SoftDeletePeriod = "P1D",
///         WorkspaceName = "synapseWorkspaceName",
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
/// 		_, err := synapse.NewReadWriteDatabase(ctx, "readWriteDatabase", &synapse.ReadWriteDatabaseArgs{
/// 			DatabaseName:      pulumi.String("KustoDatabase8"),
/// 			Kind:              pulumi.String("ReadWrite"),
/// 			KustoPoolName:     pulumi.String("kustoclusterrptest4"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("kustorptest"),
/// 			SoftDeletePeriod:  pulumi.String("P1D"),
/// 			WorkspaceName:     pulumi.String("synapseWorkspaceName"),
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
/// import com.pulumi.azurenative.synapse.ReadWriteDatabase;
/// import com.pulumi.azurenative.synapse.ReadWriteDatabaseArgs;
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
///         var readWriteDatabase = new ReadWriteDatabase("readWriteDatabase", ReadWriteDatabaseArgs.builder()
///             .databaseName("KustoDatabase8")
///             .kind("ReadWrite")
///             .kustoPoolName("kustoclusterrptest4")
///             .location("westus")
///             .resourceGroupName("kustorptest")
///             .softDeletePeriod("P1D")
///             .workspaceName("synapseWorkspaceName")
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
/// const readWriteDatabase = new azure_native.synapse.ReadWriteDatabase("readWriteDatabase", {
///     databaseName: "KustoDatabase8",
///     kind: "ReadWrite",
///     kustoPoolName: "kustoclusterrptest4",
///     location: "westus",
///     resourceGroupName: "kustorptest",
///     softDeletePeriod: "P1D",
///     workspaceName: "synapseWorkspaceName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// read_write_database = azure_native.synapse.ReadWriteDatabase("readWriteDatabase",
///     database_name="KustoDatabase8",
///     kind="ReadWrite",
///     kusto_pool_name="kustoclusterrptest4",
///     location="westus",
///     resource_group_name="kustorptest",
///     soft_delete_period="P1D",
///     workspace_name="synapseWorkspaceName")
///
/// ```
///
/// ```yaml
/// resources:
///   readWriteDatabase:
///     type: azure-native:synapse:ReadWriteDatabase
///     properties:
///       databaseName: KustoDatabase8
///       kind: ReadWrite
///       kustoPoolName: kustoclusterrptest4
///       location: westus
///       resourceGroupName: kustorptest
///       softDeletePeriod: P1D
///       workspaceName: synapseWorkspaceName
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
/// $ pulumi import azure-native:synapse:ReadWriteDatabase KustoClusterRPTest4/KustoDatabase8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/kustoPools/{kustoPoolName}/databases/{databaseName}
/// ```
class ReadWriteDatabase extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The time the data should be kept in cache for fast queries in TimeSpan.
  late final pulumi.Output<String?> hotCachePeriod;

  /// Indicates whether the database is followed.
  late final pulumi.Output<bool> isFollowed;

  /// Kind of the database
  /// Expected value is 'ReadWrite'.
  late final pulumi.Output<String> kind;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  late final pulumi.Output<String?> softDeletePeriod;

  /// The statistics of the database.
  late final pulumi.Output<DatabaseStatisticsResponse> statistics;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ReadWriteDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReadWriteDatabase]. {@macro pulumi_synapse_read_write_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReadWriteDatabase(
    String name, {
    ReadWriteDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:synapse:ReadWriteDatabase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hotCachePeriod = registerOutput<String?>('hotCachePeriod');
    isFollowed = registerOutput<bool>('isFollowed');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    softDeletePeriod = registerOutput<String?>('softDeletePeriod');
    statistics = registerOutput<DatabaseStatisticsResponse>('statistics');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
