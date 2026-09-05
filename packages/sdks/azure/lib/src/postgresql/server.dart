import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_args.dart';
import 'server_identity.dart';
import 'server_state.dart';
import 'server_threat_detection_policy.dart';

/// Manages a PostgreSQL Server.
///
/// &gt; **Note:** The `azure.postgresql.Server` resource is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28, please use the `azure.postgresql.FlexibleServer` resource instead. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
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
/// const exampleServer = new azure.postgresql.Server("example", {
///     name: "example-psqlserver",
///     location: example.location,
///     resourceGroupName: example.name,
///     administratorLogin: "psqladmin",
///     administratorLoginPassword: "H@Sh1CoR3!",
///     skuName: "GP_Gen5_4",
///     version: "11",
///     storageMb: 640000,
///     backupRetentionDays: 7,
///     geoRedundantBackupEnabled: true,
///     autoGrowEnabled: true,
///     publicNetworkAccessEnabled: false,
///     sslEnforcementEnabled: true,
///     sslMinimalTlsVersionEnforced: "TLS1_2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_server = azure.postgresql.Server("example",
///     name="example-psqlserver",
///     location=example.location,
///     resource_group_name=example.name,
///     administrator_login="psqladmin",
///     administrator_login_password="H@Sh1CoR3!",
///     sku_name="GP_Gen5_4",
///     version="11",
///     storage_mb=640000,
///     backup_retention_days=7,
///     geo_redundant_backup_enabled=True,
///     auto_grow_enabled=True,
///     public_network_access_enabled=False,
///     ssl_enforcement_enabled=True,
///     ssl_minimal_tls_version_enforced="TLS1_2")
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
///     var exampleServer = new Azure.PostgreSql.Server("example", new()
///     {
///         Name = "example-psqlserver",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AdministratorLogin = "psqladmin",
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         SkuName = "GP_Gen5_4",
///         Version = "11",
///         StorageMb = 640000,
///         BackupRetentionDays = 7,
///         GeoRedundantBackupEnabled = true,
///         AutoGrowEnabled = true,
///         PublicNetworkAccessEnabled = false,
///         SslEnforcementEnabled = true,
///         SslMinimalTlsVersionEnforced = "TLS1_2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
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
/// 		_, err = postgresql.NewServer(ctx, "example", &postgresql.ServerArgs{
/// 			Name:                         pulumi.String("example-psqlserver"),
/// 			Location:                     example.Location,
/// 			ResourceGroupName:            example.Name,
/// 			AdministratorLogin:           pulumi.String("psqladmin"),
/// 			AdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			SkuName:                      pulumi.String("GP_Gen5_4"),
/// 			Version:                      pulumi.String("11"),
/// 			StorageMb:                    pulumi.Int(640000),
/// 			BackupRetentionDays:          pulumi.Int(7),
/// 			GeoRedundantBackupEnabled:    pulumi.Bool(true),
/// 			AutoGrowEnabled:              pulumi.Bool(true),
/// 			PublicNetworkAccessEnabled:   pulumi.Bool(false),
/// 			SslEnforcementEnabled:        pulumi.Bool(true),
/// 			SslMinimalTlsVersionEnforced: pulumi.String("TLS1_2"),
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
/// resource "azure_postgresql_server" "example" {
///   name                             = "example-psqlserver"
///   location                         = azure_core_resourcegroup.example.location
///   resource_group_name              = azure_core_resourcegroup.example.name
///   administrator_login              = "psqladmin"
///   administrator_login_password     = "H@Sh1CoR3!"
///   sku_name                         = "GP_Gen5_4"
///   version                          = "11"
///   storage_mb                       = 640000
///   backup_retention_days            = 7
///   geo_redundant_backup_enabled     = true
///   auto_grow_enabled                = true
///   public_network_access_enabled    = false
///   ssl_enforcement_enabled          = true
///   ssl_minimal_tls_version_enforced = "TLS1_2"
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
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.ServerArgs;
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
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-psqlserver")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .administratorLogin("psqladmin")
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .skuName("GP_Gen5_4")
///             .version("11")
///             .storageMb(640000)
///             .backupRetentionDays(7)
///             .geoRedundantBackupEnabled(true)
///             .autoGrowEnabled(true)
///             .publicNetworkAccessEnabled(false)
///             .sslEnforcementEnabled(true)
///             .sslMinimalTlsVersionEnforced("TLS1_2")
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
///   exampleServer:
///     type: azure:postgresql:Server
///     name: example
///     properties:
///       name: example-psqlserver
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       administratorLogin: psqladmin
///       administratorLoginPassword: H@Sh1CoR3!
///       skuName: GP_Gen5_4
///       version: '11'
///       storageMb: 640000
///       backupRetentionDays: 7
///       geoRedundantBackupEnabled: true
///       autoGrowEnabled: true
///       publicNetworkAccessEnabled: false
///       sslEnforcementEnabled: true
///       sslMinimalTlsVersionEnforced: TLS1_2
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2017-12-01
///
/// ## Import
///
/// PostgreSQL Server's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/server:Server server1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforPostgreSQL/servers/server1
/// ```
class Server extends pulumi.CustomResource {
  /// The Administrator login for the PostgreSQL Server. Required when `createMode` is `Default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> administratorLogin;
  /// The Password associated with the `administratorLogin` for the PostgreSQL Server.
  late final pulumi.Output<String?> administratorLoginPassword;
  /// An integer value used to trigger an update for `administratorLoginPasswordWo`. This property should be incremented when updating `administratorLoginPasswordWo`.
  late final pulumi.Output<int?> administratorLoginPasswordWoVersion;
  /// Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only. If storage auto grow is enabled, the storage automatically grows without impacting the workload. Defaults to `true`.
  late final pulumi.Output<bool?> autoGrowEnabled;
  /// Backup retention days for the server, supported values are between `7` and `35` days.
  late final pulumi.Output<int> backupRetentionDays;
  /// The creation mode. Can be used to restore or replicate existing servers. Possible values are `Default`, `Replica`, `GeoRestore`, and `PointInTimeRestore`. Defaults to `Default`.
  late final pulumi.Output<String?> createMode;
  /// For creation modes other than `Default`, the source server ID to use.
  late final pulumi.Output<String?> creationSourceServerId;
  /// The FQDN of the PostgreSQL Server.
  late final pulumi.Output<String> fqdn;
  /// Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers. When the backups are stored in geo-redundant backup storage, they are not only stored within the region in which your server is hosted, but are also replicated to a paired data center. This provides better protection and ability to restore your server in a different region in the event of a disaster. This is not support for the Basic tier. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> geoRedundantBackupEnabled;
  /// An `identity` block as defined below.
  late final pulumi.Output<ServerIdentity?> identity;
  /// Whether or not infrastructure is encrypted for this server. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This property is currently still in development and not supported by Microsoft. If the `infrastructureEncryptionEnabled` attribute is set to `true` the PostgreSQL instance will incur a substantial performance degradation due to a second encryption pass on top of the existing default encryption that is already provided by Azure Storage. It is strongly suggested to leave this value `false` as not doing so can lead to unclear error messages.
  late final pulumi.Output<bool?> infrastructureEncryptionEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the PostgreSQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// When `createMode` is `PointInTimeRestore` the point in time to restore from `creationSourceServerId`. It should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. `2013-11-08T22:00:40Z`.
  late final pulumi.Output<String?> restorePointInTime;
  /// Specifies the SKU Name for this PostgreSQL Server. The name of the SKU, follows the `tier` + `family` + `cores` pattern (e.g. `B_Gen4_1`, `GP_Gen5_8`). For more information see the [product documentation](https://docs.microsoft.com/rest/api/postgresql/singleserver/servers/create#sku). Possible values are `B_Gen4_1`, `B_Gen4_2`, `B_Gen5_1`, `B_Gen5_2`, `GP_Gen4_2`, `GP_Gen4_4`, `GP_Gen4_8`, `GP_Gen4_16`, `GP_Gen4_32`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_8`, `GP_Gen5_16`, `GP_Gen5_32`, `GP_Gen5_64`, `MO_Gen5_2`, `MO_Gen5_4`, `MO_Gen5_8`, `MO_Gen5_16` and `MO_Gen5_32`.
  ///
  /// &gt; **Note:** When replication is set up and `skuName` is changed to a higher tier or more capacity for the primary, all replicas are scaled up to the same tier/capacity. This is an Azure requirement, for more information see the [replica scaling documentation](https://docs.microsoft.com/azure/postgresql/concepts-read-replicas#scaling)
  late final pulumi.Output<String> skuName;
  /// Specifies if SSL should be enforced on connections. Possible values are `true` and `false`.
  ///
  /// &gt; **Note:** `sslMinimalTlsVersionEnforced` must be set to `TLSEnforcementDisabled` when `sslEnforcementEnabled` is set to `false`.
  late final pulumi.Output<bool> sslEnforcementEnabled;
  /// The minimum TLS version to support on the sever. Possible values are `TLSEnforcementDisabled`, `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2`.
  late final pulumi.Output<String?> sslMinimalTlsVersionEnforced;
  /// Max storage allowed for a server. Possible values are between `5120` MB(5GB) and `1048576` MB(1TB) for the Basic SKU and between `5120` MB(5GB) and `16777216` MB(16TB) for General Purpose/Memory Optimized SKUs. For more information see the [product documentation](https://docs.microsoft.com/azure/postgresql/concepts-pricing-tiers#storage).
  late final pulumi.Output<int> storageMb;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Threat detection policy configuration, known in the API as Server Security Alerts Policy. The `threatDetectionPolicy` block supports fields documented below.
  late final pulumi.Output<ServerThreatDetectionPolicy?> threatDetectionPolicy;
  /// Specifies the version of PostgreSQL to use. Valid values are `9.5`, `9.6`, `10`, `10.0`, `10.2` and `11`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> version;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_postgresql_server_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(
    String name, {
    ServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/server:Server',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['administratorLoginPassword'],
        ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorLoginPassword = registerOutput<String?>('administratorLoginPassword', isSecret: true);
    administratorLoginPasswordWoVersion = registerOutput<int?>('administratorLoginPasswordWoVersion');
    autoGrowEnabled = registerOutput<bool?>('autoGrowEnabled');
    backupRetentionDays = registerOutput<int>('backupRetentionDays');
    createMode = registerOutput<String?>('createMode');
    creationSourceServerId = registerOutput<String?>('creationSourceServerId');
    fqdn = registerOutput<String>('fqdn');
    geoRedundantBackupEnabled = registerOutput<bool?>('geoRedundantBackupEnabled');
    identity = registerOutput<ServerIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureEncryptionEnabled = registerOutput<bool?>('infrastructureEncryptionEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restorePointInTime = registerOutput<String?>('restorePointInTime');
    skuName = registerOutput<String>('skuName');
    sslEnforcementEnabled = registerOutput<bool>('sslEnforcementEnabled');
    sslMinimalTlsVersionEnforced = registerOutput<String?>('sslMinimalTlsVersionEnforced');
    storageMb = registerOutput<int>('storageMb');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    threatDetectionPolicy = registerOutput<ServerThreatDetectionPolicy?>('threatDetectionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerThreatDetectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Server] resource's state with the given [name] and [id].
  static Server get(
    String name,
    pulumi.Input<String> id, {
    ServerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Server._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Server._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/server:Server',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorLoginPassword = registerOutput<String?>('administratorLoginPassword', isSecret: true);
    administratorLoginPasswordWoVersion = registerOutput<int?>('administratorLoginPasswordWoVersion');
    autoGrowEnabled = registerOutput<bool?>('autoGrowEnabled');
    backupRetentionDays = registerOutput<int>('backupRetentionDays');
    createMode = registerOutput<String?>('createMode');
    creationSourceServerId = registerOutput<String?>('creationSourceServerId');
    fqdn = registerOutput<String>('fqdn');
    geoRedundantBackupEnabled = registerOutput<bool?>('geoRedundantBackupEnabled');
    identity = registerOutput<ServerIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureEncryptionEnabled = registerOutput<bool?>('infrastructureEncryptionEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restorePointInTime = registerOutput<String?>('restorePointInTime');
    skuName = registerOutput<String>('skuName');
    sslEnforcementEnabled = registerOutput<bool>('sslEnforcementEnabled');
    sslMinimalTlsVersionEnforced = registerOutput<String?>('sslMinimalTlsVersionEnforced');
    storageMb = registerOutput<int>('storageMb');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    threatDetectionPolicy = registerOutput<ServerThreatDetectionPolicy?>('threatDetectionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerThreatDetectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [Server] resource.
  Server.reference(String urn)
    : super(
        'azure:postgresql/server:Server',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['administratorLoginPassword'],
        isResourceReference: true,
      ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorLoginPassword = registerOutput<String?>('administratorLoginPassword', isSecret: true);
    administratorLoginPasswordWoVersion = registerOutput<int?>('administratorLoginPasswordWoVersion');
    autoGrowEnabled = registerOutput<bool?>('autoGrowEnabled');
    backupRetentionDays = registerOutput<int>('backupRetentionDays');
    createMode = registerOutput<String?>('createMode');
    creationSourceServerId = registerOutput<String?>('creationSourceServerId');
    fqdn = registerOutput<String>('fqdn');
    geoRedundantBackupEnabled = registerOutput<bool?>('geoRedundantBackupEnabled');
    identity = registerOutput<ServerIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureEncryptionEnabled = registerOutput<bool?>('infrastructureEncryptionEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restorePointInTime = registerOutput<String?>('restorePointInTime');
    skuName = registerOutput<String>('skuName');
    sslEnforcementEnabled = registerOutput<bool>('sslEnforcementEnabled');
    sslMinimalTlsVersionEnforced = registerOutput<String?>('sslMinimalTlsVersionEnforced');
    storageMb = registerOutput<int>('storageMb');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    threatDetectionPolicy = registerOutput<ServerThreatDetectionPolicy?>('threatDetectionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerThreatDetectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
  }
}
