import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_args.dart';
import 'management_policy_state.dart';

/// Manages an Azure Storage Account Management Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "resourceGroupName",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "BlobStorage",
/// });
/// const exampleManagementPolicy = new azure.storage.ManagementPolicy("example", {
///     storageAccountId: exampleAccount.id,
///     rules: [
///         {
///             name: "rule1",
///             enabled: true,
///             filters: {
///                 prefixMatches: ["container1/prefix1"],
///                 blobTypes: ["blockBlob"],
///                 matchBlobIndexTags: [{
///                     name: "tag1",
///                     operation: "==",
///                     value: "val1",
///                 }],
///             },
///             actions: {
///                 baseBlob: {
///                     tierToCoolAfterDaysSinceModificationGreaterThan: 10,
///                     tierToArchiveAfterDaysSinceModificationGreaterThan: 50,
///                     deleteAfterDaysSinceModificationGreaterThan: 100,
///                 },
///                 snapshot: {
///                     deleteAfterDaysSinceCreationGreaterThan: 30,
///                 },
///             },
///         },
///         {
///             name: "rule2",
///             enabled: false,
///             filters: {
///                 prefixMatches: [
///                     "container2/prefix1",
///                     "container2/prefix2",
///                 ],
///                 blobTypes: ["blockBlob"],
///             },
///             actions: {
///                 baseBlob: {
///                     tierToCoolAfterDaysSinceModificationGreaterThan: 11,
///                     tierToArchiveAfterDaysSinceModificationGreaterThan: 51,
///                     deleteAfterDaysSinceModificationGreaterThan: 101,
///                 },
///                 snapshot: {
///                     changeTierToArchiveAfterDaysSinceCreation: 90,
///                     changeTierToCoolAfterDaysSinceCreation: 23,
///                     deleteAfterDaysSinceCreationGreaterThan: 31,
///                 },
///                 version: {
///                     changeTierToArchiveAfterDaysSinceCreation: 9,
///                     changeTierToCoolAfterDaysSinceCreation: 90,
///                     deleteAfterDaysSinceCreation: 3,
///                 },
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="resourceGroupName",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="BlobStorage")
/// example_management_policy = azure.storage.ManagementPolicy("example",
///     storage_account_id=example_account.id,
///     rules=[
///         {
///             "name": "rule1",
///             "enabled": True,
///             "filters": {
///                 "prefix_matches": ["container1/prefix1"],
///                 "blob_types": ["blockBlob"],
///                 "match_blob_index_tags": [{
///                     "name": "tag1",
///                     "operation": "==",
///                     "value": "val1",
///                 }],
///             },
///             "actions": {
///                 "base_blob": {
///                     "tier_to_cool_after_days_since_modification_greater_than": 10,
///                     "tier_to_archive_after_days_since_modification_greater_than": 50,
///                     "delete_after_days_since_modification_greater_than": 100,
///                 },
///                 "snapshot": {
///                     "delete_after_days_since_creation_greater_than": 30,
///                 },
///             },
///         },
///         {
///             "name": "rule2",
///             "enabled": False,
///             "filters": {
///                 "prefix_matches": [
///                     "container2/prefix1",
///                     "container2/prefix2",
///                 ],
///                 "blob_types": ["blockBlob"],
///             },
///             "actions": {
///                 "base_blob": {
///                     "tier_to_cool_after_days_since_modification_greater_than": 11,
///                     "tier_to_archive_after_days_since_modification_greater_than": 51,
///                     "delete_after_days_since_modification_greater_than": 101,
///                 },
///                 "snapshot": {
///                     "change_tier_to_archive_after_days_since_creation": 90,
///                     "change_tier_to_cool_after_days_since_creation": 23,
///                     "delete_after_days_since_creation_greater_than": 31,
///                 },
///                 "version": {
///                     "change_tier_to_archive_after_days_since_creation": 9,
///                     "change_tier_to_cool_after_days_since_creation": 90,
///                     "delete_after_days_since_creation": 3,
///                 },
///             },
///         },
///     ])
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
///         Name = "resourceGroupName",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "BlobStorage",
///     });
///
///     var exampleManagementPolicy = new Azure.Storage.ManagementPolicy("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///         Rules = new[]
///         {
///             new Azure.Storage.Inputs.ManagementPolicyRuleArgs
///             {
///                 Name = "rule1",
///                 Enabled = true,
///                 Filters = new Azure.Storage.Inputs.ManagementPolicyRuleFiltersArgs
///                 {
///                     PrefixMatches = new[]
///                     {
///                         "container1/prefix1",
///                     },
///                     BlobTypes = new[]
///                     {
///                         "blockBlob",
///                     },
///                     MatchBlobIndexTags = new[]
///                     {
///                         new Azure.Storage.Inputs.ManagementPolicyRuleFiltersMatchBlobIndexTagArgs
///                         {
///                             Name = "tag1",
///                             Operation = "==",
///                             Value = "val1",
///                         },
///                     },
///                 },
///                 Actions = new Azure.Storage.Inputs.ManagementPolicyRuleActionsArgs
///                 {
///                     BaseBlob = new Azure.Storage.Inputs.ManagementPolicyRuleActionsBaseBlobArgs
///                     {
///                         TierToCoolAfterDaysSinceModificationGreaterThan = 10,
///                         TierToArchiveAfterDaysSinceModificationGreaterThan = 50,
///                         DeleteAfterDaysSinceModificationGreaterThan = 100,
///                     },
///                     Snapshot = new Azure.Storage.Inputs.ManagementPolicyRuleActionsSnapshotArgs
///                     {
///                         DeleteAfterDaysSinceCreationGreaterThan = 30,
///                     },
///                 },
///             },
///             new Azure.Storage.Inputs.ManagementPolicyRuleArgs
///             {
///                 Name = "rule2",
///                 Enabled = false,
///                 Filters = new Azure.Storage.Inputs.ManagementPolicyRuleFiltersArgs
///                 {
///                     PrefixMatches = new[]
///                     {
///                         "container2/prefix1",
///                         "container2/prefix2",
///                     },
///                     BlobTypes = new[]
///                     {
///                         "blockBlob",
///                     },
///                 },
///                 Actions = new Azure.Storage.Inputs.ManagementPolicyRuleActionsArgs
///                 {
///                     BaseBlob = new Azure.Storage.Inputs.ManagementPolicyRuleActionsBaseBlobArgs
///                     {
///                         TierToCoolAfterDaysSinceModificationGreaterThan = 11,
///                         TierToArchiveAfterDaysSinceModificationGreaterThan = 51,
///                         DeleteAfterDaysSinceModificationGreaterThan = 101,
///                     },
///                     Snapshot = new Azure.Storage.Inputs.ManagementPolicyRuleActionsSnapshotArgs
///                     {
///                         ChangeTierToArchiveAfterDaysSinceCreation = 90,
///                         ChangeTierToCoolAfterDaysSinceCreation = 23,
///                         DeleteAfterDaysSinceCreationGreaterThan = 31,
///                     },
///                     Version = new Azure.Storage.Inputs.ManagementPolicyRuleActionsVersionArgs
///                     {
///                         ChangeTierToArchiveAfterDaysSinceCreation = 9,
///                         ChangeTierToCoolAfterDaysSinceCreation = 90,
///                         DeleteAfterDaysSinceCreation = 3,
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
/// 			Name:     pulumi.String("resourceGroupName"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("BlobStorage"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewManagementPolicy(ctx, "example", &storage.ManagementPolicyArgs{
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Rules: storage.ManagementPolicyRuleArray{
/// 				&storage.ManagementPolicyRuleArgs{
/// 					Name:    pulumi.String("rule1"),
/// 					Enabled: pulumi.Bool(true),
/// 					Filters: &storage.ManagementPolicyRuleFiltersArgs{
/// 						PrefixMatches: pulumi.StringArray{
/// 							pulumi.String("container1/prefix1"),
/// 						},
/// 						BlobTypes: pulumi.StringArray{
/// 							pulumi.String("blockBlob"),
/// 						},
/// 						MatchBlobIndexTags: storage.ManagementPolicyRuleFiltersMatchBlobIndexTagArray{
/// 							&storage.ManagementPolicyRuleFiltersMatchBlobIndexTagArgs{
/// 								Name:      pulumi.String("tag1"),
/// 								Operation: pulumi.String("=="),
/// 								Value:     pulumi.String("val1"),
/// 							},
/// 						},
/// 					},
/// 					Actions: &storage.ManagementPolicyRuleActionsArgs{
/// 						BaseBlob: &storage.ManagementPolicyRuleActionsBaseBlobArgs{
/// 							TierToCoolAfterDaysSinceModificationGreaterThan:    pulumi.Int(10),
/// 							TierToArchiveAfterDaysSinceModificationGreaterThan: pulumi.Int(50),
/// 							DeleteAfterDaysSinceModificationGreaterThan:        pulumi.Int(100),
/// 						},
/// 						Snapshot: &storage.ManagementPolicyRuleActionsSnapshotArgs{
/// 							DeleteAfterDaysSinceCreationGreaterThan: pulumi.Int(30),
/// 						},
/// 					},
/// 				},
/// 				&storage.ManagementPolicyRuleArgs{
/// 					Name:    pulumi.String("rule2"),
/// 					Enabled: pulumi.Bool(false),
/// 					Filters: &storage.ManagementPolicyRuleFiltersArgs{
/// 						PrefixMatches: pulumi.StringArray{
/// 							pulumi.String("container2/prefix1"),
/// 							pulumi.String("container2/prefix2"),
/// 						},
/// 						BlobTypes: pulumi.StringArray{
/// 							pulumi.String("blockBlob"),
/// 						},
/// 					},
/// 					Actions: &storage.ManagementPolicyRuleActionsArgs{
/// 						BaseBlob: &storage.ManagementPolicyRuleActionsBaseBlobArgs{
/// 							TierToCoolAfterDaysSinceModificationGreaterThan:    pulumi.Int(11),
/// 							TierToArchiveAfterDaysSinceModificationGreaterThan: pulumi.Int(51),
/// 							DeleteAfterDaysSinceModificationGreaterThan:        pulumi.Int(101),
/// 						},
/// 						Snapshot: &storage.ManagementPolicyRuleActionsSnapshotArgs{
/// 							ChangeTierToArchiveAfterDaysSinceCreation: pulumi.Int(90),
/// 							ChangeTierToCoolAfterDaysSinceCreation:    pulumi.Int(23),
/// 							DeleteAfterDaysSinceCreationGreaterThan:   pulumi.Int(31),
/// 						},
/// 						Version: &storage.ManagementPolicyRuleActionsVersionArgs{
/// 							ChangeTierToArchiveAfterDaysSinceCreation: pulumi.Int(9),
/// 							ChangeTierToCoolAfterDaysSinceCreation:    pulumi.Int(90),
/// 							DeleteAfterDaysSinceCreation:              pulumi.Int(3),
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
/// import com.pulumi.azure.storage.ManagementPolicy;
/// import com.pulumi.azure.storage.ManagementPolicyArgs;
/// import com.pulumi.azure.storage.inputs.ManagementPolicyRuleArgs;
/// import com.pulumi.azure.storage.inputs.ManagementPolicyRuleFiltersArgs;
/// import com.pulumi.azure.storage.inputs.ManagementPolicyRuleActionsArgs;
/// import com.pulumi.azure.storage.inputs.ManagementPolicyRuleActionsBaseBlobArgs;
/// import com.pulumi.azure.storage.inputs.ManagementPolicyRuleActionsSnapshotArgs;
/// import com.pulumi.azure.storage.inputs.ManagementPolicyRuleActionsVersionArgs;
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
///             .name("resourceGroupName")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("BlobStorage")
///             .build());
///
///         var exampleManagementPolicy = new ManagementPolicy("exampleManagementPolicy", ManagementPolicyArgs.builder()
///             .storageAccountId(exampleAccount.id())
///             .rules(
///                 ManagementPolicyRuleArgs.builder()
///                     .name("rule1")
///                     .enabled(true)
///                     .filters(ManagementPolicyRuleFiltersArgs.builder()
///                         .prefixMatches("container1/prefix1")
///                         .blobTypes("blockBlob")
///                         .matchBlobIndexTags(ManagementPolicyRuleFiltersMatchBlobIndexTagArgs.builder()
///                             .name("tag1")
///                             .operation("==")
///                             .value("val1")
///                             .build())
///                         .build())
///                     .actions(ManagementPolicyRuleActionsArgs.builder()
///                         .baseBlob(ManagementPolicyRuleActionsBaseBlobArgs.builder()
///                             .tierToCoolAfterDaysSinceModificationGreaterThan(10)
///                             .tierToArchiveAfterDaysSinceModificationGreaterThan(50)
///                             .deleteAfterDaysSinceModificationGreaterThan(100)
///                             .build())
///                         .snapshot(ManagementPolicyRuleActionsSnapshotArgs.builder()
///                             .deleteAfterDaysSinceCreationGreaterThan(30)
///                             .build())
///                         .build())
///                     .build(),
///                 ManagementPolicyRuleArgs.builder()
///                     .name("rule2")
///                     .enabled(false)
///                     .filters(ManagementPolicyRuleFiltersArgs.builder()
///                         .prefixMatches(
///                             "container2/prefix1",
///                             "container2/prefix2")
///                         .blobTypes("blockBlob")
///                         .build())
///                     .actions(ManagementPolicyRuleActionsArgs.builder()
///                         .baseBlob(ManagementPolicyRuleActionsBaseBlobArgs.builder()
///                             .tierToCoolAfterDaysSinceModificationGreaterThan(11)
///                             .tierToArchiveAfterDaysSinceModificationGreaterThan(51)
///                             .deleteAfterDaysSinceModificationGreaterThan(101)
///                             .build())
///                         .snapshot(ManagementPolicyRuleActionsSnapshotArgs.builder()
///                             .changeTierToArchiveAfterDaysSinceCreation(90)
///                             .changeTierToCoolAfterDaysSinceCreation(23)
///                             .deleteAfterDaysSinceCreationGreaterThan(31)
///                             .build())
///                         .version(ManagementPolicyRuleActionsVersionArgs.builder()
///                             .changeTierToArchiveAfterDaysSinceCreation(9)
///                             .changeTierToCoolAfterDaysSinceCreation(90)
///                             .deleteAfterDaysSinceCreation(3)
///                             .build())
///                         .build())
///                     .build())
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
///       name: resourceGroupName
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: BlobStorage
///   exampleManagementPolicy:
///     type: azure:storage:ManagementPolicy
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
///       rules:
///         - name: rule1
///           enabled: true
///           filters:
///             prefixMatches:
///               - container1/prefix1
///             blobTypes:
///               - blockBlob
///             matchBlobIndexTags:
///               - name: tag1
///                 operation: ==
///                 value: val1
///           actions:
///             baseBlob:
///               tierToCoolAfterDaysSinceModificationGreaterThan: 10
///               tierToArchiveAfterDaysSinceModificationGreaterThan: 50
///               deleteAfterDaysSinceModificationGreaterThan: 100
///             snapshot:
///               deleteAfterDaysSinceCreationGreaterThan: 30
///         - name: rule2
///           enabled: false
///           filters:
///             prefixMatches:
///               - container2/prefix1
///               - container2/prefix2
///             blobTypes:
///               - blockBlob
///           actions:
///             baseBlob:
///               tierToCoolAfterDaysSinceModificationGreaterThan: 11
///               tierToArchiveAfterDaysSinceModificationGreaterThan: 51
///               deleteAfterDaysSinceModificationGreaterThan: 101
///             snapshot:
///               changeTierToArchiveAfterDaysSinceCreation: 90
///               changeTierToCoolAfterDaysSinceCreation: 23
///               deleteAfterDaysSinceCreationGreaterThan: 31
///             version:
///               changeTierToArchiveAfterDaysSinceCreation: 9
///               changeTierToCoolAfterDaysSinceCreation: 90
///               deleteAfterDaysSinceCreation: 3
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
/// Storage Account Management Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/managementPolicy:ManagementPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Storage/storageAccounts/myaccountname/managementPolicies/default
/// ```
class ManagementPolicy extends pulumi.CustomResource {
  /// A `rule` block as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [ManagementPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementPolicy]. {@macro pulumi_storage_management_policy_management_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementPolicy(
    String name, {
    ManagementPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:storage/managementPolicy:ManagementPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [ManagementPolicy] resource's state with the given [name] and [id].
  static ManagementPolicy get(
    String name,
    pulumi.Input<String> id, {
    ManagementPolicyState? state,
  }) {
    return ManagementPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagementPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:storage/managementPolicy:ManagementPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    storageAccountId = registerOutput<String>('storageAccountId');
  }
}
