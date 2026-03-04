import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_state.dart';

/// Manages a Table within an Azure Storage Account.
///
/// &gt; **Note:** Shared Key authentication will always be used for this resource, as AzureAD authentication is not supported when setting or retrieving ACLs for Tables.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "azuretest",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "azureteststorage1",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleTable = new azure.storage.Table("example", {
///     name: "mysampletable",
///     storageAccountName: exampleAccount.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="azuretest",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="azureteststorage1",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_table = azure.storage.Table("example",
///     name="mysampletable",
///     storage_account_name=example_account.name)
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
///         Name = "azuretest",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "azureteststorage1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleTable = new Azure.Storage.Table("example", new()
///     {
///         Name = "mysampletable",
///         StorageAccountName = exampleAccount.Name,
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
/// 			Name:     pulumi.String("azuretest"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("azureteststorage1"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewTable(ctx, "example", &storage.TableArgs{
/// 			Name:               pulumi.String("mysampletable"),
/// 			StorageAccountName: exampleAccount.Name,
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
///             .name("azuretest")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("azureteststorage1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleTable = new Table("exampleTable", TableArgs.builder()
///             .name("mysampletable")
///             .storageAccountName(exampleAccount.name())
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
///       name: azuretest
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: azureteststorage1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleTable:
///     type: azure:storage:Table
///     name: example
///     properties:
///       name: mysampletable
///       storageAccountName: ${exampleAccount.name}
/// ```
///
///
/// ## Import
///
/// Table's within a Storage Account can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/table:Table table1 "https://example.table.core.windows.net/Tables('replace-with-table-name')"
/// ```
class Table extends pulumi.CustomResource {
  /// One or more `acl` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> acls;

  /// The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The Resource Manager ID of this Storage Table.
  late final pulumi.Output<String> resourceManagerId;

  /// Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountName;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_storage_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(String name, {TableArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:storage/table:Table',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    acls = registerOutput<List<Map<String, dynamic>>?>('acls');
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountName = registerOutput<String>('storageAccountName');
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(String name, pulumi.Input<String> id, {TableState? state}) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:storage/table:Table',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acls = registerOutput<List<Map<String, dynamic>>?>('acls');
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountName = registerOutput<String>('storageAccountName');
  }
}
