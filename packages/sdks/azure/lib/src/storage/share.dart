import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_args.dart';
import 'share_state.dart';

/// Manages a File Share within Azure Storage.
///
/// &gt; **Note:** The storage share supports two storage tiers: premium and standard. Standard file shares are created in general purpose (GPv1 or GPv2) storage accounts and premium file shares are created in FileStorage storage accounts. For further information, refer to the section "What storage tiers are supported in Azure Files?" of [documentation](https://docs.microsoft.com/azure/storage/files/storage-files-faq#general).
///
/// &gt; **Note:** Shared Key authentication will always be used for this resource, as AzureAD authentication is not supported by the Storage API for files.
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
///     acls: [{
///         id: "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI",
///         accessPolicies: [{
///             permissions: "rwdl",
///             start: "2019-07-02T09:38:21Z",
///             expiry: "2019-07-02T10:38:21Z",
///         }],
///     }],
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
///     quota=50,
///     acls=[{
///         "id": "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI",
///         "access_policies": [{
///             "permissions": "rwdl",
///             "start": "2019-07-02T09:38:21Z",
///             "expiry": "2019-07-02T10:38:21Z",
///         }],
///     }])
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
///         Acls = new[]
///         {
///             new Azure.Storage.Inputs.ShareAclArgs
///             {
///                 Id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI",
///                 AccessPolicies = new[]
///                 {
///                     new Azure.Storage.Inputs.ShareAclAccessPolicyArgs
///                     {
///                         Permissions = "rwdl",
///                         Start = "2019-07-02T09:38:21Z",
///                         Expiry = "2019-07-02T10:38:21Z",
///                     },
///                 },
///             },
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
/// 		_, err = storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:             pulumi.String("sharename"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Quota:            pulumi.Int(50),
/// 			Acls: storage.ShareAclArray{
/// 				&storage.ShareAclArgs{
/// 					Id: pulumi.String("MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"),
/// 					AccessPolicies: storage.ShareAclAccessPolicyArray{
/// 						&storage.ShareAclAccessPolicyArgs{
/// 							Permissions: pulumi.String("rwdl"),
/// 							Start:       pulumi.String("2019-07-02T09:38:21Z"),
/// 							Expiry:      pulumi.String("2019-07-02T10:38:21Z"),
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.azure.storage.Share;
/// import com.pulumi.azure.storage.ShareArgs;
/// import com.pulumi.azure.storage.inputs.ShareAclArgs;
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
///             .acls(ShareAclArgs.builder()
///                 .id("MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI")
///                 .accessPolicies(ShareAclAccessPolicyArgs.builder()
///                     .permissions("rwdl")
///                     .start("2019-07-02T09:38:21Z")
///                     .expiry("2019-07-02T10:38:21Z")
///                     .build())
///                 .build())
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
///       acls:
///         - id: MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI
///           accessPolicies:
///             - permissions: rwdl
///               start: 2019-07-02T09:38:21Z
///               expiry: 2019-07-02T10:38:21Z
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
///
/// ## Import
///
/// Storage Shares can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/share:Share exampleShare /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Storage/storageAccounts/myAccount/fileServices/default/shares/exampleShare
/// ```
class Share extends pulumi.CustomResource {
  /// The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`.
  ///
  /// &gt; **Note:** The `FileStorage` `account_kind` of the `azure.storage.Account` requires `Premium` `access_tier`.
  late final pulumi.Output<String> accessTier;

  /// One or more `acl` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> acls;

  /// The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `FileStorage` `account_kind` of the `azure.storage.Account` is required for the `NFS` protocol.
  late final pulumi.Output<String?> enabledProtocol;

  /// A mapping of MetaData for this File Share.
  late final pulumi.Output<Map<String, String>> metadata;

  /// The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The maximum size of the share, in gigabytes.
  ///
  /// &gt; **Note:** For Standard storage accounts, by default this must be `1` GB (or higher) and at most `5120` GB (`5` TB). This can be set to a value larger than `5120` GB if `large_file_share_enabled` is set to `true` in the parent `azure.storage.Account`.
  ///
  /// &gt; **Note:** For Premium FileStorage storage accounts, this must be greater than `100` GB and at most `102400` GB (`100` TB).
  late final pulumi.Output<int> quota;

  /// The Resource Manager ID of this File Share.
  late final pulumi.Output<String> resourceManagerId;

  /// Specifies the storage account in which to create the share.
  ///
  /// &gt; **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  late final pulumi.Output<String?> storageAccountId;

  /// Specifies the storage account in which to create the share. This property is deprecated in favour of `storage_account_id`.
  ///
  /// &gt; **Note:** Migrating from the deprecated `storage_account_name` to `storage_account_id` is supported without recreation. Any other change to either property will result in the resource being recreated.
  late final pulumi.Output<String?> storageAccountName;

  /// The URL of the File Share
  late final pulumi.Output<String> url;

  /// Creates a new [Share].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Share]. {@macro pulumi_storage_share_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Share(String name, {ShareArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:storage/share:Share',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accessTier = registerOutput<String>('accessTier');
    acls = registerOutput<List<Map<String, dynamic>>?>('acls');
    enabledProtocol = registerOutput<String?>('enabledProtocol');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    quota = registerOutput<int>('quota');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountName = registerOutput<String?>('storageAccountName');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [Share] resource's state with the given [name] and [id].
  static Share get(String name, pulumi.Input<String> id, {ShareState? state}) {
    return Share._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Share._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:storage/share:Share',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessTier = registerOutput<String>('accessTier');
    acls = registerOutput<List<Map<String, dynamic>>?>('acls');
    enabledProtocol = registerOutput<String?>('enabledProtocol');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    quota = registerOutput<int>('quota');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountName = registerOutput<String?>('storageAccountName');
    url = registerOutput<String>('url');
  }
}
