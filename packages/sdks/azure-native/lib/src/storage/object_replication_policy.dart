import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_policy_args.dart';
import 'object_replication_policy_properties_response_metrics.dart';

/// The replication policy between two storage accounts. Multiple rules can be defined in one policy.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01, 2025-08-01, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageAccountCreateObjectReplicationPolicyOnDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var objectReplicationPolicy = new AzureNative.Storage.ObjectReplicationPolicy("objectReplicationPolicy", new()
///     {
///         AccountName = "dst112",
///         DestinationAccount = "dst112",
///         Metrics = new AzureNative.Storage.Inputs.ObjectReplicationPolicyPropertiesMetricsArgs
///         {
///             Enabled = true,
///         },
///         ObjectReplicationPolicyId = "default",
///         ResourceGroupName = "res7687",
///         Rules = new[]
///         {
///             new AzureNative.Storage.Inputs.ObjectReplicationPolicyRuleArgs
///             {
///                 DestinationContainer = "dcont139",
///                 Filters = new AzureNative.Storage.Inputs.ObjectReplicationPolicyFilterArgs
///                 {
///                     PrefixMatch = new[]
///                     {
///                         "blobA",
///                         "blobB",
///                     },
///                 },
///                 SourceContainer = "scont139",
///             },
///         },
///         SourceAccount = "src1122",
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
/// 		_, err := storage.NewObjectReplicationPolicy(ctx, "objectReplicationPolicy", &storage.ObjectReplicationPolicyArgs{
/// 			AccountName:        pulumi.String("dst112"),
/// 			DestinationAccount: pulumi.String("dst112"),
/// 			Metrics: &storage.ObjectReplicationPolicyPropertiesMetricsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ObjectReplicationPolicyId: pulumi.String("default"),
/// 			ResourceGroupName:         pulumi.String("res7687"),
/// 			Rules: storage.ObjectReplicationPolicyRuleArray{
/// 				&storage.ObjectReplicationPolicyRuleArgs{
/// 					DestinationContainer: pulumi.String("dcont139"),
/// 					Filters: &storage.ObjectReplicationPolicyFilterArgs{
/// 						PrefixMatch: pulumi.StringArray{
/// 							pulumi.String("blobA"),
/// 							pulumi.String("blobB"),
/// 						},
/// 					},
/// 					SourceContainer: pulumi.String("scont139"),
/// 				},
/// 			},
/// 			SourceAccount: pulumi.String("src1122"),
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
/// resource "azure-native_storage_objectreplicationpolicy" "objectReplicationPolicy" {
///   account_name        = "dst112"
///   destination_account = "dst112"
///   metrics = {
///     enabled = true
///   }
///   object_replication_policy_id = "default"
///   resource_group_name          = "res7687"
///   rules {
///     destination_container = "dcont139"
///     filters = {
///       prefix_match = ["blobA", "blobB"]
///     }
///     source_container = "scont139"
///   }
///   source_account = "src1122"
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
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicy;
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyPropertiesMetricsArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyRuleArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyFilterArgs;
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
///         var objectReplicationPolicy = new ObjectReplicationPolicy("objectReplicationPolicy", ObjectReplicationPolicyArgs.builder()
///             .accountName("dst112")
///             .destinationAccount("dst112")
///             .metrics(ObjectReplicationPolicyPropertiesMetricsArgs.builder()
///                 .enabled(true)
///                 .build())
///             .objectReplicationPolicyId("default")
///             .resourceGroupName("res7687")
///             .rules(ObjectReplicationPolicyRuleArgs.builder()
///                 .destinationContainer("dcont139")
///                 .filters(ObjectReplicationPolicyFilterArgs.builder()
///                     .prefixMatch(
///                         "blobA",
///                         "blobB")
///                     .build())
///                 .sourceContainer("scont139")
///                 .build())
///             .sourceAccount("src1122")
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
/// const objectReplicationPolicy = new azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy", {
///     accountName: "dst112",
///     destinationAccount: "dst112",
///     metrics: {
///         enabled: true,
///     },
///     objectReplicationPolicyId: "default",
///     resourceGroupName: "res7687",
///     rules: [{
///         destinationContainer: "dcont139",
///         filters: {
///             prefixMatch: [
///                 "blobA",
///                 "blobB",
///             ],
///         },
///         sourceContainer: "scont139",
///     }],
///     sourceAccount: "src1122",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// object_replication_policy = azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy",
///     account_name="dst112",
///     destination_account="dst112",
///     metrics={
///         "enabled": True,
///     },
///     object_replication_policy_id="default",
///     resource_group_name="res7687",
///     rules=[{
///         "destination_container": "dcont139",
///         "filters": {
///             "prefix_match": [
///                 "blobA",
///                 "blobB",
///             ],
///         },
///         "source_container": "scont139",
///     }],
///     source_account="src1122")
///
/// ```
///
/// ```yaml
/// resources:
///   objectReplicationPolicy:
///     type: azure-native:storage:ObjectReplicationPolicy
///     properties:
///       accountName: dst112
///       destinationAccount: dst112
///       metrics:
///         enabled: true
///       objectReplicationPolicyId: default
///       resourceGroupName: res7687
///       rules:
///         - destinationContainer: dcont139
///           filters:
///             prefixMatch:
///               - blobA
///               - blobB
///           sourceContainer: scont139
///       sourceAccount: src1122
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateObjectReplicationPolicyOnSource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var objectReplicationPolicy = new AzureNative.Storage.ObjectReplicationPolicy("objectReplicationPolicy", new()
///     {
///         AccountName = "src1122",
///         DestinationAccount = "dst112",
///         Metrics = new AzureNative.Storage.Inputs.ObjectReplicationPolicyPropertiesMetricsArgs
///         {
///             Enabled = true,
///         },
///         ObjectReplicationPolicyId = "2a20bb73-5717-4635-985a-5d4cf777438f",
///         ResourceGroupName = "res7687",
///         Rules = new[]
///         {
///             new AzureNative.Storage.Inputs.ObjectReplicationPolicyRuleArgs
///             {
///                 DestinationContainer = "dcont139",
///                 Filters = new AzureNative.Storage.Inputs.ObjectReplicationPolicyFilterArgs
///                 {
///                     MinCreationTime = "2020-02-19T16:05:00Z",
///                     PrefixMatch = new[]
///                     {
///                         "blobA",
///                         "blobB",
///                     },
///                 },
///                 RuleId = "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///                 SourceContainer = "scont139",
///             },
///         },
///         SourceAccount = "src1122",
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
/// 		_, err := storage.NewObjectReplicationPolicy(ctx, "objectReplicationPolicy", &storage.ObjectReplicationPolicyArgs{
/// 			AccountName:        pulumi.String("src1122"),
/// 			DestinationAccount: pulumi.String("dst112"),
/// 			Metrics: &storage.ObjectReplicationPolicyPropertiesMetricsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ObjectReplicationPolicyId: pulumi.String("2a20bb73-5717-4635-985a-5d4cf777438f"),
/// 			ResourceGroupName:         pulumi.String("res7687"),
/// 			Rules: storage.ObjectReplicationPolicyRuleArray{
/// 				&storage.ObjectReplicationPolicyRuleArgs{
/// 					DestinationContainer: pulumi.String("dcont139"),
/// 					Filters: &storage.ObjectReplicationPolicyFilterArgs{
/// 						MinCreationTime: pulumi.String("2020-02-19T16:05:00Z"),
/// 						PrefixMatch: pulumi.StringArray{
/// 							pulumi.String("blobA"),
/// 							pulumi.String("blobB"),
/// 						},
/// 					},
/// 					RuleId:          pulumi.String("d5d18a48-8801-4554-aeaa-74faf65f5ef9"),
/// 					SourceContainer: pulumi.String("scont139"),
/// 				},
/// 			},
/// 			SourceAccount: pulumi.String("src1122"),
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
/// resource "azure-native_storage_objectreplicationpolicy" "objectReplicationPolicy" {
///   account_name        = "src1122"
///   destination_account = "dst112"
///   metrics = {
///     enabled = true
///   }
///   object_replication_policy_id = "2a20bb73-5717-4635-985a-5d4cf777438f"
///   resource_group_name          = "res7687"
///   rules {
///     destination_container = "dcont139"
///     filters = {
///       min_creation_time = "2020-02-19T16:05:00Z"
///       prefix_match      = ["blobA", "blobB"]
///     }
///     rule_id          = "d5d18a48-8801-4554-aeaa-74faf65f5ef9"
///     source_container = "scont139"
///   }
///   source_account = "src1122"
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
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicy;
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyPropertiesMetricsArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyRuleArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyFilterArgs;
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
///         var objectReplicationPolicy = new ObjectReplicationPolicy("objectReplicationPolicy", ObjectReplicationPolicyArgs.builder()
///             .accountName("src1122")
///             .destinationAccount("dst112")
///             .metrics(ObjectReplicationPolicyPropertiesMetricsArgs.builder()
///                 .enabled(true)
///                 .build())
///             .objectReplicationPolicyId("2a20bb73-5717-4635-985a-5d4cf777438f")
///             .resourceGroupName("res7687")
///             .rules(ObjectReplicationPolicyRuleArgs.builder()
///                 .destinationContainer("dcont139")
///                 .filters(ObjectReplicationPolicyFilterArgs.builder()
///                     .minCreationTime("2020-02-19T16:05:00Z")
///                     .prefixMatch(
///                         "blobA",
///                         "blobB")
///                     .build())
///                 .ruleId("d5d18a48-8801-4554-aeaa-74faf65f5ef9")
///                 .sourceContainer("scont139")
///                 .build())
///             .sourceAccount("src1122")
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
/// const objectReplicationPolicy = new azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy", {
///     accountName: "src1122",
///     destinationAccount: "dst112",
///     metrics: {
///         enabled: true,
///     },
///     objectReplicationPolicyId: "2a20bb73-5717-4635-985a-5d4cf777438f",
///     resourceGroupName: "res7687",
///     rules: [{
///         destinationContainer: "dcont139",
///         filters: {
///             minCreationTime: "2020-02-19T16:05:00Z",
///             prefixMatch: [
///                 "blobA",
///                 "blobB",
///             ],
///         },
///         ruleId: "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///         sourceContainer: "scont139",
///     }],
///     sourceAccount: "src1122",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// object_replication_policy = azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy",
///     account_name="src1122",
///     destination_account="dst112",
///     metrics={
///         "enabled": True,
///     },
///     object_replication_policy_id="2a20bb73-5717-4635-985a-5d4cf777438f",
///     resource_group_name="res7687",
///     rules=[{
///         "destination_container": "dcont139",
///         "filters": {
///             "min_creation_time": "2020-02-19T16:05:00Z",
///             "prefix_match": [
///                 "blobA",
///                 "blobB",
///             ],
///         },
///         "rule_id": "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///         "source_container": "scont139",
///     }],
///     source_account="src1122")
///
/// ```
///
/// ```yaml
/// resources:
///   objectReplicationPolicy:
///     type: azure-native:storage:ObjectReplicationPolicy
///     properties:
///       accountName: src1122
///       destinationAccount: dst112
///       metrics:
///         enabled: true
///       objectReplicationPolicyId: 2a20bb73-5717-4635-985a-5d4cf777438f
///       resourceGroupName: res7687
///       rules:
///         - destinationContainer: dcont139
///           filters:
///             minCreationTime: 2020-02-19T16:05:00Z
///             prefixMatch:
///               - blobA
///               - blobB
///           ruleId: d5d18a48-8801-4554-aeaa-74faf65f5ef9
///           sourceContainer: scont139
///       sourceAccount: src1122
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountUpdateObjectReplicationPolicyOnDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var objectReplicationPolicy = new AzureNative.Storage.ObjectReplicationPolicy("objectReplicationPolicy", new()
///     {
///         AccountName = "dst112",
///         DestinationAccount = "dst112",
///         Metrics = new AzureNative.Storage.Inputs.ObjectReplicationPolicyPropertiesMetricsArgs
///         {
///             Enabled = true,
///         },
///         ObjectReplicationPolicyId = "2a20bb73-5717-4635-985a-5d4cf777438f",
///         ResourceGroupName = "res7687",
///         Rules = new[]
///         {
///             new AzureNative.Storage.Inputs.ObjectReplicationPolicyRuleArgs
///             {
///                 DestinationContainer = "dcont139",
///                 Filters = new AzureNative.Storage.Inputs.ObjectReplicationPolicyFilterArgs
///                 {
///                     PrefixMatch = new[]
///                     {
///                         "blobA",
///                         "blobB",
///                     },
///                 },
///                 RuleId = "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///                 SourceContainer = "scont139",
///             },
///             new AzureNative.Storage.Inputs.ObjectReplicationPolicyRuleArgs
///             {
///                 DestinationContainer = "dcont179",
///                 SourceContainer = "scont179",
///             },
///         },
///         SourceAccount = "src1122",
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
/// 		_, err := storage.NewObjectReplicationPolicy(ctx, "objectReplicationPolicy", &storage.ObjectReplicationPolicyArgs{
/// 			AccountName:        pulumi.String("dst112"),
/// 			DestinationAccount: pulumi.String("dst112"),
/// 			Metrics: &storage.ObjectReplicationPolicyPropertiesMetricsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ObjectReplicationPolicyId: pulumi.String("2a20bb73-5717-4635-985a-5d4cf777438f"),
/// 			ResourceGroupName:         pulumi.String("res7687"),
/// 			Rules: storage.ObjectReplicationPolicyRuleArray{
/// 				&storage.ObjectReplicationPolicyRuleArgs{
/// 					DestinationContainer: pulumi.String("dcont139"),
/// 					Filters: &storage.ObjectReplicationPolicyFilterArgs{
/// 						PrefixMatch: pulumi.StringArray{
/// 							pulumi.String("blobA"),
/// 							pulumi.String("blobB"),
/// 						},
/// 					},
/// 					RuleId:          pulumi.String("d5d18a48-8801-4554-aeaa-74faf65f5ef9"),
/// 					SourceContainer: pulumi.String("scont139"),
/// 				},
/// 				&storage.ObjectReplicationPolicyRuleArgs{
/// 					DestinationContainer: pulumi.String("dcont179"),
/// 					SourceContainer:      pulumi.String("scont179"),
/// 				},
/// 			},
/// 			SourceAccount: pulumi.String("src1122"),
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
/// resource "azure-native_storage_objectreplicationpolicy" "objectReplicationPolicy" {
///   account_name        = "dst112"
///   destination_account = "dst112"
///   metrics = {
///     enabled = true
///   }
///   object_replication_policy_id = "2a20bb73-5717-4635-985a-5d4cf777438f"
///   resource_group_name          = "res7687"
///   rules {
///     destination_container = "dcont139"
///     filters = {
///       prefix_match = ["blobA", "blobB"]
///     }
///     rule_id          = "d5d18a48-8801-4554-aeaa-74faf65f5ef9"
///     source_container = "scont139"
///   }
///   rules {
///     destination_container = "dcont179"
///     source_container      = "scont179"
///   }
///   source_account = "src1122"
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
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicy;
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyPropertiesMetricsArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyRuleArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyFilterArgs;
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
///         var objectReplicationPolicy = new ObjectReplicationPolicy("objectReplicationPolicy", ObjectReplicationPolicyArgs.builder()
///             .accountName("dst112")
///             .destinationAccount("dst112")
///             .metrics(ObjectReplicationPolicyPropertiesMetricsArgs.builder()
///                 .enabled(true)
///                 .build())
///             .objectReplicationPolicyId("2a20bb73-5717-4635-985a-5d4cf777438f")
///             .resourceGroupName("res7687")
///             .rules(
///                 ObjectReplicationPolicyRuleArgs.builder()
///                     .destinationContainer("dcont139")
///                     .filters(ObjectReplicationPolicyFilterArgs.builder()
///                         .prefixMatch(
///                             "blobA",
///                             "blobB")
///                         .build())
///                     .ruleId("d5d18a48-8801-4554-aeaa-74faf65f5ef9")
///                     .sourceContainer("scont139")
///                     .build(),
///                 ObjectReplicationPolicyRuleArgs.builder()
///                     .destinationContainer("dcont179")
///                     .sourceContainer("scont179")
///                     .build())
///             .sourceAccount("src1122")
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
/// const objectReplicationPolicy = new azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy", {
///     accountName: "dst112",
///     destinationAccount: "dst112",
///     metrics: {
///         enabled: true,
///     },
///     objectReplicationPolicyId: "2a20bb73-5717-4635-985a-5d4cf777438f",
///     resourceGroupName: "res7687",
///     rules: [
///         {
///             destinationContainer: "dcont139",
///             filters: {
///                 prefixMatch: [
///                     "blobA",
///                     "blobB",
///                 ],
///             },
///             ruleId: "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///             sourceContainer: "scont139",
///         },
///         {
///             destinationContainer: "dcont179",
///             sourceContainer: "scont179",
///         },
///     ],
///     sourceAccount: "src1122",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// object_replication_policy = azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy",
///     account_name="dst112",
///     destination_account="dst112",
///     metrics={
///         "enabled": True,
///     },
///     object_replication_policy_id="2a20bb73-5717-4635-985a-5d4cf777438f",
///     resource_group_name="res7687",
///     rules=[
///         {
///             "destination_container": "dcont139",
///             "filters": {
///                 "prefix_match": [
///                     "blobA",
///                     "blobB",
///                 ],
///             },
///             "rule_id": "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///             "source_container": "scont139",
///         },
///         {
///             "destination_container": "dcont179",
///             "source_container": "scont179",
///         },
///     ],
///     source_account="src1122")
///
/// ```
///
/// ```yaml
/// resources:
///   objectReplicationPolicy:
///     type: azure-native:storage:ObjectReplicationPolicy
///     properties:
///       accountName: dst112
///       destinationAccount: dst112
///       metrics:
///         enabled: true
///       objectReplicationPolicyId: 2a20bb73-5717-4635-985a-5d4cf777438f
///       resourceGroupName: res7687
///       rules:
///         - destinationContainer: dcont139
///           filters:
///             prefixMatch:
///               - blobA
///               - blobB
///           ruleId: d5d18a48-8801-4554-aeaa-74faf65f5ef9
///           sourceContainer: scont139
///         - destinationContainer: dcont179
///           sourceContainer: scont179
///       sourceAccount: src1122
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountUpdateObjectReplicationPolicyOnSource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var objectReplicationPolicy = new AzureNative.Storage.ObjectReplicationPolicy("objectReplicationPolicy", new()
///     {
///         AccountName = "src1122",
///         DestinationAccount = "dst112",
///         Metrics = new AzureNative.Storage.Inputs.ObjectReplicationPolicyPropertiesMetricsArgs
///         {
///             Enabled = true,
///         },
///         ObjectReplicationPolicyId = "2a20bb73-5717-4635-985a-5d4cf777438f",
///         ResourceGroupName = "res7687",
///         Rules = new[]
///         {
///             new AzureNative.Storage.Inputs.ObjectReplicationPolicyRuleArgs
///             {
///                 DestinationContainer = "dcont139",
///                 Filters = new AzureNative.Storage.Inputs.ObjectReplicationPolicyFilterArgs
///                 {
///                     PrefixMatch = new[]
///                     {
///                         "blobA",
///                         "blobB",
///                     },
///                 },
///                 RuleId = "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///                 SourceContainer = "scont139",
///             },
///             new AzureNative.Storage.Inputs.ObjectReplicationPolicyRuleArgs
///             {
///                 DestinationContainer = "dcont179",
///                 RuleId = "cfbb4bc2-8b60-429f-b05a-d1e0942b33b2",
///                 SourceContainer = "scont179",
///             },
///         },
///         SourceAccount = "src1122",
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
/// 		_, err := storage.NewObjectReplicationPolicy(ctx, "objectReplicationPolicy", &storage.ObjectReplicationPolicyArgs{
/// 			AccountName:        pulumi.String("src1122"),
/// 			DestinationAccount: pulumi.String("dst112"),
/// 			Metrics: &storage.ObjectReplicationPolicyPropertiesMetricsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ObjectReplicationPolicyId: pulumi.String("2a20bb73-5717-4635-985a-5d4cf777438f"),
/// 			ResourceGroupName:         pulumi.String("res7687"),
/// 			Rules: storage.ObjectReplicationPolicyRuleArray{
/// 				&storage.ObjectReplicationPolicyRuleArgs{
/// 					DestinationContainer: pulumi.String("dcont139"),
/// 					Filters: &storage.ObjectReplicationPolicyFilterArgs{
/// 						PrefixMatch: pulumi.StringArray{
/// 							pulumi.String("blobA"),
/// 							pulumi.String("blobB"),
/// 						},
/// 					},
/// 					RuleId:          pulumi.String("d5d18a48-8801-4554-aeaa-74faf65f5ef9"),
/// 					SourceContainer: pulumi.String("scont139"),
/// 				},
/// 				&storage.ObjectReplicationPolicyRuleArgs{
/// 					DestinationContainer: pulumi.String("dcont179"),
/// 					RuleId:               pulumi.String("cfbb4bc2-8b60-429f-b05a-d1e0942b33b2"),
/// 					SourceContainer:      pulumi.String("scont179"),
/// 				},
/// 			},
/// 			SourceAccount: pulumi.String("src1122"),
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
/// resource "azure-native_storage_objectreplicationpolicy" "objectReplicationPolicy" {
///   account_name        = "src1122"
///   destination_account = "dst112"
///   metrics = {
///     enabled = true
///   }
///   object_replication_policy_id = "2a20bb73-5717-4635-985a-5d4cf777438f"
///   resource_group_name          = "res7687"
///   rules {
///     destination_container = "dcont139"
///     filters = {
///       prefix_match = ["blobA", "blobB"]
///     }
///     rule_id          = "d5d18a48-8801-4554-aeaa-74faf65f5ef9"
///     source_container = "scont139"
///   }
///   rules {
///     destination_container = "dcont179"
///     rule_id               = "cfbb4bc2-8b60-429f-b05a-d1e0942b33b2"
///     source_container      = "scont179"
///   }
///   source_account = "src1122"
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
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicy;
/// import com.pulumi.azurenative.storage.ObjectReplicationPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyPropertiesMetricsArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyRuleArgs;
/// import com.pulumi.azurenative.storage.inputs.ObjectReplicationPolicyFilterArgs;
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
///         var objectReplicationPolicy = new ObjectReplicationPolicy("objectReplicationPolicy", ObjectReplicationPolicyArgs.builder()
///             .accountName("src1122")
///             .destinationAccount("dst112")
///             .metrics(ObjectReplicationPolicyPropertiesMetricsArgs.builder()
///                 .enabled(true)
///                 .build())
///             .objectReplicationPolicyId("2a20bb73-5717-4635-985a-5d4cf777438f")
///             .resourceGroupName("res7687")
///             .rules(
///                 ObjectReplicationPolicyRuleArgs.builder()
///                     .destinationContainer("dcont139")
///                     .filters(ObjectReplicationPolicyFilterArgs.builder()
///                         .prefixMatch(
///                             "blobA",
///                             "blobB")
///                         .build())
///                     .ruleId("d5d18a48-8801-4554-aeaa-74faf65f5ef9")
///                     .sourceContainer("scont139")
///                     .build(),
///                 ObjectReplicationPolicyRuleArgs.builder()
///                     .destinationContainer("dcont179")
///                     .ruleId("cfbb4bc2-8b60-429f-b05a-d1e0942b33b2")
///                     .sourceContainer("scont179")
///                     .build())
///             .sourceAccount("src1122")
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
/// const objectReplicationPolicy = new azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy", {
///     accountName: "src1122",
///     destinationAccount: "dst112",
///     metrics: {
///         enabled: true,
///     },
///     objectReplicationPolicyId: "2a20bb73-5717-4635-985a-5d4cf777438f",
///     resourceGroupName: "res7687",
///     rules: [
///         {
///             destinationContainer: "dcont139",
///             filters: {
///                 prefixMatch: [
///                     "blobA",
///                     "blobB",
///                 ],
///             },
///             ruleId: "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///             sourceContainer: "scont139",
///         },
///         {
///             destinationContainer: "dcont179",
///             ruleId: "cfbb4bc2-8b60-429f-b05a-d1e0942b33b2",
///             sourceContainer: "scont179",
///         },
///     ],
///     sourceAccount: "src1122",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// object_replication_policy = azure_native.storage.ObjectReplicationPolicy("objectReplicationPolicy",
///     account_name="src1122",
///     destination_account="dst112",
///     metrics={
///         "enabled": True,
///     },
///     object_replication_policy_id="2a20bb73-5717-4635-985a-5d4cf777438f",
///     resource_group_name="res7687",
///     rules=[
///         {
///             "destination_container": "dcont139",
///             "filters": {
///                 "prefix_match": [
///                     "blobA",
///                     "blobB",
///                 ],
///             },
///             "rule_id": "d5d18a48-8801-4554-aeaa-74faf65f5ef9",
///             "source_container": "scont139",
///         },
///         {
///             "destination_container": "dcont179",
///             "rule_id": "cfbb4bc2-8b60-429f-b05a-d1e0942b33b2",
///             "source_container": "scont179",
///         },
///     ],
///     source_account="src1122")
///
/// ```
///
/// ```yaml
/// resources:
///   objectReplicationPolicy:
///     type: azure-native:storage:ObjectReplicationPolicy
///     properties:
///       accountName: src1122
///       destinationAccount: dst112
///       metrics:
///         enabled: true
///       objectReplicationPolicyId: 2a20bb73-5717-4635-985a-5d4cf777438f
///       resourceGroupName: res7687
///       rules:
///         - destinationContainer: dcont139
///           filters:
///             prefixMatch:
///               - blobA
///               - blobB
///           ruleId: d5d18a48-8801-4554-aeaa-74faf65f5ef9
///           sourceContainer: scont139
///         - destinationContainer: dcont179
///           ruleId: cfbb4bc2-8b60-429f-b05a-d1e0942b33b2
///           sourceContainer: scont179
///       sourceAccount: src1122
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
/// $ pulumi import azure-native:storage:ObjectReplicationPolicy 2a20bb73-5717-4635-985a-5d4cf777438f /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/objectReplicationPolicies/{objectReplicationPolicyId}
/// ```
class ObjectReplicationPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Required. Destination account name. It should be full resource id if allowCrossTenantReplication set to false.
  late final pulumi.Output<String> destinationAccount;
  /// Indicates when the policy is enabled on the source account.
  late final pulumi.Output<String> enabledTime;
  /// Optional. The object replication policy metrics feature options.
  late final pulumi.Output<ObjectReplicationPolicyPropertiesResponseMetrics?> metrics;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A unique id for object replication policy.
  late final pulumi.Output<String> policyId;
  /// The storage account object replication rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;
  /// Required. Source account name. It should be full resource id if allowCrossTenantReplication set to false.
  late final pulumi.Output<String> sourceAccount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ObjectReplicationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectReplicationPolicy]. {@macro pulumi_storage_object_replication_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectReplicationPolicy(
    String name, {
    ObjectReplicationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:ObjectReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    destinationAccount = registerOutput<String>('destinationAccount');
    enabledTime = registerOutput<String>('enabledTime');
    metrics = registerOutput<ObjectReplicationPolicyPropertiesResponseMetrics?>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReplicationPolicyPropertiesResponseMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    sourceAccount = registerOutput<String>('sourceAccount');
    type = registerOutput<String>('type');
  }
}
