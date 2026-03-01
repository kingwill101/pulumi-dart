import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_gen2_path_ace.dart';
import 'data_lake_gen2_path_args.dart';
import 'data_lake_gen2_path_state.dart';

/// Manages a Data Lake Gen2 Path in a File System within an Azure Storage Account.
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
/// });
/// const exampleDataLakeGen2Path = new azure.storage.DataLakeGen2Path("example", {
///     path: "example",
///     filesystemName: exampleDataLakeGen2Filesystem.name,
///     storageAccountId: exampleAccount.id,
///     resource: "directory",
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
///     storage_account_id=example_account.id)
/// example_data_lake_gen2_path = azure.storage.DataLakeGen2Path("example",
///     path="example",
///     filesystem_name=example_data_lake_gen2_filesystem.name,
///     storage_account_id=example_account.id,
///     resource="directory")
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
///     });
///
///     var exampleDataLakeGen2Path = new Azure.Storage.DataLakeGen2Path("example", new()
///     {
///         Path = "example",
///         FilesystemName = exampleDataLakeGen2Filesystem.Name,
///         StorageAccountId = exampleAccount.Id,
///         Resource = "directory",
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
/// 		exampleDataLakeGen2Filesystem, err := storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewDataLakeGen2Path(ctx, "example", &storage.DataLakeGen2PathArgs{
/// 			Path:             pulumi.String("example"),
/// 			FilesystemName:   exampleDataLakeGen2Filesystem.Name,
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Resource:         pulumi.String("directory"),
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
/// import com.pulumi.azure.storage.DataLakeGen2Path;
/// import com.pulumi.azure.storage.DataLakeGen2PathArgs;
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
///             .build());
///
///         var exampleDataLakeGen2Path = new DataLakeGen2Path("exampleDataLakeGen2Path", DataLakeGen2PathArgs.builder()
///             .path("example")
///             .filesystemName(exampleDataLakeGen2Filesystem.name())
///             .storageAccountId(exampleAccount.id())
///             .resource("directory")
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
///   exampleDataLakeGen2Path:
///     type: azure:storage:DataLakeGen2Path
///     name: example
///     properties:
///       path: example
///       filesystemName: ${exampleDataLakeGen2Filesystem.name}
///       storageAccountId: ${exampleAccount.id}
///       resource: directory
/// ```
///
///
/// ## Import
///
/// Data Lake Gen2 Paths can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/dataLakeGen2Path:DataLakeGen2Path example https://account1.dfs.core.windows.net/fileSystem1/path
/// ```
class DataLakeGen2Path extends pulumi.CustomResource {
  /// One or more `ace` blocks as defined below to specify the entries for the ACL for the path.
  late final pulumi.Output<List<DataLakeGen2PathAce>> aces;
  /// The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> filesystemName;
  /// Specifies the Object ID of the Azure Active Directory Group to make the owning group. Possible values also include `$superuser`.
  late final pulumi.Output<String> group;
  /// Specifies the Object ID of the Azure Active Directory User to make the owning user. Possible values also include `$superuser`.
  late final pulumi.Output<String> owner;
  /// The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> path;
  /// Specifies the type for path to create. Currently only `directory` is supported. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resource;
  /// Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [DataLakeGen2Path].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataLakeGen2Path]. {@macro pulumi_storage_data_lake_gen2_path_data_lake_gen2_path_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataLakeGen2Path(
    String name, {
    DataLakeGen2PathArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/dataLakeGen2Path:DataLakeGen2Path',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aces = registerOutput<List<DataLakeGen2PathAce>>('aces');
    this.filesystemName = registerOutput<String>('filesystemName');
    this.group = registerOutput<String>('group');
    this.owner = registerOutput<String>('owner');
    this.path = registerOutput<String>('path');
    this.resource = registerOutput<String>('resource');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [DataLakeGen2Path] resource's state with the given [name] and [id].
  static DataLakeGen2Path get(
    String name,
    pulumi.Input<String> id, {
    DataLakeGen2PathState? state,
  }) {
    return DataLakeGen2Path._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataLakeGen2Path._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/dataLakeGen2Path:DataLakeGen2Path',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aces = registerOutput<List<DataLakeGen2PathAce>>('aces');
    this.filesystemName = registerOutput<String>('filesystemName');
    this.group = registerOutput<String>('group');
    this.owner = registerOutput<String>('owner');
    this.path = registerOutput<String>('path');
    this.resource = registerOutput<String>('resource');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }
}
