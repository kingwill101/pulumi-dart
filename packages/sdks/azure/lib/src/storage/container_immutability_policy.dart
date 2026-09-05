import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_immutability_policy_args.dart';
import 'container_immutability_policy_state.dart';

/// Manages an Immutability Policy for a Container within an Azure Storage Account.
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
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleContainerImmutabilityPolicy = new azure.storage.ContainerImmutabilityPolicy("example", {
///     storageContainerResourceManagerId: exampleContainer.id,
///     immutabilityPeriodInDays: 14,
///     protectedAppendWritesAllEnabled: false,
///     protectedAppendWritesEnabled: true,
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
///     name="example",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_container_immutability_policy = azure.storage.ContainerImmutabilityPolicy("example",
///     storage_container_resource_manager_id=example_container.id,
///     immutability_period_in_days=14,
///     protected_append_writes_all_enabled=False,
///     protected_append_writes_enabled=True)
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
///         Name = "example",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleContainerImmutabilityPolicy = new Azure.Storage.ContainerImmutabilityPolicy("example", new()
///     {
///         StorageContainerResourceManagerId = exampleContainer.Id,
///         ImmutabilityPeriodInDays = 14,
///         ProtectedAppendWritesAllEnabled = false,
///         ProtectedAppendWritesEnabled = true,
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
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewContainerImmutabilityPolicy(ctx, "example", &storage.ContainerImmutabilityPolicyArgs{
/// 			StorageContainerResourceManagerId: exampleContainer.ID().ToIDOutput().ToStringOutput(),
/// 			ImmutabilityPeriodInDays:          pulumi.Int(14),
/// 			ProtectedAppendWritesAllEnabled:   pulumi.Bool(false),
/// 			ProtectedAppendWritesEnabled:      pulumi.Bool(true),
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
///   name                  = "example"
///   storage_account_name  = azure_storage_account.example.name
///   container_access_type = "private"
/// }
/// resource "azure_storage_containerimmutabilitypolicy" "example" {
///   storage_container_resource_manager_id = azure_storage_container.example.id
///   immutability_period_in_days           = 14
///   protected_append_writes_all_enabled   = false
///   protected_append_writes_enabled       = true
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
/// import com.pulumi.azure.storage.ContainerImmutabilityPolicy;
/// import com.pulumi.azure.storage.ContainerImmutabilityPolicyArgs;
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
///             .name("example")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleContainerImmutabilityPolicy = new ContainerImmutabilityPolicy("exampleContainerImmutabilityPolicy", ContainerImmutabilityPolicyArgs.builder()
///             .storageContainerResourceManagerId(exampleContainer.id())
///             .immutabilityPeriodInDays(14)
///             .protectedAppendWritesAllEnabled(false)
///             .protectedAppendWritesEnabled(true)
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
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleContainerImmutabilityPolicy:
///     type: azure:storage:ContainerImmutabilityPolicy
///     name: example
///     properties:
///       storageContainerResourceManagerId: ${exampleContainer.id}
///       immutabilityPeriodInDays: 14
///       protectedAppendWritesAllEnabled: false
///       protectedAppendWritesEnabled: true
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
/// Storage Container Immutability Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/containerImmutabilityPolicy:ContainerImmutabilityPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount/blobServices/default/containers/mycontainer/immutabilityPolicies/default
/// ```
class ContainerImmutabilityPolicy extends pulumi.CustomResource {
  /// The time interval in days that the data needs to be kept in a non-erasable and non-modifiable state.
  late final pulumi.Output<int> immutabilityPeriodInDays;
  /// Whether to lock this immutability policy. Cannot be set to `false` once the policy has been locked.
  ///
  /// &gt; **Note:** Once an Immutability Policy has been locked, it cannot be unlocked. After locking, it will only be possible to increase the value for `retentionPeriodInDays` up to 5 times for the lifetime of the policy. No other properties will be updateable. Furthermore, the Storage Container and the Storage Account in which it resides will become protected by the policy. It will no longer be possible to delete the Storage Container or the Storage Account. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/immutable-policy-configure-container-scope?tabs=azure-portal#lock-a-time-based-retention-policy) for more information.
  late final pulumi.Output<bool?> locked;
  /// Whether to allow protected append writes to block and append blobs to the container. Defaults to `false`. Cannot be set with `protectedAppendWritesEnabled`.
  late final pulumi.Output<bool?> protectedAppendWritesAllEnabled;
  /// Whether to allow protected append writes to append blobs to the container. Defaults to `false`. Cannot be set with `protectedAppendWritesAllEnabled`.
  late final pulumi.Output<bool?> protectedAppendWritesEnabled;
  /// The Resource Manager ID of the Storage Container where this Immutability Policy should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageContainerResourceManagerId;

  /// Creates a new [ContainerImmutabilityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerImmutabilityPolicy]. {@macro pulumi_storage_container_immutability_policy_container_immutability_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerImmutabilityPolicy(
    String name, {
    ContainerImmutabilityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/containerImmutabilityPolicy:ContainerImmutabilityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    immutabilityPeriodInDays = registerOutput<int>('immutabilityPeriodInDays');
    locked = registerOutput<bool?>('locked');
    protectedAppendWritesAllEnabled = registerOutput<bool?>('protectedAppendWritesAllEnabled');
    protectedAppendWritesEnabled = registerOutput<bool?>('protectedAppendWritesEnabled');
    storageContainerResourceManagerId = registerOutput<String>('storageContainerResourceManagerId');
  }

  /// Gets an existing [ContainerImmutabilityPolicy] resource's state with the given [name] and [id].
  static ContainerImmutabilityPolicy get(
    String name,
    pulumi.Input<String> id, {
    ContainerImmutabilityPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContainerImmutabilityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContainerImmutabilityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/containerImmutabilityPolicy:ContainerImmutabilityPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    immutabilityPeriodInDays = registerOutput<int>('immutabilityPeriodInDays');
    locked = registerOutput<bool?>('locked');
    protectedAppendWritesAllEnabled = registerOutput<bool?>('protectedAppendWritesAllEnabled');
    protectedAppendWritesEnabled = registerOutput<bool?>('protectedAppendWritesEnabled');
    storageContainerResourceManagerId = registerOutput<String>('storageContainerResourceManagerId');
  }

  /// Creates a typed reference to an existing [ContainerImmutabilityPolicy] resource.
  ContainerImmutabilityPolicy.reference(String urn)
    : super(
        'azure:storage/containerImmutabilityPolicy:ContainerImmutabilityPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    immutabilityPeriodInDays = registerOutput<int>('immutabilityPeriodInDays');
    locked = registerOutput<bool?>('locked');
    protectedAppendWritesAllEnabled = registerOutput<bool?>('protectedAppendWritesAllEnabled');
    protectedAppendWritesEnabled = registerOutput<bool?>('protectedAppendWritesEnabled');
    storageContainerResourceManagerId = registerOutput<String>('storageContainerResourceManagerId');
  }
}
