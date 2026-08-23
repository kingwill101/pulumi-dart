import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_pool_args.dart';
import 'elastic_pool_per_database_settings_response.dart';
import 'sku_response.dart';

/// An elastic pool.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update an elastic pool with Availability Zone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         AvailabilityZone = AzureNative.Sql.AvailabilityZoneType.One,
///         ElasticPoolName = "sqlcrudtest-8102",
///         Location = "Japan East",
///         PerDatabaseSettings = new AzureNative.Sql.Inputs.ElasticPoolPerDatabaseSettingsArgs
///         {
///             MaxCapacity = 2,
///             MinCapacity = 0.25,
///         },
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "HS_Gen5_4",
///         },
///         ZoneRedundant = true,
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			AvailabilityZone: pulumi.String(sql.AvailabilityZoneTypeOne),
/// 			ElasticPoolName:  pulumi.String("sqlcrudtest-8102"),
/// 			Location:         pulumi.String("Japan East"),
/// 			PerDatabaseSettings: &sql.ElasticPoolPerDatabaseSettingsArgs{
/// 				MaxCapacity: pulumi.Float64(2),
/// 				MinCapacity: pulumi.Float64(0.25),
/// 			},
/// 			ResourceGroupName: pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:        pulumi.String("sqlcrudtest-8069"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("HS_Gen5_4"),
/// 			},
/// 			ZoneRedundant: pulumi.Bool(true),
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
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   availability_zone = "1"
///   elastic_pool_name = "sqlcrudtest-8102"
///   location          = "Japan East"
///   per_database_settings = {
///     max_capacity = 2
///     min_capacity = 0.25
///   }
///   resource_group_name = "sqlcrudtest-2369"
///   server_name         = "sqlcrudtest-8069"
///   sku = {
///     name = "HS_Gen5_4"
///   }
///   zone_redundant = true
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
/// import com.pulumi.azurenative.sql.inputs.ElasticPoolPerDatabaseSettingsArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .availabilityZone("1")
///             .elasticPoolName("sqlcrudtest-8102")
///             .location("Japan East")
///             .perDatabaseSettings(ElasticPoolPerDatabaseSettingsArgs.builder()
///                 .maxCapacity(2.0)
///                 .minCapacity(0.25)
///                 .build())
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
///             .sku(SkuArgs.builder()
///                 .name("HS_Gen5_4")
///                 .build())
///             .zoneRedundant(true)
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     availabilityZone: azure_native.sql.AvailabilityZoneType.One,
///     elasticPoolName: "sqlcrudtest-8102",
///     location: "Japan East",
///     perDatabaseSettings: {
///         maxCapacity: 2,
///         minCapacity: 0.25,
///     },
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
///     sku: {
///         name: "HS_Gen5_4",
///     },
///     zoneRedundant: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     availability_zone=azure_native.sql.AvailabilityZoneType.ONE,
///     elastic_pool_name="sqlcrudtest-8102",
///     location="Japan East",
///     per_database_settings={
///         "max_capacity": float(2),
///         "min_capacity": 0.25,
///     },
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069",
///     sku={
///         "name": "HS_Gen5_4",
///     },
///     zone_redundant=True)
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       availabilityZone: '1'
///       elasticPoolName: sqlcrudtest-8102
///       location: Japan East
///       perDatabaseSettings:
///         maxCapacity: 2
///         minCapacity: 0.25
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///       sku:
///         name: HS_Gen5_4
///       zoneRedundant: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update an elastic pool with serverless properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         AutoPauseDelay = 60,
///         ElasticPoolName = "sqlcrudtest-8102",
///         Location = "Japan East",
///         MinCapacity = 0.5,
///         PerDatabaseSettings = new AzureNative.Sql.Inputs.ElasticPoolPerDatabaseSettingsArgs
///         {
///             AutoPauseDelay = 80,
///             MaxCapacity = 2,
///             MinCapacity = 0,
///         },
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "GP_S_Gen5_2",
///             Tier = "GeneralPurpose",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			AutoPauseDelay:  pulumi.Int(60),
/// 			ElasticPoolName: pulumi.String("sqlcrudtest-8102"),
/// 			Location:        pulumi.String("Japan East"),
/// 			MinCapacity:     pulumi.Float64(0.5),
/// 			PerDatabaseSettings: &sql.ElasticPoolPerDatabaseSettingsArgs{
/// 				AutoPauseDelay: pulumi.Int(80),
/// 				MaxCapacity:    pulumi.Float64(2),
/// 				MinCapacity:    pulumi.Float64(0),
/// 			},
/// 			ResourceGroupName: pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:        pulumi.String("sqlcrudtest-8069"),
/// 			Sku: &sql.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String("GP_S_Gen5_2"),
/// 				Tier:     pulumi.String("GeneralPurpose"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   auto_pause_delay  = 60
///   elastic_pool_name = "sqlcrudtest-8102"
///   location          = "Japan East"
///   min_capacity      = 0.5
///   per_database_settings = {
///     auto_pause_delay = 80
///     max_capacity     = 2
///     min_capacity     = 0
///   }
///   resource_group_name = "sqlcrudtest-2369"
///   server_name         = "sqlcrudtest-8069"
///   sku = {
///     capacity = 2
///     name     = "GP_S_Gen5_2"
///     tier     = "GeneralPurpose"
///   }
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
/// import com.pulumi.azurenative.sql.inputs.ElasticPoolPerDatabaseSettingsArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .autoPauseDelay(60)
///             .elasticPoolName("sqlcrudtest-8102")
///             .location("Japan East")
///             .minCapacity(0.5)
///             .perDatabaseSettings(ElasticPoolPerDatabaseSettingsArgs.builder()
///                 .autoPauseDelay(80)
///                 .maxCapacity(2.0)
///                 .minCapacity(0.0)
///                 .build())
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .name("GP_S_Gen5_2")
///                 .tier("GeneralPurpose")
///                 .build())
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     autoPauseDelay: 60,
///     elasticPoolName: "sqlcrudtest-8102",
///     location: "Japan East",
///     minCapacity: 0.5,
///     perDatabaseSettings: {
///         autoPauseDelay: 80,
///         maxCapacity: 2,
///         minCapacity: 0,
///     },
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
///     sku: {
///         capacity: 2,
///         name: "GP_S_Gen5_2",
///         tier: "GeneralPurpose",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     auto_pause_delay=60,
///     elastic_pool_name="sqlcrudtest-8102",
///     location="Japan East",
///     min_capacity=0.5,
///     per_database_settings={
///         "auto_pause_delay": 80,
///         "max_capacity": float(2),
///         "min_capacity": float(0),
///     },
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069",
///     sku={
///         "capacity": 2,
///         "name": "GP_S_Gen5_2",
///         "tier": "GeneralPurpose",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       autoPauseDelay: 60
///       elasticPoolName: sqlcrudtest-8102
///       location: Japan East
///       minCapacity: 0.5
///       perDatabaseSettings:
///         autoPauseDelay: 80
///         maxCapacity: 2
///         minCapacity: 0
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///       sku:
///         capacity: 2
///         name: GP_S_Gen5_2
///         tier: GeneralPurpose
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update Hyperscale elastic pool with high availability replica count parameter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         ElasticPoolName = "sqlcrudtest-8102",
///         HighAvailabilityReplicaCount = 2,
///         Location = "Japan East",
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "HS_Gen5_4",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			ElasticPoolName:              pulumi.String("sqlcrudtest-8102"),
/// 			HighAvailabilityReplicaCount: pulumi.Int(2),
/// 			Location:                     pulumi.String("Japan East"),
/// 			ResourceGroupName:            pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:                   pulumi.String("sqlcrudtest-8069"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("HS_Gen5_4"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   elastic_pool_name               = "sqlcrudtest-8102"
///   high_availability_replica_count = 2
///   location                        = "Japan East"
///   resource_group_name             = "sqlcrudtest-2369"
///   server_name                     = "sqlcrudtest-8069"
///   sku = {
///     name = "HS_Gen5_4"
///   }
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .elasticPoolName("sqlcrudtest-8102")
///             .highAvailabilityReplicaCount(2)
///             .location("Japan East")
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
///             .sku(SkuArgs.builder()
///                 .name("HS_Gen5_4")
///                 .build())
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     elasticPoolName: "sqlcrudtest-8102",
///     highAvailabilityReplicaCount: 2,
///     location: "Japan East",
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
///     sku: {
///         name: "HS_Gen5_4",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     elastic_pool_name="sqlcrudtest-8102",
///     high_availability_replica_count=2,
///     location="Japan East",
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069",
///     sku={
///         "name": "HS_Gen5_4",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       elasticPoolName: sqlcrudtest-8102
///       highAvailabilityReplicaCount: 2
///       location: Japan East
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///       sku:
///         name: HS_Gen5_4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update elastic pool with all parameter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         ElasticPoolName = "sqlcrudtest-8102",
///         Location = "Japan East",
///         PerDatabaseSettings = new AzureNative.Sql.Inputs.ElasticPoolPerDatabaseSettingsArgs
///         {
///             MaxCapacity = 2,
///             MinCapacity = 0.25,
///         },
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "GP_Gen4_2",
///             Tier = "GeneralPurpose",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			ElasticPoolName: pulumi.String("sqlcrudtest-8102"),
/// 			Location:        pulumi.String("Japan East"),
/// 			PerDatabaseSettings: &sql.ElasticPoolPerDatabaseSettingsArgs{
/// 				MaxCapacity: pulumi.Float64(2),
/// 				MinCapacity: pulumi.Float64(0.25),
/// 			},
/// 			ResourceGroupName: pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:        pulumi.String("sqlcrudtest-8069"),
/// 			Sku: &sql.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String("GP_Gen4_2"),
/// 				Tier:     pulumi.String("GeneralPurpose"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   elastic_pool_name = "sqlcrudtest-8102"
///   location          = "Japan East"
///   per_database_settings = {
///     max_capacity = 2
///     min_capacity = 0.25
///   }
///   resource_group_name = "sqlcrudtest-2369"
///   server_name         = "sqlcrudtest-8069"
///   sku = {
///     capacity = 2
///     name     = "GP_Gen4_2"
///     tier     = "GeneralPurpose"
///   }
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
/// import com.pulumi.azurenative.sql.inputs.ElasticPoolPerDatabaseSettingsArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .elasticPoolName("sqlcrudtest-8102")
///             .location("Japan East")
///             .perDatabaseSettings(ElasticPoolPerDatabaseSettingsArgs.builder()
///                 .maxCapacity(2.0)
///                 .minCapacity(0.25)
///                 .build())
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .name("GP_Gen4_2")
///                 .tier("GeneralPurpose")
///                 .build())
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     elasticPoolName: "sqlcrudtest-8102",
///     location: "Japan East",
///     perDatabaseSettings: {
///         maxCapacity: 2,
///         minCapacity: 0.25,
///     },
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
///     sku: {
///         capacity: 2,
///         name: "GP_Gen4_2",
///         tier: "GeneralPurpose",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     elastic_pool_name="sqlcrudtest-8102",
///     location="Japan East",
///     per_database_settings={
///         "max_capacity": float(2),
///         "min_capacity": 0.25,
///     },
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069",
///     sku={
///         "capacity": 2,
///         "name": "GP_Gen4_2",
///         "tier": "GeneralPurpose",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       elasticPoolName: sqlcrudtest-8102
///       location: Japan East
///       perDatabaseSettings:
///         maxCapacity: 2
///         minCapacity: 0.25
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///       sku:
///         capacity: 2
///         name: GP_Gen4_2
///         tier: GeneralPurpose
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update elastic pool with maintenance configuration parameter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         ElasticPoolName = "sqlcrudtest-8102",
///         Location = "Japan East",
///         MaintenanceConfigurationId = "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_1",
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			ElasticPoolName:            pulumi.String("sqlcrudtest-8102"),
/// 			Location:                   pulumi.String("Japan East"),
/// 			MaintenanceConfigurationId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_1"),
/// 			ResourceGroupName:          pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:                 pulumi.String("sqlcrudtest-8069"),
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
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   elastic_pool_name            = "sqlcrudtest-8102"
///   location                     = "Japan East"
///   maintenance_configuration_id = "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_1"
///   resource_group_name          = "sqlcrudtest-2369"
///   server_name                  = "sqlcrudtest-8069"
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .elasticPoolName("sqlcrudtest-8102")
///             .location("Japan East")
///             .maintenanceConfigurationId("/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_1")
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     elasticPoolName: "sqlcrudtest-8102",
///     location: "Japan East",
///     maintenanceConfigurationId: "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_1",
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     elastic_pool_name="sqlcrudtest-8102",
///     location="Japan East",
///     maintenance_configuration_id="/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_1",
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       elasticPoolName: sqlcrudtest-8102
///       location: Japan East
///       maintenanceConfigurationId: /subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_1
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update elastic pool with minimum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         ElasticPoolName = "sqlcrudtest-8102",
///         Location = "Japan East",
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			ElasticPoolName:   pulumi.String("sqlcrudtest-8102"),
/// 			Location:          pulumi.String("Japan East"),
/// 			ResourceGroupName: pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:        pulumi.String("sqlcrudtest-8069"),
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
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   elastic_pool_name   = "sqlcrudtest-8102"
///   location            = "Japan East"
///   resource_group_name = "sqlcrudtest-2369"
///   server_name         = "sqlcrudtest-8069"
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .elasticPoolName("sqlcrudtest-8102")
///             .location("Japan East")
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     elasticPoolName: "sqlcrudtest-8102",
///     location: "Japan East",
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     elastic_pool_name="sqlcrudtest-8102",
///     location="Japan East",
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       elasticPoolName: sqlcrudtest-8102
///       location: Japan East
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update elastic pool with preferred enclave type parameter as Default
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         ElasticPoolName = "sqlcrudtest-8102",
///         Location = "Japan East",
///         PreferredEnclaveType = AzureNative.Sql.AlwaysEncryptedEnclaveType.Default,
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "GP_Gen5_4",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			ElasticPoolName:      pulumi.String("sqlcrudtest-8102"),
/// 			Location:             pulumi.String("Japan East"),
/// 			PreferredEnclaveType: pulumi.String(sql.AlwaysEncryptedEnclaveTypeDefault),
/// 			ResourceGroupName:    pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:           pulumi.String("sqlcrudtest-8069"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("GP_Gen5_4"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   elastic_pool_name      = "sqlcrudtest-8102"
///   location               = "Japan East"
///   preferred_enclave_type = "Default"
///   resource_group_name    = "sqlcrudtest-2369"
///   server_name            = "sqlcrudtest-8069"
///   sku = {
///     name = "GP_Gen5_4"
///   }
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .elasticPoolName("sqlcrudtest-8102")
///             .location("Japan East")
///             .preferredEnclaveType("Default")
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
///             .sku(SkuArgs.builder()
///                 .name("GP_Gen5_4")
///                 .build())
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     elasticPoolName: "sqlcrudtest-8102",
///     location: "Japan East",
///     preferredEnclaveType: azure_native.sql.AlwaysEncryptedEnclaveType.Default,
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
///     sku: {
///         name: "GP_Gen5_4",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     elastic_pool_name="sqlcrudtest-8102",
///     location="Japan East",
///     preferred_enclave_type=azure_native.sql.AlwaysEncryptedEnclaveType.DEFAULT,
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069",
///     sku={
///         "name": "GP_Gen5_4",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       elasticPoolName: sqlcrudtest-8102
///       location: Japan East
///       preferredEnclaveType: Default
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///       sku:
///         name: GP_Gen5_4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update elastic pool with preferred enclave type parameter as VBS
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticPool = new AzureNative.Sql.ElasticPool("elasticPool", new()
///     {
///         ElasticPoolName = "sqlcrudtest-8102",
///         Location = "Japan East",
///         PreferredEnclaveType = AzureNative.Sql.AlwaysEncryptedEnclaveType.VBS,
///         ResourceGroupName = "sqlcrudtest-2369",
///         ServerName = "sqlcrudtest-8069",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "GP_Gen5_4",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewElasticPool(ctx, "elasticPool", &sql.ElasticPoolArgs{
/// 			ElasticPoolName:      pulumi.String("sqlcrudtest-8102"),
/// 			Location:             pulumi.String("Japan East"),
/// 			PreferredEnclaveType: pulumi.String(sql.AlwaysEncryptedEnclaveTypeVBS),
/// 			ResourceGroupName:    pulumi.String("sqlcrudtest-2369"),
/// 			ServerName:           pulumi.String("sqlcrudtest-8069"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("GP_Gen5_4"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_elasticpool" "elasticPool" {
///   elastic_pool_name      = "sqlcrudtest-8102"
///   location               = "Japan East"
///   preferred_enclave_type = "VBS"
///   resource_group_name    = "sqlcrudtest-2369"
///   server_name            = "sqlcrudtest-8069"
///   sku = {
///     name = "GP_Gen5_4"
///   }
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
/// import com.pulumi.azurenative.sql.ElasticPool;
/// import com.pulumi.azurenative.sql.ElasticPoolArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var elasticPool = new ElasticPool("elasticPool", ElasticPoolArgs.builder()
///             .elasticPoolName("sqlcrudtest-8102")
///             .location("Japan East")
///             .preferredEnclaveType("VBS")
///             .resourceGroupName("sqlcrudtest-2369")
///             .serverName("sqlcrudtest-8069")
///             .sku(SkuArgs.builder()
///                 .name("GP_Gen5_4")
///                 .build())
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
/// const elasticPool = new azure_native.sql.ElasticPool("elasticPool", {
///     elasticPoolName: "sqlcrudtest-8102",
///     location: "Japan East",
///     preferredEnclaveType: azure_native.sql.AlwaysEncryptedEnclaveType.VBS,
///     resourceGroupName: "sqlcrudtest-2369",
///     serverName: "sqlcrudtest-8069",
///     sku: {
///         name: "GP_Gen5_4",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_pool = azure_native.sql.ElasticPool("elasticPool",
///     elastic_pool_name="sqlcrudtest-8102",
///     location="Japan East",
///     preferred_enclave_type=azure_native.sql.AlwaysEncryptedEnclaveType.VBS,
///     resource_group_name="sqlcrudtest-2369",
///     server_name="sqlcrudtest-8069",
///     sku={
///         "name": "GP_Gen5_4",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticPool:
///     type: azure-native:sql:ElasticPool
///     properties:
///       elasticPoolName: sqlcrudtest-8102
///       location: Japan East
///       preferredEnclaveType: VBS
///       resourceGroupName: sqlcrudtest-2369
///       serverName: sqlcrudtest-8069
///       sku:
///         name: GP_Gen5_4
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
/// $ pulumi import azure-native:sql:ElasticPool sqlcrudtest-8102 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools/{elasticPoolName}
/// ```
class ElasticPool extends pulumi.CustomResource {
  /// Time in minutes after which elastic pool is automatically paused. A value of -1 means that automatic pause is disabled
  late final pulumi.Output<int?> autoPauseDelay;
  /// Specifies the availability zone the pool's primary replica is pinned to.
  late final pulumi.Output<String?> availabilityZone;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the elastic pool (ISO8601 format).
  late final pulumi.Output<String> creationDate;
  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition elastic pool that are used to provide high availability. Applicable only to Hyperscale elastic pools.
  late final pulumi.Output<int?> highAvailabilityReplicaCount;
  /// Kind of elastic pool. This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;
  /// The license type to apply for this elastic pool.
  late final pulumi.Output<String?> licenseType;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Maintenance configuration id assigned to the elastic pool. This configuration defines the period when the maintenance updates will will occur.
  late final pulumi.Output<String?> maintenanceConfigurationId;
  /// The storage limit for the database elastic pool in bytes.
  late final pulumi.Output<double?> maxSizeBytes;
  /// Minimal capacity that serverless pool will not shrink below, if not paused
  late final pulumi.Output<double?> minCapacity;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The per database settings for the elastic pool.
  late final pulumi.Output<ElasticPoolPerDatabaseSettingsResponse?> perDatabaseSettings;
  /// Type of enclave requested on the elastic pool.
  late final pulumi.Output<String?> preferredEnclaveType;
  /// The elastic pool SKU.
  ///
  /// The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or the following command:
  ///
  /// ```azurecli
  /// az sql elastic-pool list-editions -l <location> -o table
  /// ````
  late final pulumi.Output<SkuResponse?> sku;
  /// The state of the elastic pool.
  late final pulumi.Output<String> state;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Whether or not this elastic pool is zone redundant, which means the replicas of this elastic pool will be spread across multiple availability zones.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [ElasticPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticPool]. {@macro pulumi_sql_elastic_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticPool(
    String name, {
    ElasticPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ElasticPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPauseDelay = registerOutput<int?>('autoPauseDelay');
    availabilityZone = registerOutput<String?>('availabilityZone');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    highAvailabilityReplicaCount = registerOutput<int?>('highAvailabilityReplicaCount');
    kind = registerOutput<String>('kind');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String?>('maintenanceConfigurationId');
    maxSizeBytes = registerOutput<double?>('maxSizeBytes');
    minCapacity = registerOutput<double?>('minCapacity');
    this.name = registerOutput<String>('name');
    perDatabaseSettings = registerOutput<ElasticPoolPerDatabaseSettingsResponse?>('perDatabaseSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticPoolPerDatabaseSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preferredEnclaveType = registerOutput<String?>('preferredEnclaveType');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
