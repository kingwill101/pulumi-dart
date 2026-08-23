import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_statistics_response.dart';
import 'read_only_following_database_args.dart';
import 'system_data_response.dart';

/// Class representing a read only following database.
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
///     var readOnlyFollowingDatabase = new AzureNative.Synapse.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", new()
///     {
///         DatabaseName = "KustoDatabase8",
///         KustoPoolName = "kustoclusterrptest4",
///         ResourceGroupName = "kustorptest",
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
/// 		_, err := synapse.NewReadOnlyFollowingDatabase(ctx, "readOnlyFollowingDatabase", &synapse.ReadOnlyFollowingDatabaseArgs{
/// 			DatabaseName:      pulumi.String("KustoDatabase8"),
/// 			KustoPoolName:     pulumi.String("kustoclusterrptest4"),
/// 			ResourceGroupName: pulumi.String("kustorptest"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_synapse_readonlyfollowingdatabase" "readOnlyFollowingDatabase" {
///   database_name       = "KustoDatabase8"
///   kusto_pool_name     = "kustoclusterrptest4"
///   resource_group_name = "kustorptest"
///   workspace_name      = "synapseWorkspaceName"
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
/// import com.pulumi.azurenative.synapse.ReadOnlyFollowingDatabase;
/// import com.pulumi.azurenative.synapse.ReadOnlyFollowingDatabaseArgs;
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
///         var readOnlyFollowingDatabase = new ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", ReadOnlyFollowingDatabaseArgs.builder()
///             .databaseName("KustoDatabase8")
///             .kustoPoolName("kustoclusterrptest4")
///             .resourceGroupName("kustorptest")
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
/// const readOnlyFollowingDatabase = new azure_native.synapse.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", {
///     databaseName: "KustoDatabase8",
///     kustoPoolName: "kustoclusterrptest4",
///     resourceGroupName: "kustorptest",
///     workspaceName: "synapseWorkspaceName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// read_only_following_database = azure_native.synapse.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase",
///     database_name="KustoDatabase8",
///     kusto_pool_name="kustoclusterrptest4",
///     resource_group_name="kustorptest",
///     workspace_name="synapseWorkspaceName")
///
/// ```
///
/// ```yaml
/// resources:
///   readOnlyFollowingDatabase:
///     type: azure-native:synapse:ReadOnlyFollowingDatabase
///     properties:
///       databaseName: KustoDatabase8
///       kustoPoolName: kustoclusterrptest4
///       resourceGroupName: kustorptest
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
/// $ pulumi import azure-native:synapse:ReadOnlyFollowingDatabase KustoClusterRPTest4/KustoDatabase8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/kustoPools/{kustoPoolName}/databases/{databaseName}
/// ```
class ReadOnlyFollowingDatabase extends pulumi.CustomResource {
  /// The name of the attached database configuration cluster
  late final pulumi.Output<String> attachedDatabaseConfigurationName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  late final pulumi.Output<String?> hotCachePeriod;
  /// Kind of the database
  /// Expected value is 'ReadOnlyFollowing'.
  late final pulumi.Output<String> kind;
  /// The name of the leader cluster
  late final pulumi.Output<String> leaderClusterResourceId;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The principals modification kind of the database
  late final pulumi.Output<String> principalsModificationKind;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  late final pulumi.Output<String> softDeletePeriod;
  /// The statistics of the database.
  late final pulumi.Output<DatabaseStatisticsResponse> statistics;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ReadOnlyFollowingDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReadOnlyFollowingDatabase]. {@macro pulumi_synapse_read_only_following_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReadOnlyFollowingDatabase(
    String name, {
    ReadOnlyFollowingDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:ReadOnlyFollowingDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedDatabaseConfigurationName = registerOutput<String>('attachedDatabaseConfigurationName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hotCachePeriod = registerOutput<String?>('hotCachePeriod');
    kind = registerOutput<String>('kind');
    leaderClusterResourceId = registerOutput<String>('leaderClusterResourceId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    principalsModificationKind = registerOutput<String>('principalsModificationKind');
    provisioningState = registerOutput<String>('provisioningState');
    softDeletePeriod = registerOutput<String>('softDeletePeriod');
    statistics = registerOutput<DatabaseStatisticsResponse>('statistics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
