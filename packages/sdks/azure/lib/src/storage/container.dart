import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_args.dart';
import 'container_state.dart';

/// Manages a Container within an Azure Storage Account.
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
///     name: "examplestoraccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "vhds",
///     storageAccountId: exampleAccount.id,
///     containerAccessType: "private",
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
///     name="examplestoraccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     tags={
///         "environment": "staging",
///     })
/// example_container = azure.storage.Container("example",
///     name="vhds",
///     storage_account_id=example_account.id,
///     container_access_type="private")
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
///         Name = "examplestoraccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "vhds",
///         StorageAccountId = exampleAccount.Id,
///         ContainerAccessType = "private",
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
/// 			Name:                   pulumi.String("examplestoraccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("vhds"),
/// 			StorageAccountId:    exampleAccount.ID(),
/// 			ContainerAccessType: pulumi.String("private"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplestoraccount"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   tags = {
///     "environment" = "staging"
///   }
/// }
/// resource "azure_storage_container" "example" {
///   name                  = "vhds"
///   storage_account_id    = azure_storage_account.example.id
///   container_access_type = "private"
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestoraccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("vhds")
///             .storageAccountId(exampleAccount.id())
///             .containerAccessType("private")
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
///       name: examplestoraccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       tags:
///         environment: staging
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: vhds
///       storageAccountId: ${exampleAccount.id}
///       containerAccessType: private
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
/// Storage Containers can be imported using the `resource manager id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/container:Container container1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount/blobServices/default/containers/mycontainer
/// ```
class Container extends pulumi.CustomResource {
  /// The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`.
  ///
  /// &gt; **Note:** When updating `containerAccessType` for an existing storage container resource, Shared Key authentication will always be used, as AzureAD authentication is not supported.
  late final pulumi.Output<String?> containerAccessType;
  /// The default encryption scope to use for blobs uploaded to this container. Changing this forces a new resource to be created.
  late final pulumi.Output<String> defaultEncryptionScope;
  /// Whether to allow blobs to override the default encryption scope for this container. Can only be set when specifying `defaultEncryptionScope`. Defaults to `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> encryptionScopeOverrideEnabled;
  /// Is there an Immutability Policy configured on this Storage Container?
  late final pulumi.Output<bool> hasImmutabilityPolicy;
  /// Is there a Legal Hold configured on this Storage Container?
  late final pulumi.Output<bool> hasLegalHold;
  /// A mapping of MetaData for this Container. All metadata keys should be lowercase.
  late final pulumi.Output<Map<String, String>> metadata;
  /// The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Resource Manager ID of this Storage Container.
  late final pulumi.Output<String> resourceManagerId;
  /// The name of the Storage Account where the Container should be created.
  ///
  /// &gt; **Note:** One of `storageAccountName` or `storageAccountId` must be specified. When specifying `storageAccountId` the resource will use the Resource Manager API, rather than the Data Plane API.
  late final pulumi.Output<String?> storageAccountId;
  /// The name of the Storage Account where the Container should be created. This property is deprecated in favour of `storageAccountId`.
  ///
  /// &gt; **Note:** Migrating from the deprecated `storageAccountName` to `storageAccountId` is supported without recreation. Any other change to either property will result in the resource being recreated.
  late final pulumi.Output<String?> storageAccountName;
  /// The data plane URL of the Storage Container in the format of `&lt;storage blob endpoint&gt;/&lt;container name&gt;`. E.g. `https://example.blob.core.windows.net/mycontainer`.
  late final pulumi.Output<String> url;

  /// Creates a new [Container].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Container]. {@macro pulumi_storage_container_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Container(
    String name, {
    ContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/container:Container',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerAccessType = registerOutput<String?>('containerAccessType');
    defaultEncryptionScope = registerOutput<String>('defaultEncryptionScope');
    encryptionScopeOverrideEnabled = registerOutput<bool?>('encryptionScopeOverrideEnabled');
    hasImmutabilityPolicy = registerOutput<bool>('hasImmutabilityPolicy');
    hasLegalHold = registerOutput<bool>('hasLegalHold');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountName = registerOutput<String?>('storageAccountName');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [Container] resource's state with the given [name] and [id].
  static Container get(
    String name,
    pulumi.Input<String> id, {
    ContainerState? state,
  }) {
    return Container._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Container._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/container:Container',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerAccessType = registerOutput<String?>('containerAccessType');
    defaultEncryptionScope = registerOutput<String>('defaultEncryptionScope');
    encryptionScopeOverrideEnabled = registerOutput<bool?>('encryptionScopeOverrideEnabled');
    hasImmutabilityPolicy = registerOutput<bool>('hasImmutabilityPolicy');
    hasLegalHold = registerOutput<bool>('hasLegalHold');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountName = registerOutput<String?>('storageAccountName');
    url = registerOutput<String>('url');
  }
}
