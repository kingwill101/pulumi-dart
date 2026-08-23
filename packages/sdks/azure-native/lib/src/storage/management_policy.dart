import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_args.dart';
import 'management_policy_schema_response.dart';

/// The Get Storage Account ManagementPolicies operation response.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01, 2025-08-01, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageAccountSetManagementPolicies
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 30,
///                                 },
///                             },
///                             Snapshot = new AzureNative.Storage.Inputs.ManagementPolicySnapShotArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer1",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest1",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 30,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobIndexMatch = new[]
///                             {
///                                 new AzureNative.Storage.Inputs.TagFilterArgs
///                                 {
///                                     Name = "tag1",
///                                     Op = "==",
///                                     Value = "val1",
///                                 },
///                                 new AzureNative.Storage.Inputs.TagFilterArgs
///                                 {
///                                     Name = "tag2",
///                                     Op = "==",
///                                     Value = "val2",
///                                 },
///                             },
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer2",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest2",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Snapshot: &storage.ManagementPolicySnapShotArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer1"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest1"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobIndexMatch: storage.TagFilterArray{
/// 									&storage.TagFilterArgs{
/// 										Name:  pulumi.String("tag1"),
/// 										Op:    pulumi.String("=="),
/// 										Value: pulumi.String("val1"),
/// 									},
/// 									&storage.TagFilterArgs{
/// 										Name:  pulumi.String("tag2"),
/// 										Op:    pulumi.String("=="),
/// 										Value: pulumi.String("val2"),
/// 									},
/// 								},
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer2"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest2"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterModificationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterModificationGreaterThan" = 90
///             }
///             "tierToCool" = {
///               "daysAfterModificationGreaterThan" = 30
///             }
///           }
///           "snapshot" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer1"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest1"
///       "type"    = "Lifecycle"
///       }, {
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterModificationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterModificationGreaterThan" = 90
///             }
///             "tierToCool" = {
///               "daysAfterModificationGreaterThan" = 30
///             }
///           }
///         }
///         "filters" = {
///           "blobIndexMatch" = [{
///             "name"  = "tag1"
///             "op"    = "=="
///             "value" = "val1"
///             }, {
///             "name"  = "tag2"
///             "op"    = "=="
///             "value" = "val2"
///           }]
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer2"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest2"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(
///                     ManagementPolicyRuleArgs.builder()
///                         .definition(ManagementPolicyDefinitionArgs.builder()
///                             .actions(ManagementPolicyActionArgs.builder()
///                                 .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                     .delete(DateAfterModificationArgs.builder()
///                                         .daysAfterModificationGreaterThan(1000.0)
///                                         .build())
///                                     .tierToArchive(DateAfterModificationArgs.builder()
///                                         .daysAfterModificationGreaterThan(90.0)
///                                         .build())
///                                     .tierToCool(DateAfterModificationArgs.builder()
///                                         .daysAfterModificationGreaterThan(30.0)
///                                         .build())
///                                     .build())
///                                 .snapshot(ManagementPolicySnapShotArgs.builder()
///                                     .delete(DateAfterCreationArgs.builder()
///                                         .daysAfterCreationGreaterThan(30.0)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .filters(ManagementPolicyFilterArgs.builder()
///                                 .blobTypes("blockBlob")
///                                 .prefixMatch("olcmtestcontainer1")
///                                 .build())
///                             .build())
///                         .enabled(true)
///                         .name("olcmtest1")
///                         .type("Lifecycle")
///                         .build(),
///                     ManagementPolicyRuleArgs.builder()
///                         .definition(ManagementPolicyDefinitionArgs.builder()
///                             .actions(ManagementPolicyActionArgs.builder()
///                                 .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                     .delete(DateAfterModificationArgs.builder()
///                                         .daysAfterModificationGreaterThan(1000.0)
///                                         .build())
///                                     .tierToArchive(DateAfterModificationArgs.builder()
///                                         .daysAfterModificationGreaterThan(90.0)
///                                         .build())
///                                     .tierToCool(DateAfterModificationArgs.builder()
///                                         .daysAfterModificationGreaterThan(30.0)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .filters(ManagementPolicyFilterArgs.builder()
///                                 .blobIndexMatch(
///                                     TagFilterArgs.builder()
///                                         .name("tag1")
///                                         .op("==")
///                                         .value("val1")
///                                         .build(),
///                                     TagFilterArgs.builder()
///                                         .name("tag2")
///                                         .op("==")
///                                         .value("val2")
///                                         .build())
///                                 .blobTypes("blockBlob")
///                                 .prefixMatch("olcmtestcontainer2")
///                                 .build())
///                             .build())
///                         .enabled(true)
///                         .name("olcmtest2")
///                         .type("Lifecycle")
///                         .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [
///             {
///                 definition: {
///                     actions: {
///                         baseBlob: {
///                             "delete": {
///                                 daysAfterModificationGreaterThan: 1000,
///                             },
///                             tierToArchive: {
///                                 daysAfterModificationGreaterThan: 90,
///                             },
///                             tierToCool: {
///                                 daysAfterModificationGreaterThan: 30,
///                             },
///                         },
///                         snapshot: {
///                             "delete": {
///                                 daysAfterCreationGreaterThan: 30,
///                             },
///                         },
///                     },
///                     filters: {
///                         blobTypes: ["blockBlob"],
///                         prefixMatch: ["olcmtestcontainer1"],
///                     },
///                 },
///                 enabled: true,
///                 name: "olcmtest1",
///                 type: azure_native.storage.RuleType.Lifecycle,
///             },
///             {
///                 definition: {
///                     actions: {
///                         baseBlob: {
///                             "delete": {
///                                 daysAfterModificationGreaterThan: 1000,
///                             },
///                             tierToArchive: {
///                                 daysAfterModificationGreaterThan: 90,
///                             },
///                             tierToCool: {
///                                 daysAfterModificationGreaterThan: 30,
///                             },
///                         },
///                     },
///                     filters: {
///                         blobIndexMatch: [
///                             {
///                                 name: "tag1",
///                                 op: "==",
///                                 value: "val1",
///                             },
///                             {
///                                 name: "tag2",
///                                 op: "==",
///                                 value: "val2",
///                             },
///                         ],
///                         blobTypes: ["blockBlob"],
///                         prefixMatch: ["olcmtestcontainer2"],
///                     },
///                 },
///                 enabled: true,
///                 name: "olcmtest2",
///                 type: azure_native.storage.RuleType.Lifecycle,
///             },
///         ],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [
///             {
///                 "definition": {
///                     "actions": {
///                         "base_blob": {
///                             "delete": {
///                                 "days_after_modification_greater_than": float(1000),
///                             },
///                             "tier_to_archive": {
///                                 "days_after_modification_greater_than": float(90),
///                             },
///                             "tier_to_cool": {
///                                 "days_after_modification_greater_than": float(30),
///                             },
///                         },
///                         "snapshot": {
///                             "delete": {
///                                 "days_after_creation_greater_than": float(30),
///                             },
///                         },
///                     },
///                     "filters": {
///                         "blob_types": ["blockBlob"],
///                         "prefix_match": ["olcmtestcontainer1"],
///                     },
///                 },
///                 "enabled": True,
///                 "name": "olcmtest1",
///                 "type": azure_native.storage.RuleType.LIFECYCLE,
///             },
///             {
///                 "definition": {
///                     "actions": {
///                         "base_blob": {
///                             "delete": {
///                                 "days_after_modification_greater_than": float(1000),
///                             },
///                             "tier_to_archive": {
///                                 "days_after_modification_greater_than": float(90),
///                             },
///                             "tier_to_cool": {
///                                 "days_after_modification_greater_than": float(30),
///                             },
///                         },
///                     },
///                     "filters": {
///                         "blob_index_match": [
///                             {
///                                 "name": "tag1",
///                                 "op": "==",
///                                 "value": "val1",
///                             },
///                             {
///                                 "name": "tag2",
///                                 "op": "==",
///                                 "value": "val2",
///                             },
///                         ],
///                         "blob_types": ["blockBlob"],
///                         "prefix_match": ["olcmtestcontainer2"],
///                     },
///                 },
///                 "enabled": True,
///                 "name": "olcmtest2",
///                 "type": azure_native.storage.RuleType.LIFECYCLE,
///             },
///         ],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterModificationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterModificationGreaterThan: 90
///                   tierToCool:
///                     daysAfterModificationGreaterThan: 30
///                 snapshot:
///                   delete:
///                     daysAfterCreationGreaterThan: 30
///               filters:
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer1
///             enabled: true
///             name: olcmtest1
///             type: Lifecycle
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterModificationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterModificationGreaterThan: 90
///                   tierToCool:
///                     daysAfterModificationGreaterThan: 30
///               filters:
///                 blobIndexMatch:
///                   - name: tag1
///                     op: ==
///                     value: val1
///                   - name: tag2
///                     op: ==
///                     value: val2
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer2
///             enabled: true
///             name: olcmtest2
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetManagementPolicyColdTierActions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 90,
///                                 },
///                                 TierToCold = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 30,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 30,
///                                 },
///                             },
///                             Snapshot = new AzureNative.Storage.Inputs.ManagementPolicySnapShotArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                                 TierToCold = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                             Version = new AzureNative.Storage.Inputs.ManagementPolicyVersionArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                                 TierToCold = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer1",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest1",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCold: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(30),
/// 									},
/// 									TierToCool: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Snapshot: &storage.ManagementPolicySnapShotArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 									TierToCold: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Version: &storage.ManagementPolicyVersionArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 									TierToCold: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer1"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest1"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterModificationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterModificationGreaterThan" = 90
///             }
///             "tierToCold" = {
///               "daysAfterModificationGreaterThan" = 30
///             }
///             "tierToCool" = {
///               "daysAfterModificationGreaterThan" = 30
///             }
///           }
///           "snapshot" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///             "tierToCold" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///           "version" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///             "tierToCold" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer1"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest1"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(ManagementPolicyRuleArgs.builder()
///                     .definition(ManagementPolicyDefinitionArgs.builder()
///                         .actions(ManagementPolicyActionArgs.builder()
///                             .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                 .delete(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(1000.0)
///                                     .build())
///                                 .tierToArchive(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(90.0)
///                                     .build())
///                                 .tierToCold(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(30.0)
///                                     .build())
///                                 .tierToCool(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .snapshot(ManagementPolicySnapShotArgs.builder()
///                                 .delete(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .tierToCold(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .version(ManagementPolicyVersionArgs.builder()
///                                 .delete(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .tierToCold(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .filters(ManagementPolicyFilterArgs.builder()
///                             .blobTypes("blockBlob")
///                             .prefixMatch("olcmtestcontainer1")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .name("olcmtest1")
///                     .type("Lifecycle")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [{
///             definition: {
///                 actions: {
///                     baseBlob: {
///                         "delete": {
///                             daysAfterModificationGreaterThan: 1000,
///                         },
///                         tierToArchive: {
///                             daysAfterModificationGreaterThan: 90,
///                         },
///                         tierToCold: {
///                             daysAfterModificationGreaterThan: 30,
///                         },
///                         tierToCool: {
///                             daysAfterModificationGreaterThan: 30,
///                         },
///                     },
///                     snapshot: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                         tierToCold: {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                     version: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                         tierToCold: {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                 },
///                 filters: {
///                     blobTypes: ["blockBlob"],
///                     prefixMatch: ["olcmtestcontainer1"],
///                 },
///             },
///             enabled: true,
///             name: "olcmtest1",
///             type: azure_native.storage.RuleType.Lifecycle,
///         }],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [{
///             "definition": {
///                 "actions": {
///                     "base_blob": {
///                         "delete": {
///                             "days_after_modification_greater_than": float(1000),
///                         },
///                         "tier_to_archive": {
///                             "days_after_modification_greater_than": float(90),
///                         },
///                         "tier_to_cold": {
///                             "days_after_modification_greater_than": float(30),
///                         },
///                         "tier_to_cool": {
///                             "days_after_modification_greater_than": float(30),
///                         },
///                     },
///                     "snapshot": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                         "tier_to_cold": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                     "version": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                         "tier_to_cold": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                 },
///                 "filters": {
///                     "blob_types": ["blockBlob"],
///                     "prefix_match": ["olcmtestcontainer1"],
///                 },
///             },
///             "enabled": True,
///             "name": "olcmtest1",
///             "type": azure_native.storage.RuleType.LIFECYCLE,
///         }],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterModificationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterModificationGreaterThan: 90
///                   tierToCold:
///                     daysAfterModificationGreaterThan: 30
///                   tierToCool:
///                     daysAfterModificationGreaterThan: 30
///                 snapshot:
///                   delete:
///                     daysAfterCreationGreaterThan: 30
///                   tierToCold:
///                     daysAfterCreationGreaterThan: 30
///                 version:
///                   delete:
///                     daysAfterCreationGreaterThan: 30
///                   tierToCold:
///                     daysAfterCreationGreaterThan: 30
///               filters:
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer1
///             enabled: true
///             name: olcmtest1
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetManagementPolicyForBlockAndAppendBlobs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 90,
///                                 },
///                             },
///                             Snapshot = new AzureNative.Storage.Inputs.ManagementPolicySnapShotArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 90,
///                                 },
///                             },
///                             Version = new AzureNative.Storage.Inputs.ManagementPolicyVersionArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 90,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                                 "appendBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer1",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest1",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(90),
/// 									},
/// 								},
/// 								Snapshot: &storage.ManagementPolicySnapShotArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(90),
/// 									},
/// 								},
/// 								Version: &storage.ManagementPolicyVersionArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(90),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 									pulumi.String("appendBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer1"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest1"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterModificationGreaterThan" = 90
///             }
///           }
///           "snapshot" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 90
///             }
///           }
///           "version" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 90
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob", "appendBlob"]
///           "prefixMatch" = ["olcmtestcontainer1"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest1"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(ManagementPolicyRuleArgs.builder()
///                     .definition(ManagementPolicyDefinitionArgs.builder()
///                         .actions(ManagementPolicyActionArgs.builder()
///                             .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                 .delete(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(90.0)
///                                     .build())
///                                 .build())
///                             .snapshot(ManagementPolicySnapShotArgs.builder()
///                                 .delete(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(90.0)
///                                     .build())
///                                 .build())
///                             .version(ManagementPolicyVersionArgs.builder()
///                                 .delete(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(90.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .filters(ManagementPolicyFilterArgs.builder()
///                             .blobTypes(
///                                 "blockBlob",
///                                 "appendBlob")
///                             .prefixMatch("olcmtestcontainer1")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .name("olcmtest1")
///                     .type("Lifecycle")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [{
///             definition: {
///                 actions: {
///                     baseBlob: {
///                         "delete": {
///                             daysAfterModificationGreaterThan: 90,
///                         },
///                     },
///                     snapshot: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 90,
///                         },
///                     },
///                     version: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 90,
///                         },
///                     },
///                 },
///                 filters: {
///                     blobTypes: [
///                         "blockBlob",
///                         "appendBlob",
///                     ],
///                     prefixMatch: ["olcmtestcontainer1"],
///                 },
///             },
///             enabled: true,
///             name: "olcmtest1",
///             type: azure_native.storage.RuleType.Lifecycle,
///         }],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [{
///             "definition": {
///                 "actions": {
///                     "base_blob": {
///                         "delete": {
///                             "days_after_modification_greater_than": float(90),
///                         },
///                     },
///                     "snapshot": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(90),
///                         },
///                     },
///                     "version": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(90),
///                         },
///                     },
///                 },
///                 "filters": {
///                     "blob_types": [
///                         "blockBlob",
///                         "appendBlob",
///                     ],
///                     "prefix_match": ["olcmtestcontainer1"],
///                 },
///             },
///             "enabled": True,
///             "name": "olcmtest1",
///             "type": azure_native.storage.RuleType.LIFECYCLE,
///         }],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterModificationGreaterThan: 90
///                 snapshot:
///                   delete:
///                     daysAfterCreationGreaterThan: 90
///                 version:
///                   delete:
///                     daysAfterCreationGreaterThan: 90
///               filters:
///                 blobTypes:
///                   - blockBlob
///                   - appendBlob
///                 prefixMatch:
///                   - olcmtestcontainer1
///             enabled: true
///             name: olcmtest1
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetManagementPolicyHotTierActions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 TierToHot = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 30,
///                                 },
///                             },
///                             Snapshot = new AzureNative.Storage.Inputs.ManagementPolicySnapShotArgs
///                             {
///                                 TierToHot = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                             Version = new AzureNative.Storage.Inputs.ManagementPolicyVersionArgs
///                             {
///                                 TierToHot = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer1",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest1",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									TierToHot: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Snapshot: &storage.ManagementPolicySnapShotArgs{
/// 									TierToHot: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Version: &storage.ManagementPolicyVersionArgs{
/// 									TierToHot: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer1"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest1"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "tierToHot" = {
///               "daysAfterModificationGreaterThan" = 30
///             }
///           }
///           "snapshot" = {
///             "tierToHot" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///           "version" = {
///             "tierToHot" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer1"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest1"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(ManagementPolicyRuleArgs.builder()
///                     .definition(ManagementPolicyDefinitionArgs.builder()
///                         .actions(ManagementPolicyActionArgs.builder()
///                             .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                 .tierToHot(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .snapshot(ManagementPolicySnapShotArgs.builder()
///                                 .tierToHot(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .version(ManagementPolicyVersionArgs.builder()
///                                 .tierToHot(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .filters(ManagementPolicyFilterArgs.builder()
///                             .blobTypes("blockBlob")
///                             .prefixMatch("olcmtestcontainer1")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .name("olcmtest1")
///                     .type("Lifecycle")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [{
///             definition: {
///                 actions: {
///                     baseBlob: {
///                         tierToHot: {
///                             daysAfterModificationGreaterThan: 30,
///                         },
///                     },
///                     snapshot: {
///                         tierToHot: {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                     version: {
///                         tierToHot: {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                 },
///                 filters: {
///                     blobTypes: ["blockBlob"],
///                     prefixMatch: ["olcmtestcontainer1"],
///                 },
///             },
///             enabled: true,
///             name: "olcmtest1",
///             type: azure_native.storage.RuleType.Lifecycle,
///         }],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [{
///             "definition": {
///                 "actions": {
///                     "base_blob": {
///                         "tier_to_hot": {
///                             "days_after_modification_greater_than": float(30),
///                         },
///                     },
///                     "snapshot": {
///                         "tier_to_hot": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                     "version": {
///                         "tier_to_hot": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                 },
///                 "filters": {
///                     "blob_types": ["blockBlob"],
///                     "prefix_match": ["olcmtestcontainer1"],
///                 },
///             },
///             "enabled": True,
///             "name": "olcmtest1",
///             "type": azure_native.storage.RuleType.LIFECYCLE,
///         }],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   tierToHot:
///                     daysAfterModificationGreaterThan: 30
///                 snapshot:
///                   tierToHot:
///                     daysAfterCreationGreaterThan: 30
///                 version:
///                   tierToHot:
///                     daysAfterCreationGreaterThan: 30
///               filters:
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer1
///             enabled: true
///             name: olcmtest1
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetManagementPolicyWithSnapshotAndVersion
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 30,
///                                 },
///                             },
///                             Snapshot = new AzureNative.Storage.Inputs.ManagementPolicySnapShotArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                             Version = new AzureNative.Storage.Inputs.ManagementPolicyVersionArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer1",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest1",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Snapshot: &storage.ManagementPolicySnapShotArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Version: &storage.ManagementPolicyVersionArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer1"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest1"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterModificationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterModificationGreaterThan" = 90
///             }
///             "tierToCool" = {
///               "daysAfterModificationGreaterThan" = 30
///             }
///           }
///           "snapshot" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterCreationGreaterThan" = 90
///             }
///             "tierToCool" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///           "version" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterCreationGreaterThan" = 90
///             }
///             "tierToCool" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer1"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest1"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(ManagementPolicyRuleArgs.builder()
///                     .definition(ManagementPolicyDefinitionArgs.builder()
///                         .actions(ManagementPolicyActionArgs.builder()
///                             .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                 .delete(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(1000.0)
///                                     .build())
///                                 .tierToArchive(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(90.0)
///                                     .build())
///                                 .tierToCool(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .snapshot(ManagementPolicySnapShotArgs.builder()
///                                 .delete(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(1000.0)
///                                     .build())
///                                 .tierToArchive(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(90.0)
///                                     .build())
///                                 .tierToCool(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .version(ManagementPolicyVersionArgs.builder()
///                                 .delete(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(1000.0)
///                                     .build())
///                                 .tierToArchive(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(90.0)
///                                     .build())
///                                 .tierToCool(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .filters(ManagementPolicyFilterArgs.builder()
///                             .blobTypes("blockBlob")
///                             .prefixMatch("olcmtestcontainer1")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .name("olcmtest1")
///                     .type("Lifecycle")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [{
///             definition: {
///                 actions: {
///                     baseBlob: {
///                         "delete": {
///                             daysAfterModificationGreaterThan: 1000,
///                         },
///                         tierToArchive: {
///                             daysAfterModificationGreaterThan: 90,
///                         },
///                         tierToCool: {
///                             daysAfterModificationGreaterThan: 30,
///                         },
///                     },
///                     snapshot: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 1000,
///                         },
///                         tierToArchive: {
///                             daysAfterCreationGreaterThan: 90,
///                         },
///                         tierToCool: {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                     version: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 1000,
///                         },
///                         tierToArchive: {
///                             daysAfterCreationGreaterThan: 90,
///                         },
///                         tierToCool: {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                 },
///                 filters: {
///                     blobTypes: ["blockBlob"],
///                     prefixMatch: ["olcmtestcontainer1"],
///                 },
///             },
///             enabled: true,
///             name: "olcmtest1",
///             type: azure_native.storage.RuleType.Lifecycle,
///         }],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [{
///             "definition": {
///                 "actions": {
///                     "base_blob": {
///                         "delete": {
///                             "days_after_modification_greater_than": float(1000),
///                         },
///                         "tier_to_archive": {
///                             "days_after_modification_greater_than": float(90),
///                         },
///                         "tier_to_cool": {
///                             "days_after_modification_greater_than": float(30),
///                         },
///                     },
///                     "snapshot": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(1000),
///                         },
///                         "tier_to_archive": {
///                             "days_after_creation_greater_than": float(90),
///                         },
///                         "tier_to_cool": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                     "version": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(1000),
///                         },
///                         "tier_to_archive": {
///                             "days_after_creation_greater_than": float(90),
///                         },
///                         "tier_to_cool": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                 },
///                 "filters": {
///                     "blob_types": ["blockBlob"],
///                     "prefix_match": ["olcmtestcontainer1"],
///                 },
///             },
///             "enabled": True,
///             "name": "olcmtest1",
///             "type": azure_native.storage.RuleType.LIFECYCLE,
///         }],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterModificationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterModificationGreaterThan: 90
///                   tierToCool:
///                     daysAfterModificationGreaterThan: 30
///                 snapshot:
///                   delete:
///                     daysAfterCreationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterCreationGreaterThan: 90
///                   tierToCool:
///                     daysAfterCreationGreaterThan: 30
///                 version:
///                   delete:
///                     daysAfterCreationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterCreationGreaterThan: 90
///                   tierToCool:
///                     daysAfterCreationGreaterThan: 30
///               filters:
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer1
///             enabled: true
///             name: olcmtest1
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetManagementPolicy_BaseBlobDaysAfterCreationActions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer1",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest1",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterModificationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterModificationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer1"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest1"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterCreationGreaterThan" = 90
///             }
///             "tierToCool" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer1"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest1"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(ManagementPolicyRuleArgs.builder()
///                     .definition(ManagementPolicyDefinitionArgs.builder()
///                         .actions(ManagementPolicyActionArgs.builder()
///                             .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                 .delete(DateAfterModificationArgs.builder()
///                                     .daysAfterCreationGreaterThan(1000.0)
///                                     .build())
///                                 .tierToArchive(DateAfterModificationArgs.builder()
///                                     .daysAfterCreationGreaterThan(90.0)
///                                     .build())
///                                 .tierToCool(DateAfterModificationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .filters(ManagementPolicyFilterArgs.builder()
///                             .blobTypes("blockBlob")
///                             .prefixMatch("olcmtestcontainer1")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .name("olcmtest1")
///                     .type("Lifecycle")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [{
///             definition: {
///                 actions: {
///                     baseBlob: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 1000,
///                         },
///                         tierToArchive: {
///                             daysAfterCreationGreaterThan: 90,
///                         },
///                         tierToCool: {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                 },
///                 filters: {
///                     blobTypes: ["blockBlob"],
///                     prefixMatch: ["olcmtestcontainer1"],
///                 },
///             },
///             enabled: true,
///             name: "olcmtest1",
///             type: azure_native.storage.RuleType.Lifecycle,
///         }],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [{
///             "definition": {
///                 "actions": {
///                     "base_blob": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(1000),
///                         },
///                         "tier_to_archive": {
///                             "days_after_creation_greater_than": float(90),
///                         },
///                         "tier_to_cool": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                 },
///                 "filters": {
///                     "blob_types": ["blockBlob"],
///                     "prefix_match": ["olcmtestcontainer1"],
///                 },
///             },
///             "enabled": True,
///             "name": "olcmtest1",
///             "type": azure_native.storage.RuleType.LIFECYCLE,
///         }],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterCreationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterCreationGreaterThan: 90
///                   tierToCool:
///                     daysAfterCreationGreaterThan: 30
///               filters:
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer1
///             enabled: true
///             name: olcmtest1
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetManagementPolicy_LastAccessTimeBasedBlobActions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterLastAccessTimeGreaterThan = 1000,
///                                 },
///                                 EnableAutoTierToHotFromCool = true,
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterLastAccessTimeGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterLastAccessTimeGreaterThan = 30,
///                                 },
///                             },
///                             Snapshot = new AzureNative.Storage.Inputs.ManagementPolicySnapShotArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterLastAccessTimeGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									EnableAutoTierToHotFromCool: pulumi.Bool(true),
/// 									TierToArchive: &storage.DateAfterModificationArgs{
/// 										DaysAfterLastAccessTimeGreaterThan: pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterModificationArgs{
/// 										DaysAfterLastAccessTimeGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Snapshot: &storage.ManagementPolicySnapShotArgs{
/// 									Delete: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterLastAccessTimeGreaterThan" = 1000
///             }
///             "enableAutoTierToHotFromCool" = true
///             "tierToArchive" = {
///               "daysAfterLastAccessTimeGreaterThan" = 90
///             }
///             "tierToCool" = {
///               "daysAfterLastAccessTimeGreaterThan" = 30
///             }
///           }
///           "snapshot" = {
///             "delete" = {
///               "daysAfterCreationGreaterThan" = 30
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(ManagementPolicyRuleArgs.builder()
///                     .definition(ManagementPolicyDefinitionArgs.builder()
///                         .actions(ManagementPolicyActionArgs.builder()
///                             .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                 .delete(DateAfterModificationArgs.builder()
///                                     .daysAfterLastAccessTimeGreaterThan(1000.0)
///                                     .build())
///                                 .enableAutoTierToHotFromCool(true)
///                                 .tierToArchive(DateAfterModificationArgs.builder()
///                                     .daysAfterLastAccessTimeGreaterThan(90.0)
///                                     .build())
///                                 .tierToCool(DateAfterModificationArgs.builder()
///                                     .daysAfterLastAccessTimeGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .snapshot(ManagementPolicySnapShotArgs.builder()
///                                 .delete(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .filters(ManagementPolicyFilterArgs.builder()
///                             .blobTypes("blockBlob")
///                             .prefixMatch("olcmtestcontainer")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .name("olcmtest")
///                     .type("Lifecycle")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [{
///             definition: {
///                 actions: {
///                     baseBlob: {
///                         "delete": {
///                             daysAfterLastAccessTimeGreaterThan: 1000,
///                         },
///                         enableAutoTierToHotFromCool: true,
///                         tierToArchive: {
///                             daysAfterLastAccessTimeGreaterThan: 90,
///                         },
///                         tierToCool: {
///                             daysAfterLastAccessTimeGreaterThan: 30,
///                         },
///                     },
///                     snapshot: {
///                         "delete": {
///                             daysAfterCreationGreaterThan: 30,
///                         },
///                     },
///                 },
///                 filters: {
///                     blobTypes: ["blockBlob"],
///                     prefixMatch: ["olcmtestcontainer"],
///                 },
///             },
///             enabled: true,
///             name: "olcmtest",
///             type: azure_native.storage.RuleType.Lifecycle,
///         }],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [{
///             "definition": {
///                 "actions": {
///                     "base_blob": {
///                         "delete": {
///                             "days_after_last_access_time_greater_than": float(1000),
///                         },
///                         "enable_auto_tier_to_hot_from_cool": True,
///                         "tier_to_archive": {
///                             "days_after_last_access_time_greater_than": float(90),
///                         },
///                         "tier_to_cool": {
///                             "days_after_last_access_time_greater_than": float(30),
///                         },
///                     },
///                     "snapshot": {
///                         "delete": {
///                             "days_after_creation_greater_than": float(30),
///                         },
///                     },
///                 },
///                 "filters": {
///                     "blob_types": ["blockBlob"],
///                     "prefix_match": ["olcmtestcontainer"],
///                 },
///             },
///             "enabled": True,
///             "name": "olcmtest",
///             "type": azure_native.storage.RuleType.LIFECYCLE,
///         }],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterLastAccessTimeGreaterThan: 1000
///                   enableAutoTierToHotFromCool: true
///                   tierToArchive:
///                     daysAfterLastAccessTimeGreaterThan: 90
///                   tierToCool:
///                     daysAfterLastAccessTimeGreaterThan: 30
///                 snapshot:
///                   delete:
///                     daysAfterCreationGreaterThan: 30
///               filters:
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer
///             enabled: true
///             name: olcmtest
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetManagementPolicy_LastTierChangeTimeActions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementPolicy = new AzureNative.Storage.ManagementPolicy("managementPolicy", new()
///     {
///         AccountName = "sto9699",
///         ManagementPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.ManagementPolicySchemaArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.ManagementPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.ManagementPolicyDefinitionArgs
///                     {
///                         Actions = new AzureNative.Storage.Inputs.ManagementPolicyActionArgs
///                         {
///                             BaseBlob = new AzureNative.Storage.Inputs.ManagementPolicyBaseBlobArgs
///                             {
///                                 Delete = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 1000,
///                                 },
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterLastTierChangeGreaterThan = 120,
///                                     DaysAfterModificationGreaterThan = 90,
///                                 },
///                                 TierToCool = new AzureNative.Storage.Inputs.DateAfterModificationArgs
///                                 {
///                                     DaysAfterModificationGreaterThan = 30,
///                                 },
///                             },
///                             Snapshot = new AzureNative.Storage.Inputs.ManagementPolicySnapShotArgs
///                             {
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                     DaysAfterLastTierChangeGreaterThan = 90,
///                                 },
///                             },
///                             Version = new AzureNative.Storage.Inputs.ManagementPolicyVersionArgs
///                             {
///                                 TierToArchive = new AzureNative.Storage.Inputs.DateAfterCreationArgs
///                                 {
///                                     DaysAfterCreationGreaterThan = 30,
///                                     DaysAfterLastTierChangeGreaterThan = 90,
///                                 },
///                             },
///                         },
///                         Filters = new AzureNative.Storage.Inputs.ManagementPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                             },
///                             PrefixMatch = new[]
///                             {
///                                 "olcmtestcontainer",
///                             },
///                         },
///                     },
///                     Enabled = true,
///                     Name = "olcmtest",
///                     Type = AzureNative.Storage.RuleType.Lifecycle,
///                 },
///             },
///         },
///         ResourceGroupName = "res7687",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewManagementPolicy(ctx, "managementPolicy", &storage.ManagementPolicyArgs{
/// 			AccountName:          pulumi.String("sto9699"),
/// 			ManagementPolicyName: pulumi.String("default"),
/// 			Policy: &storage.ManagementPolicySchemaArgs{
/// 				Rules: storage.ManagementPolicyRuleArray{
/// 					&storage.ManagementPolicyRuleArgs{
/// 						Definition: &storage.ManagementPolicyDefinitionArgs{
/// 							Actions: &storage.ManagementPolicyActionArgs{
/// 								BaseBlob: &storage.ManagementPolicyBaseBlobArgs{
/// 									Delete: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(1000),
/// 									},
/// 									TierToArchive: &storage.DateAfterModificationArgs{
/// 										DaysAfterLastTierChangeGreaterThan: pulumi.Float64(120),
/// 										DaysAfterModificationGreaterThan:   pulumi.Float64(90),
/// 									},
/// 									TierToCool: &storage.DateAfterModificationArgs{
/// 										DaysAfterModificationGreaterThan: pulumi.Float64(30),
/// 									},
/// 								},
/// 								Snapshot: &storage.ManagementPolicySnapShotArgs{
/// 									TierToArchive: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan:       pulumi.Float64(30),
/// 										DaysAfterLastTierChangeGreaterThan: pulumi.Float64(90),
/// 									},
/// 								},
/// 								Version: &storage.ManagementPolicyVersionArgs{
/// 									TierToArchive: &storage.DateAfterCreationArgs{
/// 										DaysAfterCreationGreaterThan:       pulumi.Float64(30),
/// 										DaysAfterLastTierChangeGreaterThan: pulumi.Float64(90),
/// 									},
/// 								},
/// 							},
/// 							Filters: &storage.ManagementPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 								},
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("olcmtestcontainer"),
/// 								},
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						Name:    pulumi.String("olcmtest"),
/// 						Type:    pulumi.String(storage.RuleTypeLifecycle),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_managementpolicy" "managementPolicy" {
///   account_name           = "sto9699"
///   management_policy_name = "default"
///   policy = {
///     rules = [{
///       "definition" = {
///         "actions" = {
///           "baseBlob" = {
///             "delete" = {
///               "daysAfterModificationGreaterThan" = 1000
///             }
///             "tierToArchive" = {
///               "daysAfterLastTierChangeGreaterThan" = 120
///               "daysAfterModificationGreaterThan"   = 90
///             }
///             "tierToCool" = {
///               "daysAfterModificationGreaterThan" = 30
///             }
///           }
///           "snapshot" = {
///             "tierToArchive" = {
///               "daysAfterCreationGreaterThan"       = 30
///               "daysAfterLastTierChangeGreaterThan" = 90
///             }
///           }
///           "version" = {
///             "tierToArchive" = {
///               "daysAfterCreationGreaterThan"       = 30
///               "daysAfterLastTierChangeGreaterThan" = 90
///             }
///           }
///         }
///         "filters" = {
///           "blobTypes"   = ["blockBlob"]
///           "prefixMatch" = ["olcmtestcontainer"]
///         }
///       }
///       "enabled" = true
///       "name"    = "olcmtest"
///       "type"    = "Lifecycle"
///     }]
///   }
///   resource_group_name = "res7687"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.ManagementPolicy;
/// import com.pulumi.azurenative.storage.ManagementPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ManagementPolicySchemaArgs;
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
///         var managementPolicy = new ManagementPolicy("managementPolicy", ManagementPolicyArgs.builder()
///             .accountName("sto9699")
///             .managementPolicyName("default")
///             .policy(ManagementPolicySchemaArgs.builder()
///                 .rules(ManagementPolicyRuleArgs.builder()
///                     .definition(ManagementPolicyDefinitionArgs.builder()
///                         .actions(ManagementPolicyActionArgs.builder()
///                             .baseBlob(ManagementPolicyBaseBlobArgs.builder()
///                                 .delete(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(1000.0)
///                                     .build())
///                                 .tierToArchive(DateAfterModificationArgs.builder()
///                                     .daysAfterLastTierChangeGreaterThan(120.0)
///                                     .daysAfterModificationGreaterThan(90.0)
///                                     .build())
///                                 .tierToCool(DateAfterModificationArgs.builder()
///                                     .daysAfterModificationGreaterThan(30.0)
///                                     .build())
///                                 .build())
///                             .snapshot(ManagementPolicySnapShotArgs.builder()
///                                 .tierToArchive(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .daysAfterLastTierChangeGreaterThan(90.0)
///                                     .build())
///                                 .build())
///                             .version(ManagementPolicyVersionArgs.builder()
///                                 .tierToArchive(DateAfterCreationArgs.builder()
///                                     .daysAfterCreationGreaterThan(30.0)
///                                     .daysAfterLastTierChangeGreaterThan(90.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .filters(ManagementPolicyFilterArgs.builder()
///                             .blobTypes("blockBlob")
///                             .prefixMatch("olcmtestcontainer")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .name("olcmtest")
///                     .type("Lifecycle")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementPolicy = new azure_native.storage.ManagementPolicy("managementPolicy", {
///     accountName: "sto9699",
///     managementPolicyName: "default",
///     policy: {
///         rules: [{
///             definition: {
///                 actions: {
///                     baseBlob: {
///                         "delete": {
///                             daysAfterModificationGreaterThan: 1000,
///                         },
///                         tierToArchive: {
///                             daysAfterLastTierChangeGreaterThan: 120,
///                             daysAfterModificationGreaterThan: 90,
///                         },
///                         tierToCool: {
///                             daysAfterModificationGreaterThan: 30,
///                         },
///                     },
///                     snapshot: {
///                         tierToArchive: {
///                             daysAfterCreationGreaterThan: 30,
///                             daysAfterLastTierChangeGreaterThan: 90,
///                         },
///                     },
///                     version: {
///                         tierToArchive: {
///                             daysAfterCreationGreaterThan: 30,
///                             daysAfterLastTierChangeGreaterThan: 90,
///                         },
///                     },
///                 },
///                 filters: {
///                     blobTypes: ["blockBlob"],
///                     prefixMatch: ["olcmtestcontainer"],
///                 },
///             },
///             enabled: true,
///             name: "olcmtest",
///             type: azure_native.storage.RuleType.Lifecycle,
///         }],
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_policy = azure_native.storage.ManagementPolicy("managementPolicy",
///     account_name="sto9699",
///     management_policy_name="default",
///     policy={
///         "rules": [{
///             "definition": {
///                 "actions": {
///                     "base_blob": {
///                         "delete": {
///                             "days_after_modification_greater_than": float(1000),
///                         },
///                         "tier_to_archive": {
///                             "days_after_last_tier_change_greater_than": float(120),
///                             "days_after_modification_greater_than": float(90),
///                         },
///                         "tier_to_cool": {
///                             "days_after_modification_greater_than": float(30),
///                         },
///                     },
///                     "snapshot": {
///                         "tier_to_archive": {
///                             "days_after_creation_greater_than": float(30),
///                             "days_after_last_tier_change_greater_than": float(90),
///                         },
///                     },
///                     "version": {
///                         "tier_to_archive": {
///                             "days_after_creation_greater_than": float(30),
///                             "days_after_last_tier_change_greater_than": float(90),
///                         },
///                     },
///                 },
///                 "filters": {
///                     "blob_types": ["blockBlob"],
///                     "prefix_match": ["olcmtestcontainer"],
///                 },
///             },
///             "enabled": True,
///             "name": "olcmtest",
///             "type": azure_native.storage.RuleType.LIFECYCLE,
///         }],
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   managementPolicy:
///     type: azure-native:storage:ManagementPolicy
///     properties:
///       accountName: sto9699
///       managementPolicyName: default
///       policy:
///         rules:
///           - definition:
///               actions:
///                 baseBlob:
///                   delete:
///                     daysAfterModificationGreaterThan: 1000
///                   tierToArchive:
///                     daysAfterLastTierChangeGreaterThan: 120
///                     daysAfterModificationGreaterThan: 90
///                   tierToCool:
///                     daysAfterModificationGreaterThan: 30
///                 snapshot:
///                   tierToArchive:
///                     daysAfterCreationGreaterThan: 30
///                     daysAfterLastTierChangeGreaterThan: 90
///                 version:
///                   tierToArchive:
///                     daysAfterCreationGreaterThan: 30
///                     daysAfterLastTierChangeGreaterThan: 90
///               filters:
///                 blobTypes:
///                   - blockBlob
///                 prefixMatch:
///                   - olcmtestcontainer
///             enabled: true
///             name: olcmtest
///             type: Lifecycle
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storage:ManagementPolicy DefaultManagementPolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/managementPolicies/{managementPolicyName}
/// ```
class ManagementPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Returns the date and time the ManagementPolicies was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The Storage Account ManagementPolicy, in JSON format. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  late final pulumi.Output<ManagementPolicySchemaResponse> policy;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementPolicy]. {@macro pulumi_storage_management_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementPolicy(
    String name, {
    ManagementPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:ManagementPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    policy = registerOutput<ManagementPolicySchemaResponse>('policy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagementPolicySchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
