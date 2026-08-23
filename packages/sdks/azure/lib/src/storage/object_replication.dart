import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_args.dart';
import 'object_replication_state.dart';

/// Manages a Storage Object Replication.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const src = new azure.core.ResourceGroup("src", {
///     name: "srcResourceGroupName",
///     location: "West Europe",
/// });
/// const srcAccount = new azure.storage.Account("src", {
///     name: "srcstorageaccount",
///     resourceGroupName: src.name,
///     location: src.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     blobProperties: {
///         versioningEnabled: true,
///         changeFeedEnabled: true,
///     },
/// });
/// const srcContainer = new azure.storage.Container("src", {
///     name: "srcstrcontainer",
///     storageAccountName: srcAccount.name,
///     containerAccessType: "private",
/// });
/// const dst = new azure.core.ResourceGroup("dst", {
///     name: "dstResourceGroupName",
///     location: "East US",
/// });
/// const dstAccount = new azure.storage.Account("dst", {
///     name: "dststorageaccount",
///     resourceGroupName: dst.name,
///     location: dst.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     blobProperties: {
///         versioningEnabled: true,
///         changeFeedEnabled: true,
///     },
/// });
/// const dstContainer = new azure.storage.Container("dst", {
///     name: "dststrcontainer",
///     storageAccountName: dstAccount.name,
///     containerAccessType: "private",
/// });
/// const example = new azure.storage.ObjectReplication("example", {
///     sourceStorageAccountId: srcAccount.id,
///     destinationStorageAccountId: dstAccount.id,
///     rules: [{
///         sourceContainerName: srcContainer.name,
///         destinationContainerName: dstContainer.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// src = azure.core.ResourceGroup("src",
///     name="srcResourceGroupName",
///     location="West Europe")
/// src_account = azure.storage.Account("src",
///     name="srcstorageaccount",
///     resource_group_name=src.name,
///     location=src.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     blob_properties={
///         "versioning_enabled": True,
///         "change_feed_enabled": True,
///     })
/// src_container = azure.storage.Container("src",
///     name="srcstrcontainer",
///     storage_account_name=src_account.name,
///     container_access_type="private")
/// dst = azure.core.ResourceGroup("dst",
///     name="dstResourceGroupName",
///     location="East US")
/// dst_account = azure.storage.Account("dst",
///     name="dststorageaccount",
///     resource_group_name=dst.name,
///     location=dst.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     blob_properties={
///         "versioning_enabled": True,
///         "change_feed_enabled": True,
///     })
/// dst_container = azure.storage.Container("dst",
///     name="dststrcontainer",
///     storage_account_name=dst_account.name,
///     container_access_type="private")
/// example = azure.storage.ObjectReplication("example",
///     source_storage_account_id=src_account.id,
///     destination_storage_account_id=dst_account.id,
///     rules=[{
///         "source_container_name": src_container.name,
///         "destination_container_name": dst_container.name,
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
///     var src = new Azure.Core.ResourceGroup("src", new()
///     {
///         Name = "srcResourceGroupName",
///         Location = "West Europe",
///     });
///
///     var srcAccount = new Azure.Storage.Account("src", new()
///     {
///         Name = "srcstorageaccount",
///         ResourceGroupName = src.Name,
///         Location = src.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         BlobProperties = new Azure.Storage.Inputs.AccountBlobPropertiesArgs
///         {
///             VersioningEnabled = true,
///             ChangeFeedEnabled = true,
///         },
///     });
///
///     var srcContainer = new Azure.Storage.Container("src", new()
///     {
///         Name = "srcstrcontainer",
///         StorageAccountName = srcAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var dst = new Azure.Core.ResourceGroup("dst", new()
///     {
///         Name = "dstResourceGroupName",
///         Location = "East US",
///     });
///
///     var dstAccount = new Azure.Storage.Account("dst", new()
///     {
///         Name = "dststorageaccount",
///         ResourceGroupName = dst.Name,
///         Location = dst.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         BlobProperties = new Azure.Storage.Inputs.AccountBlobPropertiesArgs
///         {
///             VersioningEnabled = true,
///             ChangeFeedEnabled = true,
///         },
///     });
///
///     var dstContainer = new Azure.Storage.Container("dst", new()
///     {
///         Name = "dststrcontainer",
///         StorageAccountName = dstAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var example = new Azure.Storage.ObjectReplication("example", new()
///     {
///         SourceStorageAccountId = srcAccount.Id,
///         DestinationStorageAccountId = dstAccount.Id,
///         Rules = new[]
///         {
///             new Azure.Storage.Inputs.ObjectReplicationRuleArgs
///             {
///                 SourceContainerName = srcContainer.Name,
///                 DestinationContainerName = dstContainer.Name,
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
/// 		src, err := core.NewResourceGroup(ctx, "src", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("srcResourceGroupName"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		srcAccount, err := storage.NewAccount(ctx, "src", &storage.AccountArgs{
/// 			Name:                   pulumi.String("srcstorageaccount"),
/// 			ResourceGroupName:      src.Name,
/// 			Location:               src.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			BlobProperties: &storage.AccountBlobPropertiesArgs{
/// 				VersioningEnabled: pulumi.Bool(true),
/// 				ChangeFeedEnabled: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		srcContainer, err := storage.NewContainer(ctx, "src", &storage.ContainerArgs{
/// 			Name:                pulumi.String("srcstrcontainer"),
/// 			StorageAccountName:  srcAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dst, err := core.NewResourceGroup(ctx, "dst", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("dstResourceGroupName"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dstAccount, err := storage.NewAccount(ctx, "dst", &storage.AccountArgs{
/// 			Name:                   pulumi.String("dststorageaccount"),
/// 			ResourceGroupName:      dst.Name,
/// 			Location:               dst.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			BlobProperties: &storage.AccountBlobPropertiesArgs{
/// 				VersioningEnabled: pulumi.Bool(true),
/// 				ChangeFeedEnabled: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dstContainer, err := storage.NewContainer(ctx, "dst", &storage.ContainerArgs{
/// 			Name:                pulumi.String("dststrcontainer"),
/// 			StorageAccountName:  dstAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewObjectReplication(ctx, "example", &storage.ObjectReplicationArgs{
/// 			SourceStorageAccountId:      srcAccount.ID(),
/// 			DestinationStorageAccountId: dstAccount.ID(),
/// 			Rules: storage.ObjectReplicationRuleArray{
/// 				&storage.ObjectReplicationRuleArgs{
/// 					SourceContainerName:      srcContainer.Name,
/// 					DestinationContainerName: dstContainer.Name,
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "src" {
///   name     = "srcResourceGroupName"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "src" {
///   name                     = "srcstorageaccount"
///   resource_group_name      = azure_core_resourcegroup.src.name
///   location                 = azure_core_resourcegroup.src.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   blob_properties = {
///     versioning_enabled  = true
///     change_feed_enabled = true
///   }
/// }
/// resource "azure_storage_container" "src" {
///   name                  = "srcstrcontainer"
///   storage_account_name  = azure_storage_account.src.name
///   container_access_type = "private"
/// }
/// resource "azure_core_resourcegroup" "dst" {
///   name     = "dstResourceGroupName"
///   location = "East US"
/// }
/// resource "azure_storage_account" "dst" {
///   name                     = "dststorageaccount"
///   resource_group_name      = azure_core_resourcegroup.dst.name
///   location                 = azure_core_resourcegroup.dst.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   blob_properties = {
///     versioning_enabled  = true
///     change_feed_enabled = true
///   }
/// }
/// resource "azure_storage_container" "dst" {
///   name                  = "dststrcontainer"
///   storage_account_name  = azure_storage_account.dst.name
///   container_access_type = "private"
/// }
/// resource "azure_storage_objectreplication" "example" {
///   source_storage_account_id      = azure_storage_account.src.id
///   destination_storage_account_id = azure_storage_account.dst.id
///   rules {
///     source_container_name      = azure_storage_container.src.name
///     destination_container_name = azure_storage_container.dst.name
///   }
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
/// import com.pulumi.azure.storage.inputs.AccountBlobPropertiesArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.ObjectReplication;
/// import com.pulumi.azure.storage.ObjectReplicationArgs;
/// import com.pulumi.azure.storage.inputs.ObjectReplicationRuleArgs;
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
///         var src = new ResourceGroup("src", ResourceGroupArgs.builder()
///             .name("srcResourceGroupName")
///             .location("West Europe")
///             .build());
///
///         var srcAccount = new Account("srcAccount", AccountArgs.builder()
///             .name("srcstorageaccount")
///             .resourceGroupName(src.name())
///             .location(src.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .blobProperties(AccountBlobPropertiesArgs.builder()
///                 .versioningEnabled(true)
///                 .changeFeedEnabled(true)
///                 .build())
///             .build());
///
///         var srcContainer = new Container("srcContainer", ContainerArgs.builder()
///             .name("srcstrcontainer")
///             .storageAccountName(srcAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var dst = new ResourceGroup("dst", ResourceGroupArgs.builder()
///             .name("dstResourceGroupName")
///             .location("East US")
///             .build());
///
///         var dstAccount = new Account("dstAccount", AccountArgs.builder()
///             .name("dststorageaccount")
///             .resourceGroupName(dst.name())
///             .location(dst.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .blobProperties(AccountBlobPropertiesArgs.builder()
///                 .versioningEnabled(true)
///                 .changeFeedEnabled(true)
///                 .build())
///             .build());
///
///         var dstContainer = new Container("dstContainer", ContainerArgs.builder()
///             .name("dststrcontainer")
///             .storageAccountName(dstAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var example = new ObjectReplication("example", ObjectReplicationArgs.builder()
///             .sourceStorageAccountId(srcAccount.id())
///             .destinationStorageAccountId(dstAccount.id())
///             .rules(ObjectReplicationRuleArgs.builder()
///                 .sourceContainerName(srcContainer.name())
///                 .destinationContainerName(dstContainer.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   src:
///     type: azure:core:ResourceGroup
///     properties:
///       name: srcResourceGroupName
///       location: West Europe
///   srcAccount:
///     type: azure:storage:Account
///     name: src
///     properties:
///       name: srcstorageaccount
///       resourceGroupName: ${src.name}
///       location: ${src.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       blobProperties:
///         versioningEnabled: true
///         changeFeedEnabled: true
///   srcContainer:
///     type: azure:storage:Container
///     name: src
///     properties:
///       name: srcstrcontainer
///       storageAccountName: ${srcAccount.name}
///       containerAccessType: private
///   dst:
///     type: azure:core:ResourceGroup
///     properties:
///       name: dstResourceGroupName
///       location: East US
///   dstAccount:
///     type: azure:storage:Account
///     name: dst
///     properties:
///       name: dststorageaccount
///       resourceGroupName: ${dst.name}
///       location: ${dst.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       blobProperties:
///         versioningEnabled: true
///         changeFeedEnabled: true
///   dstContainer:
///     type: azure:storage:Container
///     name: dst
///     properties:
///       name: dststrcontainer
///       storageAccountName: ${dstAccount.name}
///       containerAccessType: private
///   example:
///     type: azure:storage:ObjectReplication
///     properties:
///       sourceStorageAccountId: ${srcAccount.id}
///       destinationStorageAccountId: ${dstAccount.id}
///       rules:
///         - sourceContainerName: ${srcContainer.name}
///           destinationContainerName: ${dstContainer.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2025-08-01
///
/// ## Import
///
/// Storage Object Replication Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/objectReplication:ObjectReplication example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Storage/storageAccounts/storageAccount1/objectReplicationPolicies/objectReplicationPolicy1;/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group2/providers/Microsoft.Storage/storageAccounts/storageAccount2/objectReplicationPolicies/objectReplicationPolicy2
/// ```
class ObjectReplication extends pulumi.CustomResource {
  /// The ID of the Object Replication in the destination storage account.
  late final pulumi.Output<String> destinationObjectReplicationId;
  /// The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created.
  late final pulumi.Output<String> destinationStorageAccountId;
  /// Whether metrics are enabled for this object replication. Defaults to `false`.
  late final pulumi.Output<bool?> metricsEnabled;
  /// One or more `rules` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;
  /// The ID of the Object Replication in the source storage account.
  late final pulumi.Output<String> sourceObjectReplicationId;
  /// The ID of the source storage account. Changing this forces a new Storage Object Replication to be created.
  late final pulumi.Output<String> sourceStorageAccountId;

  /// Creates a new [ObjectReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectReplication]. {@macro pulumi_storage_object_replication_object_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectReplication(
    String name, {
    ObjectReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/objectReplication:ObjectReplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationObjectReplicationId = registerOutput<String>('destinationObjectReplicationId');
    destinationStorageAccountId = registerOutput<String>('destinationStorageAccountId');
    metricsEnabled = registerOutput<bool?>('metricsEnabled');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    sourceObjectReplicationId = registerOutput<String>('sourceObjectReplicationId');
    sourceStorageAccountId = registerOutput<String>('sourceStorageAccountId');
  }

  /// Gets an existing [ObjectReplication] resource's state with the given [name] and [id].
  static ObjectReplication get(
    String name,
    pulumi.Input<String> id, {
    ObjectReplicationState? state,
  }) {
    return ObjectReplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ObjectReplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/objectReplication:ObjectReplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationObjectReplicationId = registerOutput<String>('destinationObjectReplicationId');
    destinationStorageAccountId = registerOutput<String>('destinationStorageAccountId');
    metricsEnabled = registerOutput<bool?>('metricsEnabled');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    sourceObjectReplicationId = registerOutput<String>('sourceObjectReplicationId');
    sourceStorageAccountId = registerOutput<String>('sourceStorageAccountId');
  }
}
