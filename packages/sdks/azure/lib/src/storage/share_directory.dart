import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_directory_args.dart';
import 'share_directory_state.dart';

/// Manages a Directory within an Azure Storage File Share.
///
/// &gt; **Note:** When using Azure Active Directory Authentication (i.e. setting the provider property `storage_use_azuread = true`), the principal running Terraform must have the *Storage File Data Privileged Contributor* IAM role assigned. The *Storage File Data SMB Share Contributor* does not have sufficient permissions to create directories. Refer to [official documentation](https://learn.microsoft.com/en-us/rest/api/storageservices/authorize-with-azure-active-directory#permissions-for-file-service-operations) for more details.
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
///     name: "azureteststorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleShare = new azure.storage.Share("example", {
///     name: "sharename",
///     storageAccountId: exampleAccount.id,
///     quota: 50,
/// });
/// const exampleShareDirectory = new azure.storage.ShareDirectory("example", {
///     name: "example",
///     storageShareUrl: exampleShare.url,
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
///     name="azureteststorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_share = azure.storage.Share("example",
///     name="sharename",
///     storage_account_id=example_account.id,
///     quota=50)
/// example_share_directory = azure.storage.ShareDirectory("example",
///     name="example",
///     storage_share_url=example_share.url)
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
///         Name = "azureteststorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleShare = new Azure.Storage.Share("example", new()
///     {
///         Name = "sharename",
///         StorageAccountId = exampleAccount.Id,
///         Quota = 50,
///     });
///
///     var exampleShareDirectory = new Azure.Storage.ShareDirectory("example", new()
///     {
///         Name = "example",
///         StorageShareUrl = exampleShare.Url,
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
/// 			Name:                   pulumi.String("azureteststorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:             pulumi.String("sharename"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Quota:            pulumi.Int(50),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewShareDirectory(ctx, "example", &storage.ShareDirectoryArgs{
/// 			Name:            pulumi.String("example"),
/// 			StorageShareUrl: exampleShare.Url,
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
/// import com.pulumi.azure.storage.Share;
/// import com.pulumi.azure.storage.ShareArgs;
/// import com.pulumi.azure.storage.ShareDirectory;
/// import com.pulumi.azure.storage.ShareDirectoryArgs;
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
///             .name("azureteststorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("sharename")
///             .storageAccountId(exampleAccount.id())
///             .quota(50)
///             .build());
///
///         var exampleShareDirectory = new ShareDirectory("exampleShareDirectory", ShareDirectoryArgs.builder()
///             .name("example")
///             .storageShareUrl(exampleShare.url())
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
///       name: azureteststorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleShare:
///     type: azure:storage:Share
///     name: example
///     properties:
///       name: sharename
///       storageAccountId: ${exampleAccount.id}
///       quota: 50
///   exampleShareDirectory:
///     type: azure:storage:ShareDirectory
///     name: example
///     properties:
///       name: example
///       storageShareUrl: ${exampleShare.url}
/// ```
///
///
/// ## Import
///
/// Directories within an Azure Storage File Share can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/shareDirectory:ShareDirectory example https://tomdevsa20.file.core.windows.net/share1/directory1
/// ```
class ShareDirectory extends pulumi.CustomResource {
  /// A mapping of metadata to assign to this Directory.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> storageShareId;
  /// The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageShareUrl;

  /// Creates a new [ShareDirectory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShareDirectory]. {@macro pulumi_storage_share_directory_share_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShareDirectory(
    String name, {
    ShareDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/shareDirectory:ShareDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    storageShareId = registerOutput<String>('storageShareId');
    storageShareUrl = registerOutput<String>('storageShareUrl');
  }

  /// Gets an existing [ShareDirectory] resource's state with the given [name] and [id].
  static ShareDirectory get(
    String name,
    pulumi.Input<String> id, {
    ShareDirectoryState? state,
  }) {
    return ShareDirectory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ShareDirectory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/shareDirectory:ShareDirectory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    storageShareId = registerOutput<String>('storageShareId');
    storageShareUrl = registerOutput<String>('storageShareUrl');
  }
}
