import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_entity_args.dart';
import 'table_entity_state.dart';

/// Manages an Entity within a Table in an Azure Storage Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "azureexample",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "azureexamplestorage1",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleTable = new azure.storage.Table("example", {
///     name: "myexampletable",
///     storageAccountName: exampleAccount.name,
/// });
/// const exampleTableEntity = new azure.storage.TableEntity("example", {
///     storageTableId: exampleTable.id,
///     partitionKey: "examplepartition",
///     rowKey: "examplerow",
///     entity: {
///         example: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="azureexample",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="azureexamplestorage1",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_table = azure.storage.Table("example",
///     name="myexampletable",
///     storage_account_name=example_account.name)
/// example_table_entity = azure.storage.TableEntity("example",
///     storage_table_id=example_table.id,
///     partition_key="examplepartition",
///     row_key="examplerow",
///     entity={
///         "example": "example",
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
///         Name = "azureexample",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "azureexamplestorage1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleTable = new Azure.Storage.Table("example", new()
///     {
///         Name = "myexampletable",
///         StorageAccountName = exampleAccount.Name,
///     });
///
///     var exampleTableEntity = new Azure.Storage.TableEntity("example", new()
///     {
///         StorageTableId = exampleTable.Id,
///         PartitionKey = "examplepartition",
///         RowKey = "examplerow",
///         Entity =
///         {
///             { "example", "example" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("azureexample"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("azureexamplestorage1"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTable, err := storage.NewTable(ctx, "example", &storage.TableArgs{
/// 			Name:               pulumi.String("myexampletable"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewTableEntity(ctx, "example", &storage.TableEntityArgs{
/// 			StorageTableId: exampleTable.ID(),
/// 			PartitionKey:   pulumi.String("examplepartition"),
/// 			RowKey:         pulumi.String("examplerow"),
/// 			Entity: pulumi.StringMap{
/// 				"example": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Table;
/// import com.pulumi.azure.storage.TableArgs;
/// import com.pulumi.azure.storage.TableEntity;
/// import com.pulumi.azure.storage.TableEntityArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("azureexample")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("azureexamplestorage1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleTable = new Table("exampleTable", TableArgs.builder()
///             .name("myexampletable")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///         var exampleTableEntity = new TableEntity("exampleTableEntity", TableEntityArgs.builder()
///             .storageTableId(exampleTable.id())
///             .partitionKey("examplepartition")
///             .rowKey("examplerow")
///             .entity(Map.of("example", "example"))
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
///       name: azureexample
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: azureexamplestorage1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleTable:
///     type: azure:storage:Table
///     name: example
///     properties:
///       name: myexampletable
///       storageAccountName: ${exampleAccount.name}
///   exampleTableEntity:
///     type: azure:storage:TableEntity
///     name: example
///     properties:
///       storageTableId: ${exampleTable.id}
///       partitionKey: examplepartition
///       rowKey: examplerow
///       entity:
///         example: example
/// ```
///
///
/// ## Import
///
/// Entities within a Table in an Azure Storage Account can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/tableEntity:TableEntity entity1 https://example.table.core.windows.net/table1(PartitionKey='samplepartition',RowKey='samplerow')
/// ```
class TableEntity extends pulumi.CustomResource {
  /// A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
  late final pulumi.Output<Map<String, String>> entity;
  /// The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created.
  late final pulumi.Output<String> partitionKey;
  /// The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created.
  late final pulumi.Output<String> rowKey;
  /// The Storage Share ID in which this file will be placed into.
  late final pulumi.Output<String> storageTableId;

  /// Creates a new [TableEntity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TableEntity]. {@macro pulumi_storage_table_entity_table_entity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TableEntity(
    String name, {
    TableEntityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/tableEntity:TableEntity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    entity = registerOutput<Map<String, String>>('entity');
    partitionKey = registerOutput<String>('partitionKey');
    rowKey = registerOutput<String>('rowKey');
    storageTableId = registerOutput<String>('storageTableId');
  }

  /// Gets an existing [TableEntity] resource's state with the given [name] and [id].
  static TableEntity get(
    String name,
    pulumi.Input<String> id, {
    TableEntityState? state,
  }) {
    return TableEntity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TableEntity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/tableEntity:TableEntity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    entity = registerOutput<Map<String, String>>('entity');
    partitionKey = registerOutput<String>('partitionKey');
    rowKey = registerOutput<String>('rowKey');
    storageTableId = registerOutput<String>('storageTableId');
  }
}
