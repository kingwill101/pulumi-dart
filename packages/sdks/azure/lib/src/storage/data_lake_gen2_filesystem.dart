import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_gen2_filesystem_ace.dart';
import 'data_lake_gen2_filesystem_args.dart';
import 'data_lake_gen2_filesystem_state.dart';

/// Manages a Data Lake Gen2 File System within an Azure Storage Account.
///
/// > **Note:** This resource requires some `Storage` specific roles which are not granted by default. Some of the built-ins roles that can be attributed are [`Storage Account Contributor`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-account-contributor), [`Storage Blob Data Owner`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-blob-data-owner), [`Storage Blob Data Contributor`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-blob-data-contributor), [`Storage Blob Data Reader`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-blob-data-reader).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "StorageV2",
///     isHnsEnabled: true,
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
///     properties: {
///         hello: "aGVsbG8=",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="StorageV2",
///     is_hns_enabled=True)
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id,
///     properties={
///         "hello": "aGVsbG8=",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "StorageV2",
///         IsHnsEnabled = true,
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///         Properties =
///         {
///             { "hello", "aGVsbG8=" },
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Properties: pulumi.StringMap{
/// 				"hello": pulumi.String("aGVsbG8="),
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
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("StorageV2")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .properties(Map.of("hello", "aGVsbG8="))
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
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: StorageV2
///       isHnsEnabled: 'true'
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///       properties:
///         hello: aGVsbG8=
/// ```
///
///
/// ## Import
///
/// Data Lake Gen2 File System's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/dataLakeGen2Filesystem:DataLakeGen2Filesystem queue1 https://account1.dfs.core.windows.net/fileSystem1
/// ```
class DataLakeGen2Filesystem extends pulumi.CustomResource {
  /// One or more `ace` blocks as defined below to specify the entries for the ACL for the path.
  late final pulumi.Output<List<DataLakeGen2FilesystemAce>> aces;
  /// The default encryption scope to use for this filesystem. Changing this forces a new resource to be created.
  late final pulumi.Output<String> defaultEncryptionScope;
  /// Specifies the Object ID of the Azure Active Directory Group to make the owning group of the root path (i.e. `/`). Possible values also include `$superuser`.
  ///
  /// > **Note:** The Storage Account requires `account_kind` to be either `StorageV2` or `BlobStorage`. In addition, `is_hns_enabled` has to be set to `true`.
  late final pulumi.Output<String> group;
  /// The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the Object ID of the Azure Active Directory User to make the owning user of the root path (i.e. `/`). Possible values also include `$superuser`.
  late final pulumi.Output<String> owner;
  /// A mapping of Key to Base64-Encoded Values which should be assigned to this Data Lake Gen2 File System.
  late final pulumi.Output<Map<String, String>?> properties;
  /// Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [DataLakeGen2Filesystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataLakeGen2Filesystem]. {@macro pulumi_storage_data_lake_gen2_filesystem_data_lake_gen2_filesystem_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataLakeGen2Filesystem(
    String name, {
    DataLakeGen2FilesystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/dataLakeGen2Filesystem:DataLakeGen2Filesystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aces = registerOutput<List<DataLakeGen2FilesystemAce>>('aces');
    this.defaultEncryptionScope = registerOutput<String>('defaultEncryptionScope');
    this.group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.properties = registerOutput<Map<String, String>?>('properties');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [DataLakeGen2Filesystem] resource's state with the given [name] and [id].
  static DataLakeGen2Filesystem get(
    String name,
    pulumi.Input<String> id, {
    DataLakeGen2FilesystemState? state,
  }) {
    return DataLakeGen2Filesystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataLakeGen2Filesystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/dataLakeGen2Filesystem:DataLakeGen2Filesystem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aces = registerOutput<List<DataLakeGen2FilesystemAce>>('aces');
    this.defaultEncryptionScope = registerOutput<String>('defaultEncryptionScope');
    this.group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.properties = registerOutput<Map<String, String>?>('properties');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }
}
