import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_plane_auth_options_response.dart';
import 'encryption_with_cmk_response.dart';
import 'identity_response.dart';
import 'network_rule_set_response.dart';
import 'service_args.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Describes an Azure AI Search service and its current state.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SearchCreateOrUpdateService
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         PartitionCount = 1,
///         ReplicaCount = 3,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType:       pulumi.String(search.ComputeTypeDefault),
/// 			HostingMode:       search.HostingModeDefault,
/// 			Location:          pulumi.String("westus"),
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(3),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .hostingMode("Default")
///             .location("westus")
///             .partitionCount(1)
///             .replicaCount(3)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     partitionCount: 1,
///     replicaCount: 3,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     partition_count=1,
///     replica_count=3,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       hostingMode: Default
///       location: westus
///       partitionCount: 1
///       replicaCount: 3
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateServiceAuthOptions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         AuthOptions = new AzureNative.Search.Inputs.DataPlaneAuthOptionsArgs
///         {
///             AadOrApiKey = new AzureNative.Search.Inputs.DataPlaneAadOrApiKeyAuthOptionArgs
///             {
///                 AadAuthFailureMode = AzureNative.Search.AadAuthFailureMode.Http401WithBearerChallenge,
///             },
///         },
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         PartitionCount = 1,
///         ReplicaCount = 3,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			AuthOptions: &search.DataPlaneAuthOptionsArgs{
/// 				AadOrApiKey: &search.DataPlaneAadOrApiKeyAuthOptionArgs{
/// 					AadAuthFailureMode: search.AadAuthFailureModeHttp401WithBearerChallenge,
/// 				},
/// 			},
/// 			ComputeType:       pulumi.String(search.ComputeTypeDefault),
/// 			HostingMode:       search.HostingModeDefault,
/// 			Location:          pulumi.String("westus"),
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(3),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.DataPlaneAuthOptionsArgs;
/// import com.pulumi.azurenative.search.inputs.DataPlaneAadOrApiKeyAuthOptionArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .authOptions(DataPlaneAuthOptionsArgs.builder()
///                 .aadOrApiKey(DataPlaneAadOrApiKeyAuthOptionArgs.builder()
///                     .aadAuthFailureMode("http401WithBearerChallenge")
///                     .build())
///                 .build())
///             .computeType("Default")
///             .hostingMode("Default")
///             .location("westus")
///             .partitionCount(1)
///             .replicaCount(3)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     authOptions: {
///         aadOrApiKey: {
///             aadAuthFailureMode: azure_native.search.AadAuthFailureMode.Http401WithBearerChallenge,
///         },
///     },
///     computeType: azure_native.search.ComputeType.Default,
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     partitionCount: 1,
///     replicaCount: 3,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     auth_options={
///         "aad_or_api_key": {
///             "aad_auth_failure_mode": azure_native.search.AadAuthFailureMode.HTTP401_WITH_BEARER_CHALLENGE,
///         },
///     },
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     partition_count=1,
///     replica_count=3,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       authOptions:
///         aadOrApiKey:
///           aadAuthFailureMode: http401WithBearerChallenge
///       computeType: Default
///       hostingMode: Default
///       location: westus
///       partitionCount: 1
///       replicaCount: 3
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateServiceDisableLocalAuth
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         DisableLocalAuth = true,
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         PartitionCount = 1,
///         ReplicaCount = 3,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType:       pulumi.String(search.ComputeTypeDefault),
/// 			DisableLocalAuth:  pulumi.Bool(true),
/// 			HostingMode:       search.HostingModeDefault,
/// 			Location:          pulumi.String("westus"),
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(3),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .disableLocalAuth(true)
///             .hostingMode("Default")
///             .location("westus")
///             .partitionCount(1)
///             .replicaCount(3)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     disableLocalAuth: true,
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     partitionCount: 1,
///     replicaCount: 3,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     disable_local_auth=True,
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     partition_count=1,
///     replica_count=3,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       disableLocalAuth: true
///       hostingMode: Default
///       location: westus
///       partitionCount: 1
///       replicaCount: 3
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateServiceToAllowAccessFromPrivateEndpoints
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         PartitionCount = 1,
///         PublicNetworkAccess = AzureNative.Search.PublicNetworkAccess.Disabled,
///         ReplicaCount = 3,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType:         pulumi.String(search.ComputeTypeDefault),
/// 			HostingMode:         search.HostingModeDefault,
/// 			Location:            pulumi.String("westus"),
/// 			PartitionCount:      pulumi.Int(1),
/// 			PublicNetworkAccess: pulumi.String(search.PublicNetworkAccessDisabled),
/// 			ReplicaCount:        pulumi.Int(3),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			SearchServiceName:   pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .hostingMode("Default")
///             .location("westus")
///             .partitionCount(1)
///             .publicNetworkAccess("Disabled")
///             .replicaCount(3)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     partitionCount: 1,
///     publicNetworkAccess: azure_native.search.PublicNetworkAccess.Disabled,
///     replicaCount: 3,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     partition_count=1,
///     public_network_access=azure_native.search.PublicNetworkAccess.DISABLED,
///     replica_count=3,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       hostingMode: Default
///       location: westus
///       partitionCount: 1
///       publicNetworkAccess: Disabled
///       replicaCount: 3
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateServiceToAllowAccessFromPublicCustomIPs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         NetworkRuleSet = new AzureNative.Search.Inputs.NetworkRuleSetArgs
///         {
///             IpRules = new[]
///             {
///                 new AzureNative.Search.Inputs.IpRuleArgs
///                 {
///                     Value = "123.4.5.6",
///                 },
///                 new AzureNative.Search.Inputs.IpRuleArgs
///                 {
///                     Value = "123.4.6.0/18",
///                 },
///             },
///         },
///         PartitionCount = 1,
///         ReplicaCount = 1,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType: pulumi.String(search.ComputeTypeDefault),
/// 			HostingMode: search.HostingModeDefault,
/// 			Location:    pulumi.String("westus"),
/// 			NetworkRuleSet: &search.NetworkRuleSetArgs{
/// 				IpRules: search.IpRuleArray{
/// 					&search.IpRuleArgs{
/// 						Value: pulumi.String("123.4.5.6"),
/// 					},
/// 					&search.IpRuleArgs{
/// 						Value: pulumi.String("123.4.6.0/18"),
/// 					},
/// 				},
/// 			},
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(1),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.NetworkRuleSetArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .hostingMode("Default")
///             .location("westus")
///             .networkRuleSet(NetworkRuleSetArgs.builder()
///                 .ipRules(
///                     IpRuleArgs.builder()
///                         .value("123.4.5.6")
///                         .build(),
///                     IpRuleArgs.builder()
///                         .value("123.4.6.0/18")
///                         .build())
///                 .build())
///             .partitionCount(1)
///             .replicaCount(1)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     networkRuleSet: {
///         ipRules: [
///             {
///                 value: "123.4.5.6",
///             },
///             {
///                 value: "123.4.6.0/18",
///             },
///         ],
///     },
///     partitionCount: 1,
///     replicaCount: 1,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     network_rule_set={
///         "ip_rules": [
///             {
///                 "value": "123.4.5.6",
///             },
///             {
///                 "value": "123.4.6.0/18",
///             },
///         ],
///     },
///     partition_count=1,
///     replica_count=1,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       hostingMode: Default
///       location: westus
///       networkRuleSet:
///         ipRules:
///           - value: 123.4.5.6
///           - value: 123.4.6.0/18
///       partitionCount: 1
///       replicaCount: 1
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateServiceToAllowAccessFromPublicCustomIPsAndBypass
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         NetworkRuleSet = new AzureNative.Search.Inputs.NetworkRuleSetArgs
///         {
///             Bypass = AzureNative.Search.SearchBypass.AzureServices,
///             IpRules = new[]
///             {
///                 new AzureNative.Search.Inputs.IpRuleArgs
///                 {
///                     Value = "123.4.5.6",
///                 },
///                 new AzureNative.Search.Inputs.IpRuleArgs
///                 {
///                     Value = "123.4.6.0/18",
///                 },
///             },
///         },
///         PartitionCount = 1,
///         ReplicaCount = 1,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType: pulumi.String(search.ComputeTypeDefault),
/// 			HostingMode: search.HostingModeDefault,
/// 			Location:    pulumi.String("westus"),
/// 			NetworkRuleSet: &search.NetworkRuleSetArgs{
/// 				Bypass: pulumi.String(search.SearchBypassAzureServices),
/// 				IpRules: search.IpRuleArray{
/// 					&search.IpRuleArgs{
/// 						Value: pulumi.String("123.4.5.6"),
/// 					},
/// 					&search.IpRuleArgs{
/// 						Value: pulumi.String("123.4.6.0/18"),
/// 					},
/// 				},
/// 			},
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(1),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.NetworkRuleSetArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .hostingMode("Default")
///             .location("westus")
///             .networkRuleSet(NetworkRuleSetArgs.builder()
///                 .bypass("AzureServices")
///                 .ipRules(
///                     IpRuleArgs.builder()
///                         .value("123.4.5.6")
///                         .build(),
///                     IpRuleArgs.builder()
///                         .value("123.4.6.0/18")
///                         .build())
///                 .build())
///             .partitionCount(1)
///             .replicaCount(1)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     networkRuleSet: {
///         bypass: azure_native.search.SearchBypass.AzureServices,
///         ipRules: [
///             {
///                 value: "123.4.5.6",
///             },
///             {
///                 value: "123.4.6.0/18",
///             },
///         ],
///     },
///     partitionCount: 1,
///     replicaCount: 1,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     network_rule_set={
///         "bypass": azure_native.search.SearchBypass.AZURE_SERVICES,
///         "ip_rules": [
///             {
///                 "value": "123.4.5.6",
///             },
///             {
///                 "value": "123.4.6.0/18",
///             },
///         ],
///     },
///     partition_count=1,
///     replica_count=1,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       hostingMode: Default
///       location: westus
///       networkRuleSet:
///         bypass: AzureServices
///         ipRules:
///           - value: 123.4.5.6
///           - value: 123.4.6.0/18
///       partitionCount: 1
///       replicaCount: 1
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateServiceWithCmkEnforcement
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         EncryptionWithCmk = new AzureNative.Search.Inputs.EncryptionWithCmkArgs
///         {
///             Enforcement = AzureNative.Search.SearchEncryptionWithCmk.Enabled,
///         },
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         PartitionCount = 1,
///         ReplicaCount = 3,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType: pulumi.String(search.ComputeTypeDefault),
/// 			EncryptionWithCmk: &search.EncryptionWithCmkArgs{
/// 				Enforcement: search.SearchEncryptionWithCmkEnabled,
/// 			},
/// 			HostingMode:       search.HostingModeDefault,
/// 			Location:          pulumi.String("westus"),
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(3),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.EncryptionWithCmkArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .encryptionWithCmk(EncryptionWithCmkArgs.builder()
///                 .enforcement("Enabled")
///                 .build())
///             .hostingMode("Default")
///             .location("westus")
///             .partitionCount(1)
///             .replicaCount(3)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     encryptionWithCmk: {
///         enforcement: azure_native.search.SearchEncryptionWithCmk.Enabled,
///     },
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     partitionCount: 1,
///     replicaCount: 3,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     encryption_with_cmk={
///         "enforcement": azure_native.search.SearchEncryptionWithCmk.ENABLED,
///     },
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     partition_count=1,
///     replica_count=3,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       encryptionWithCmk:
///         enforcement: Enabled
///       hostingMode: Default
///       location: westus
///       partitionCount: 1
///       replicaCount: 3
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateServiceWithDataExfiltration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         DataExfiltrationProtections = new[]
///         {
///             AzureNative.Search.SearchDataExfiltrationProtection.BlockAll,
///         },
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         PartitionCount = 1,
///         ReplicaCount = 3,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType: pulumi.String(search.ComputeTypeDefault),
/// 			DataExfiltrationProtections: pulumi.StringArray{
/// 				pulumi.String(search.SearchDataExfiltrationProtectionBlockAll),
/// 			},
/// 			HostingMode:       search.HostingModeDefault,
/// 			Location:          pulumi.String("westus"),
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(3),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .dataExfiltrationProtections("BlockAll")
///             .hostingMode("Default")
///             .location("westus")
///             .partitionCount(1)
///             .replicaCount(3)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     dataExfiltrationProtections: [azure_native.search.SearchDataExfiltrationProtection.BlockAll],
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     partitionCount: 1,
///     replicaCount: 3,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     data_exfiltration_protections=[azure_native.search.SearchDataExfiltrationProtection.BLOCK_ALL],
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     partition_count=1,
///     replica_count=3,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       dataExfiltrationProtections:
///         - BlockAll
///       hostingMode: Default
///       location: westus
///       partitionCount: 1
///       replicaCount: 3
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SearchCreateOrUpdateWithSemanticSearch
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.Search.Service("service", new()
///     {
///         ComputeType = AzureNative.Search.ComputeType.Default,
///         HostingMode = AzureNative.Search.HostingMode.Default,
///         Location = "westus",
///         PartitionCount = 1,
///         ReplicaCount = 3,
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         SemanticSearch = AzureNative.Search.SearchSemanticSearch.Free,
///         Sku = new AzureNative.Search.Inputs.SkuArgs
///         {
///             Name = AzureNative.Search.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "app-name", "My e-commerce app" },
///         },
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewService(ctx, "service", &search.ServiceArgs{
/// 			ComputeType:       pulumi.String(search.ComputeTypeDefault),
/// 			HostingMode:       search.HostingModeDefault,
/// 			Location:          pulumi.String("westus"),
/// 			PartitionCount:    pulumi.Int(1),
/// 			ReplicaCount:      pulumi.Int(3),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
/// 			SemanticSearch:    pulumi.String(search.SearchSemanticSearchFree),
/// 			Sku: &search.SkuArgs{
/// 				Name: pulumi.String(search.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"app-name": pulumi.String("My e-commerce app"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.search.Service;
/// import com.pulumi.azurenative.search.ServiceArgs;
/// import com.pulumi.azurenative.search.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .computeType("Default")
///             .hostingMode("Default")
///             .location("westus")
///             .partitionCount(1)
///             .replicaCount(3)
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .semanticSearch("free")
///             .sku(SkuArgs.builder()
///                 .name("standard")
///                 .build())
///             .tags(Map.of("app-name", "My e-commerce app"))
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
/// const service = new azure_native.search.Service("service", {
///     computeType: azure_native.search.ComputeType.Default,
///     hostingMode: azure_native.search.HostingMode.Default,
///     location: "westus",
///     partitionCount: 1,
///     replicaCount: 3,
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     semanticSearch: azure_native.search.SearchSemanticSearch.Free,
///     sku: {
///         name: azure_native.search.SkuName.Standard,
///     },
///     tags: {
///         "app-name": "My e-commerce app",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.search.Service("service",
///     compute_type=azure_native.search.ComputeType.DEFAULT,
///     hosting_mode=azure_native.search.HostingMode.DEFAULT,
///     location="westus",
///     partition_count=1,
///     replica_count=3,
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     semantic_search=azure_native.search.SearchSemanticSearch.FREE,
///     sku={
///         "name": azure_native.search.SkuName.STANDARD,
///     },
///     tags={
///         "app-name": "My e-commerce app",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:search:Service
///     properties:
///       computeType: Default
///       hostingMode: Default
///       location: westus
///       partitionCount: 1
///       replicaCount: 3
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       semanticSearch: free
///       sku:
///         name: standard
///       tags:
///         app-name: My e-commerce app
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
/// $ pulumi import azure-native:search:Service mysearchservice /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}
/// ```
class Service extends pulumi.CustomResource {
  /// Defines the options for how the data plane API of a search service authenticates requests. This cannot be set if 'disableLocalAuth' is set to true.
  late final pulumi.Output<DataPlaneAuthOptionsResponse?> authOptions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
  late final pulumi.Output<String?> computeType;
  /// A list of data exfiltration scenarios that are explicitly disallowed for the search service. Currently, the only supported value is 'All' to disable all possible data export scenarios with more fine grained controls planned for the future.
  late final pulumi.Output<List<String>?> dataExfiltrationProtections;
  /// When set to true, calls to the search service will not be permitted to utilize API keys for authentication. This cannot be set to true if 'dataPlaneAuthOptions' are defined.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// A system generated property representing the service's etag that can be for optimistic concurrency control during updates.
  late final pulumi.Output<String> eTag;
  /// Specifies any policy regarding encryption of resources (such as indexes) using customer manager keys within a search service.
  late final pulumi.Output<EncryptionWithCmkResponse?> encryptionWithCmk;
  /// The endpoint of the Azure AI Search service.
  late final pulumi.Output<String?> endpoint;
  /// Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'Default' or 'HighDensity'. For all other SKUs, this value must be 'Default'.
  late final pulumi.Output<String?> hostingMode;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network specific rules that determine how the Azure AI Search service may be reached.
  late final pulumi.Output<NetworkRuleSetResponse?> networkRuleSet;
  /// The number of partitions in the search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  late final pulumi.Output<int?> partitionCount;
  /// The list of private endpoint connections to the Azure AI Search service.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The state of the last provisioning operation performed on the search service. Provisioning is an intermediate state that occurs while service capacity is being established. After capacity is set up, provisioningState changes to either 'Succeeded' or 'Failed'. Client applications can poll provisioning status (the recommended polling interval is from 30 seconds to one minute) by using the Get Search Service operation to see when an operation is completed. If you are using the free service, this value tends to come back as 'Succeeded' directly in the call to Create search service. This is because the free service uses capacity that is already set up.
  late final pulumi.Output<String> provisioningState;
  /// This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The number of replicas in the search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  late final pulumi.Output<int?> replicaCount;
  /// Sets options that control the availability of semantic search. This configuration is only possible for certain Azure AI Search SKUs in certain locations.
  late final pulumi.Output<String?> semanticSearch;
  /// The date and time the search service was last upgraded. This field will be null until the service gets upgraded for the first time.
  late final pulumi.Output<String> serviceUpgradedAt;
  /// The list of shared private link resources managed by the Azure AI Search service.
  late final pulumi.Output<List<Map<String, dynamic>>> sharedPrivateLinkResources;
  /// The SKU of the search service, which determines price tier and capacity limits. This property is required when creating a new search service.
  late final pulumi.Output<SkuResponse?> sku;
  /// The status of the search service. Possible values include: 'running': The search service is running and no provisioning operations are underway. 'provisioning': The search service is being provisioned or scaled up or down. 'deleting': The search service is being deleted. 'degraded': The search service is degraded. This can occur when the underlying search units are not healthy. The search service is most likely operational, but performance might be slow and some requests might be dropped. 'disabled': The search service is disabled. In this state, the service will reject all API requests. 'error': The search service is in an error state. 'stopped': The search service is in a subscription that's disabled. If your service is in the degraded, disabled, or error states, it means the Azure AI Search team is actively investigating the underlying issue. Dedicated services in these states are still chargeable based on the number of search units provisioned.
  late final pulumi.Output<String> status;
  /// The details of the search service status.
  late final pulumi.Output<String> statusDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Indicates if the search service has an upgrade available.
  late final pulumi.Output<String?> upgradeAvailable;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_search_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:search:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authOptions = registerOutput<DataPlaneAuthOptionsResponse?>('authOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataPlaneAuthOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    computeType = registerOutput<String?>('computeType');
    dataExfiltrationProtections = registerOutput<List<String>?>('dataExfiltrationProtections');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    eTag = registerOutput<String>('eTag');
    encryptionWithCmk = registerOutput<EncryptionWithCmkResponse?>('encryptionWithCmk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionWithCmkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String?>('endpoint');
    hostingMode = registerOutput<String?>('hostingMode');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkRuleSet = registerOutput<NetworkRuleSetResponse?>('networkRuleSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partitionCount = registerOutput<int?>('partitionCount');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    replicaCount = registerOutput<int?>('replicaCount');
    semanticSearch = registerOutput<String?>('semanticSearch');
    serviceUpgradedAt = registerOutput<String>('serviceUpgradedAt');
    sharedPrivateLinkResources = registerOutput<List<Map<String, dynamic>>>('sharedPrivateLinkResources');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusDetails = registerOutput<String>('statusDetails');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    upgradeAvailable = registerOutput<String?>('upgradeAvailable');
  }
}
