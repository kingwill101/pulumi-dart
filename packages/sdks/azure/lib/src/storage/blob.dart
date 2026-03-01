import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_args.dart';
import 'blob_state.dart';

/// Manages a Blob within a Storage Container.
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
///     name: "examplestoracc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "content",
///     storageAccountId: exampleAccount.id,
///     containerAccessType: "private",
/// });
/// const exampleBlob = new azure.storage.Blob("example", {
///     name: "my-awesome-content.zip",
///     storageAccountName: exampleAccount.name,
///     storageContainerName: exampleContainer.name,
///     type: "Block",
///     source: new pulumi.asset.FileAsset("some-local-file.zip"),
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
///     name="examplestoracc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="content",
///     storage_account_id=example_account.id,
///     container_access_type="private")
/// example_blob = azure.storage.Blob("example",
///     name="my-awesome-content.zip",
///     storage_account_name=example_account.name,
///     storage_container_name=example_container.name,
///     type="Block",
///     source=pulumi.FileAsset("some-local-file.zip"))
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
///         Name = "examplestoracc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "content",
///         StorageAccountId = exampleAccount.Id,
///         ContainerAccessType = "private",
///     });
///
///     var exampleBlob = new Azure.Storage.Blob("example", new()
///     {
///         Name = "my-awesome-content.zip",
///         StorageAccountName = exampleAccount.Name,
///         StorageContainerName = exampleContainer.Name,
///         Type = "Block",
///         Source = new FileAsset("some-local-file.zip"),
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
/// 			Name:                   pulumi.String("examplestoracc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("content"),
/// 			StorageAccountId:    exampleAccount.ID(),
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBlob(ctx, "example", &storage.BlobArgs{
/// 			Name:                 pulumi.String("my-awesome-content.zip"),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageContainerName: exampleContainer.Name,
/// 			Type:                 pulumi.String("Block"),
/// 			Source:               pulumi.NewFileAsset("some-local-file.zip"),
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
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.Blob;
/// import com.pulumi.azure.storage.BlobArgs;
/// import com.pulumi.asset.FileAsset;
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
///             .name("examplestoracc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("content")
///             .storageAccountId(exampleAccount.id())
///             .containerAccessType("private")
///             .build());
///
///         var exampleBlob = new Blob("exampleBlob", BlobArgs.builder()
///             .name("my-awesome-content.zip")
///             .storageAccountName(exampleAccount.name())
///             .storageContainerName(exampleContainer.name())
///             .type("Block")
///             .source(new FileAsset("some-local-file.zip"))
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
///       name: examplestoracc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: content
///       storageAccountId: ${exampleAccount.id}
///       containerAccessType: private
///   exampleBlob:
///     type: azure:storage:Blob
///     name: example
///     properties:
///       name: my-awesome-content.zip
///       storageAccountName: ${exampleAccount.name}
///       storageContainerName: ${exampleContainer.name}
///       type: Block
///       source:
///         fn::FileAsset: some-local-file.zip
/// ```
///
///
/// ## Import
///
/// Storage Blob's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/blob:Blob blob1 https://example.blob.core.windows.net/container/blob.vhd
/// ```
class Blob extends pulumi.CustomResource {
  /// The access tier of the storage blob. Possible values are `Archive`, `Cool` and `Hot`.
  late final pulumi.Output<String> accessTier;
  /// Controls the [cache control header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) content of the response when blob is requested .
  late final pulumi.Output<String?> cacheControl;
  /// The MD5 sum of the blob contents. Cannot be defined if `source_uri` is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> contentMd5;
  /// The content type of the storage blob. Cannot be defined if `source_uri` is defined. Defaults to `application/octet-stream`.
  late final pulumi.Output<String?> contentType;
  /// The encryption scope to use for this blob.
  late final pulumi.Output<String?> encryptionScope;
  /// A map of custom blob metadata.
  late final pulumi.Output<Map<String, String>> metadata;
  /// The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The number of workers per CPU core to run for concurrent uploads. Defaults to `8`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** `parallelism` is only applicable for Page blobs - support for [Block Blobs is blocked on the upstream issue](https://github.com/jackofallops/giovanni/issues/15).
  late final pulumi.Output<int?> parallelism;
  /// Used only for `page` blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to `0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `size` is required if `source_uri` is not set.
  late final pulumi.Output<int?> size;
  /// An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if `source_content` or `source_uri` is specified. Changing this forces a new resource to be created.
  late final pulumi.Output<dynamic> source;
  /// The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if `source` or `source_uri` is specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceContent;
  /// The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if `source` or `source_content` is specified.
  late final pulumi.Output<String?> sourceUri;
  /// Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountName;
  /// The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageContainerName;
  /// The type of the storage blob to be created. Possible values are `Append`, `Block` or `Page`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// The URL of the blob
  late final pulumi.Output<String> url;

  /// Creates a new [Blob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Blob]. {@macro pulumi_storage_blob_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Blob(
    String name, {
    BlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/blob:Blob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTier = registerOutput<String>('accessTier');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.contentMd5 = registerOutput<String?>('contentMd5');
    this.contentType = registerOutput<String?>('contentType');
    this.encryptionScope = registerOutput<String?>('encryptionScope');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.parallelism = registerOutput<int?>('parallelism');
    this.size = registerOutput<int?>('size');
    this.source = registerOutput<dynamic>('source');
    this.sourceContent = registerOutput<String?>('sourceContent');
    this.sourceUri = registerOutput<String?>('sourceUri');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.type = registerOutput<String>('type');
    this.url = registerOutput<String>('url');
  }

  /// Gets an existing [Blob] resource's state with the given [name] and [id].
  static Blob get(
    String name,
    pulumi.Input<String> id, {
    BlobState? state,
  }) {
    return Blob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Blob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/blob:Blob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTier = registerOutput<String>('accessTier');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.contentMd5 = registerOutput<String?>('contentMd5');
    this.contentType = registerOutput<String?>('contentType');
    this.encryptionScope = registerOutput<String?>('encryptionScope');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.parallelism = registerOutput<int?>('parallelism');
    this.size = registerOutput<int?>('size');
    this.source = registerOutput<dynamic>('source');
    this.sourceContent = registerOutput<String?>('sourceContent');
    this.sourceUri = registerOutput<String?>('sourceUri');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.type = registerOutput<String>('type');
    this.url = registerOutput<String>('url');
  }
}
