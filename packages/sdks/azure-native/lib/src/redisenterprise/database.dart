import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_properties_response_geo_replication.dart';
import 'persistence_response.dart';
import 'system_data_response.dart';

/// Describes a database on the Redis Enterprise cluster
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2020-10-01-preview, 2021-02-01-preview, 2021-03-01, 2021-08-01, 2022-01-01, 2022-11-01-preview, 2023-03-01-preview, 2023-07-01, 2023-08-01-preview, 2023-10-01-preview, 2023-11-01, 2024-02-01, 2024-03-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-10-01, 2025-04-01, 2025-07-01, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisEnterpriseDatabasesCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.RedisEnterprise.Database("database", new()
///     {
///         AccessKeysAuthentication = AzureNative.RedisEnterprise.AccessKeysAuthentication.Enabled,
///         ClientProtocol = AzureNative.RedisEnterprise.Protocol.Encrypted,
///         ClusterName = "cache1",
///         ClusteringPolicy = AzureNative.RedisEnterprise.ClusteringPolicy.EnterpriseCluster,
///         DatabaseName = "default",
///         DeferUpgrade = AzureNative.RedisEnterprise.DeferUpgradeSetting.NotDeferred,
///         EvictionPolicy = AzureNative.RedisEnterprise.EvictionPolicy.AllKeysLRU,
///         Modules = new[]
///         {
///             new AzureNative.RedisEnterprise.Inputs.ModuleArgs
///             {
///                 Args = "ERROR_RATE 0.00 INITIAL_SIZE 400",
///                 Name = "RedisBloom",
///             },
///             new AzureNative.RedisEnterprise.Inputs.ModuleArgs
///             {
///                 Args = "RETENTION_POLICY 20",
///                 Name = "RedisTimeSeries",
///             },
///             new AzureNative.RedisEnterprise.Inputs.ModuleArgs
///             {
///                 Name = "RediSearch",
///             },
///         },
///         Persistence = new AzureNative.RedisEnterprise.Inputs.PersistenceArgs
///         {
///             AofEnabled = true,
///             AofFrequency = AzureNative.RedisEnterprise.AofFrequency.AofFrequency_1s,
///         },
///         Port = 10000,
///         ResourceGroupName = "rg1",
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
/// 	redisenterprise "github.com/pulumi/pulumi-azure-native-sdk/redisenterprise/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redisenterprise.NewDatabase(ctx, "database", &redisenterprise.DatabaseArgs{
/// 			AccessKeysAuthentication: pulumi.String(redisenterprise.AccessKeysAuthenticationEnabled),
/// 			ClientProtocol:           pulumi.String(redisenterprise.ProtocolEncrypted),
/// 			ClusterName:              pulumi.String("cache1"),
/// 			ClusteringPolicy:         pulumi.String(redisenterprise.ClusteringPolicyEnterpriseCluster),
/// 			DatabaseName:             pulumi.String("default"),
/// 			DeferUpgrade:             pulumi.String(redisenterprise.DeferUpgradeSettingNotDeferred),
/// 			EvictionPolicy:           pulumi.String(redisenterprise.EvictionPolicyAllKeysLRU),
/// 			Modules: redisenterprise.ModuleArray{
/// 				&redisenterprise.ModuleArgs{
/// 					Args: pulumi.String("ERROR_RATE 0.00 INITIAL_SIZE 400"),
/// 					Name: pulumi.String("RedisBloom"),
/// 				},
/// 				&redisenterprise.ModuleArgs{
/// 					Args: pulumi.String("RETENTION_POLICY 20"),
/// 					Name: pulumi.String("RedisTimeSeries"),
/// 				},
/// 				&redisenterprise.ModuleArgs{
/// 					Name: pulumi.String("RediSearch"),
/// 				},
/// 			},
/// 			Persistence: &redisenterprise.PersistenceArgs{
/// 				AofEnabled:   pulumi.Bool(true),
/// 				AofFrequency: pulumi.String(redisenterprise.AofFrequency_1s),
/// 			},
/// 			Port:              pulumi.Int(10000),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.redisenterprise.Database;
/// import com.pulumi.azurenative.redisenterprise.DatabaseArgs;
/// import com.pulumi.azurenative.redisenterprise.inputs.ModuleArgs;
/// import com.pulumi.azurenative.redisenterprise.inputs.PersistenceArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .accessKeysAuthentication("Enabled")
///             .clientProtocol("Encrypted")
///             .clusterName("cache1")
///             .clusteringPolicy("EnterpriseCluster")
///             .databaseName("default")
///             .deferUpgrade("NotDeferred")
///             .evictionPolicy("AllKeysLRU")
///             .modules(
///                 ModuleArgs.builder()
///                     .args("ERROR_RATE 0.00 INITIAL_SIZE 400")
///                     .name("RedisBloom")
///                     .build(),
///                 ModuleArgs.builder()
///                     .args("RETENTION_POLICY 20")
///                     .name("RedisTimeSeries")
///                     .build(),
///                 ModuleArgs.builder()
///                     .name("RediSearch")
///                     .build())
///             .persistence(PersistenceArgs.builder()
///                 .aofEnabled(true)
///                 .aofFrequency("1s")
///                 .build())
///             .port(10000)
///             .resourceGroupName("rg1")
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
/// const database = new azure_native.redisenterprise.Database("database", {
///     accessKeysAuthentication: azure_native.redisenterprise.AccessKeysAuthentication.Enabled,
///     clientProtocol: azure_native.redisenterprise.Protocol.Encrypted,
///     clusterName: "cache1",
///     clusteringPolicy: azure_native.redisenterprise.ClusteringPolicy.EnterpriseCluster,
///     databaseName: "default",
///     deferUpgrade: azure_native.redisenterprise.DeferUpgradeSetting.NotDeferred,
///     evictionPolicy: azure_native.redisenterprise.EvictionPolicy.AllKeysLRU,
///     modules: [
///         {
///             args: "ERROR_RATE 0.00 INITIAL_SIZE 400",
///             name: "RedisBloom",
///         },
///         {
///             args: "RETENTION_POLICY 20",
///             name: "RedisTimeSeries",
///         },
///         {
///             name: "RediSearch",
///         },
///     ],
///     persistence: {
///         aofEnabled: true,
///         aofFrequency: azure_native.redisenterprise.AofFrequency.AofFrequency_1s,
///     },
///     port: 10000,
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.redisenterprise.Database("database",
///     access_keys_authentication=azure_native.redisenterprise.AccessKeysAuthentication.ENABLED,
///     client_protocol=azure_native.redisenterprise.Protocol.ENCRYPTED,
///     cluster_name="cache1",
///     clustering_policy=azure_native.redisenterprise.ClusteringPolicy.ENTERPRISE_CLUSTER,
///     database_name="default",
///     defer_upgrade=azure_native.redisenterprise.DeferUpgradeSetting.NOT_DEFERRED,
///     eviction_policy=azure_native.redisenterprise.EvictionPolicy.ALL_KEYS_LRU,
///     modules=[
///         {
///             "args": "ERROR_RATE 0.00 INITIAL_SIZE 400",
///             "name": "RedisBloom",
///         },
///         {
///             "args": "RETENTION_POLICY 20",
///             "name": "RedisTimeSeries",
///         },
///         {
///             "name": "RediSearch",
///         },
///     ],
///     persistence={
///         "aof_enabled": True,
///         "aof_frequency": azure_native.redisenterprise.AofFrequency.AOF_FREQUENCY_1S,
///     },
///     port=10000,
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:redisenterprise:Database
///     properties:
///       accessKeysAuthentication: Enabled
///       clientProtocol: Encrypted
///       clusterName: cache1
///       clusteringPolicy: EnterpriseCluster
///       databaseName: default
///       deferUpgrade: NotDeferred
///       evictionPolicy: AllKeysLRU
///       modules:
///         - args: ERROR_RATE 0.00 INITIAL_SIZE 400
///           name: RedisBloom
///         - args: RETENTION_POLICY 20
///           name: RedisTimeSeries
///         - name: RediSearch
///       persistence:
///         aofEnabled: true
///         aofFrequency: 1s
///       port: 10000
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RedisEnterpriseDatabasesCreate No Cluster Cache
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.RedisEnterprise.Database("database", new()
///     {
///         ClientProtocol = AzureNative.RedisEnterprise.Protocol.Encrypted,
///         ClusterName = "cache1",
///         ClusteringPolicy = AzureNative.RedisEnterprise.ClusteringPolicy.NoCluster,
///         DatabaseName = "default",
///         EvictionPolicy = AzureNative.RedisEnterprise.EvictionPolicy.NoEviction,
///         Port = 10000,
///         ResourceGroupName = "rg1",
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
/// 	redisenterprise "github.com/pulumi/pulumi-azure-native-sdk/redisenterprise/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redisenterprise.NewDatabase(ctx, "database", &redisenterprise.DatabaseArgs{
/// 			ClientProtocol:    pulumi.String(redisenterprise.ProtocolEncrypted),
/// 			ClusterName:       pulumi.String("cache1"),
/// 			ClusteringPolicy:  pulumi.String(redisenterprise.ClusteringPolicyNoCluster),
/// 			DatabaseName:      pulumi.String("default"),
/// 			EvictionPolicy:    pulumi.String(redisenterprise.EvictionPolicyNoEviction),
/// 			Port:              pulumi.Int(10000),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.redisenterprise.Database;
/// import com.pulumi.azurenative.redisenterprise.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .clientProtocol("Encrypted")
///             .clusterName("cache1")
///             .clusteringPolicy("NoCluster")
///             .databaseName("default")
///             .evictionPolicy("NoEviction")
///             .port(10000)
///             .resourceGroupName("rg1")
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
/// const database = new azure_native.redisenterprise.Database("database", {
///     clientProtocol: azure_native.redisenterprise.Protocol.Encrypted,
///     clusterName: "cache1",
///     clusteringPolicy: azure_native.redisenterprise.ClusteringPolicy.NoCluster,
///     databaseName: "default",
///     evictionPolicy: azure_native.redisenterprise.EvictionPolicy.NoEviction,
///     port: 10000,
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.redisenterprise.Database("database",
///     client_protocol=azure_native.redisenterprise.Protocol.ENCRYPTED,
///     cluster_name="cache1",
///     clustering_policy=azure_native.redisenterprise.ClusteringPolicy.NO_CLUSTER,
///     database_name="default",
///     eviction_policy=azure_native.redisenterprise.EvictionPolicy.NO_EVICTION,
///     port=10000,
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:redisenterprise:Database
///     properties:
///       clientProtocol: Encrypted
///       clusterName: cache1
///       clusteringPolicy: NoCluster
///       databaseName: default
///       evictionPolicy: NoEviction
///       port: 10000
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RedisEnterpriseDatabasesCreate With Active Geo Replication
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.RedisEnterprise.Database("database", new()
///     {
///         AccessKeysAuthentication = AzureNative.RedisEnterprise.AccessKeysAuthentication.Enabled,
///         ClientProtocol = AzureNative.RedisEnterprise.Protocol.Encrypted,
///         ClusterName = "cache1",
///         ClusteringPolicy = AzureNative.RedisEnterprise.ClusteringPolicy.EnterpriseCluster,
///         DatabaseName = "default",
///         EvictionPolicy = AzureNative.RedisEnterprise.EvictionPolicy.NoEviction,
///         GeoReplication = new AzureNative.RedisEnterprise.Inputs.DatabasePropertiesGeoReplicationArgs
///         {
///             GroupNickname = "groupName",
///             LinkedDatabases = new[]
///             {
///                 new AzureNative.RedisEnterprise.Inputs.LinkedDatabaseArgs
///                 {
///                     Id = "/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8f/resourceGroups/rg1/providers/Microsoft.Cache/redisEnterprise/cache1/databases/default",
///                 },
///                 new AzureNative.RedisEnterprise.Inputs.LinkedDatabaseArgs
///                 {
///                     Id = "/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8e/resourceGroups/rg2/providers/Microsoft.Cache/redisEnterprise/cache2/databases/default",
///                 },
///             },
///         },
///         Port = 10000,
///         ResourceGroupName = "rg1",
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
/// 	redisenterprise "github.com/pulumi/pulumi-azure-native-sdk/redisenterprise/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redisenterprise.NewDatabase(ctx, "database", &redisenterprise.DatabaseArgs{
/// 			AccessKeysAuthentication: pulumi.String(redisenterprise.AccessKeysAuthenticationEnabled),
/// 			ClientProtocol:           pulumi.String(redisenterprise.ProtocolEncrypted),
/// 			ClusterName:              pulumi.String("cache1"),
/// 			ClusteringPolicy:         pulumi.String(redisenterprise.ClusteringPolicyEnterpriseCluster),
/// 			DatabaseName:             pulumi.String("default"),
/// 			EvictionPolicy:           pulumi.String(redisenterprise.EvictionPolicyNoEviction),
/// 			GeoReplication: &redisenterprise.DatabasePropertiesGeoReplicationArgs{
/// 				GroupNickname: pulumi.String("groupName"),
/// 				LinkedDatabases: redisenterprise.LinkedDatabaseArray{
/// 					&redisenterprise.LinkedDatabaseArgs{
/// 						Id: pulumi.String("/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8f/resourceGroups/rg1/providers/Microsoft.Cache/redisEnterprise/cache1/databases/default"),
/// 					},
/// 					&redisenterprise.LinkedDatabaseArgs{
/// 						Id: pulumi.String("/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8e/resourceGroups/rg2/providers/Microsoft.Cache/redisEnterprise/cache2/databases/default"),
/// 					},
/// 				},
/// 			},
/// 			Port:              pulumi.Int(10000),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.redisenterprise.Database;
/// import com.pulumi.azurenative.redisenterprise.DatabaseArgs;
/// import com.pulumi.azurenative.redisenterprise.inputs.DatabasePropertiesGeoReplicationArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .accessKeysAuthentication("Enabled")
///             .clientProtocol("Encrypted")
///             .clusterName("cache1")
///             .clusteringPolicy("EnterpriseCluster")
///             .databaseName("default")
///             .evictionPolicy("NoEviction")
///             .geoReplication(DatabasePropertiesGeoReplicationArgs.builder()
///                 .groupNickname("groupName")
///                 .linkedDatabases(
///                     LinkedDatabaseArgs.builder()
///                         .id("/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8f/resourceGroups/rg1/providers/Microsoft.Cache/redisEnterprise/cache1/databases/default")
///                         .build(),
///                     LinkedDatabaseArgs.builder()
///                         .id("/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8e/resourceGroups/rg2/providers/Microsoft.Cache/redisEnterprise/cache2/databases/default")
///                         .build())
///                 .build())
///             .port(10000)
///             .resourceGroupName("rg1")
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
/// const database = new azure_native.redisenterprise.Database("database", {
///     accessKeysAuthentication: azure_native.redisenterprise.AccessKeysAuthentication.Enabled,
///     clientProtocol: azure_native.redisenterprise.Protocol.Encrypted,
///     clusterName: "cache1",
///     clusteringPolicy: azure_native.redisenterprise.ClusteringPolicy.EnterpriseCluster,
///     databaseName: "default",
///     evictionPolicy: azure_native.redisenterprise.EvictionPolicy.NoEviction,
///     geoReplication: {
///         groupNickname: "groupName",
///         linkedDatabases: [
///             {
///                 id: "/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8f/resourceGroups/rg1/providers/Microsoft.Cache/redisEnterprise/cache1/databases/default",
///             },
///             {
///                 id: "/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8e/resourceGroups/rg2/providers/Microsoft.Cache/redisEnterprise/cache2/databases/default",
///             },
///         ],
///     },
///     port: 10000,
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.redisenterprise.Database("database",
///     access_keys_authentication=azure_native.redisenterprise.AccessKeysAuthentication.ENABLED,
///     client_protocol=azure_native.redisenterprise.Protocol.ENCRYPTED,
///     cluster_name="cache1",
///     clustering_policy=azure_native.redisenterprise.ClusteringPolicy.ENTERPRISE_CLUSTER,
///     database_name="default",
///     eviction_policy=azure_native.redisenterprise.EvictionPolicy.NO_EVICTION,
///     geo_replication={
///         "group_nickname": "groupName",
///         "linked_databases": [
///             {
///                 "id": "/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8f/resourceGroups/rg1/providers/Microsoft.Cache/redisEnterprise/cache1/databases/default",
///             },
///             {
///                 "id": "/subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8e/resourceGroups/rg2/providers/Microsoft.Cache/redisEnterprise/cache2/databases/default",
///             },
///         ],
///     },
///     port=10000,
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:redisenterprise:Database
///     properties:
///       accessKeysAuthentication: Enabled
///       clientProtocol: Encrypted
///       clusterName: cache1
///       clusteringPolicy: EnterpriseCluster
///       databaseName: default
///       evictionPolicy: NoEviction
///       geoReplication:
///         groupNickname: groupName
///         linkedDatabases:
///           - id: /subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8f/resourceGroups/rg1/providers/Microsoft.Cache/redisEnterprise/cache1/databases/default
///           - id: /subscriptions/e7b5a9d2-6b6a-4d2f-9143-20d9a10f5b8e/resourceGroups/rg2/providers/Microsoft.Cache/redisEnterprise/cache2/databases/default
///       port: 10000
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:redisenterprise:Database cache1/default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redisEnterprise/{clusterName}/databases/{databaseName}
/// ```
class Database extends pulumi.CustomResource {
  /// This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
  late final pulumi.Output<String?> accessKeysAuthentication;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
  late final pulumi.Output<String?> clientProtocol;
  /// Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
  late final pulumi.Output<String?> clusteringPolicy;
  /// Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
  late final pulumi.Output<String?> deferUpgrade;
  /// Redis eviction policy - default is VolatileLRU
  late final pulumi.Output<String?> evictionPolicy;
  /// Optional set of properties to configure geo replication for this database.
  late final pulumi.Output<DatabasePropertiesResponseGeoReplication?> geoReplication;
  /// Optional set of redis modules to enable in this database - modules can only be added at creation time.
  late final pulumi.Output<List<Map<String, dynamic>>?> modules;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Persistence settings
  late final pulumi.Output<PersistenceResponse?> persistence;
  /// TCP port of the database endpoint. Specified at create time. Defaults to an available port.
  late final pulumi.Output<int?> port;
  /// Current provisioning status of the database
  late final pulumi.Output<String> provisioningState;
  /// Version of Redis the database is running on, e.g. '6.0'
  late final pulumi.Output<String> redisVersion;
  /// Current resource status of the database
  late final pulumi.Output<String> resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_redisenterprise_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redisenterprise:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKeysAuthentication = registerOutput<String?>('accessKeysAuthentication');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientProtocol = registerOutput<String?>('clientProtocol');
    clusteringPolicy = registerOutput<String?>('clusteringPolicy');
    deferUpgrade = registerOutput<String?>('deferUpgrade');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    geoReplication = registerOutput<DatabasePropertiesResponseGeoReplication?>('geoReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabasePropertiesResponseGeoReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modules = registerOutput<List<Map<String, dynamic>>?>('modules');
    this.name = registerOutput<String>('name');
    persistence = registerOutput<PersistenceResponse?>('persistence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PersistenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    port = registerOutput<int?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    redisVersion = registerOutput<String>('redisVersion');
    resourceState = registerOutput<String>('resourceState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
