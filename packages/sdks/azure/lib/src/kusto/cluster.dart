import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_identity.dart';
import 'cluster_language_extension.dart';
import 'cluster_optimized_auto_scale.dart';
import 'cluster_sku.dart';
import 'cluster_state.dart';
import 'cluster_virtual_network_configuration.dart';

/// Manages a Kusto (also known as Azure Data Explorer) Cluster
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_D13_v2",
///         capacity: 2,
///     },
///     tags: {
///         Environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_cluster = azure.kusto.Cluster("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     },
///     tags={
///         "Environment": "Production",
///     })
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Standard_D13_v2",
///             Capacity = 2,
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Standard_D13_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_kusto_cluster" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Standard_D13_v2"
///     capacity = 2
///   }
///   tags = {
///     "Environment" = "Production"
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
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Standard_D13_v2")
///                 .capacity(2)
///                 .build())
///             .tags(Map.of("Environment", "Production"))
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
///       name: example
///       location: West Europe
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_D13_v2
///         capacity: 2
///       tags:
///         Environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Kusto Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/cluster:Cluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1
/// ```
class Cluster extends pulumi.CustomResource {
  /// List of allowed FQDNs (Fully Qualified Domain Name) for egress from Cluster.
  late final pulumi.Output<List<String>?> allowedFqdns;
  /// The list of ips in the format of CIDR allowed to connect to the cluster.
  late final pulumi.Output<List<String>?> allowedIpRanges;
  /// Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`.
  late final pulumi.Output<bool?> autoStopEnabled;
  /// The Kusto Cluster URI to be used for data ingestion.
  late final pulumi.Output<String> dataIngestionUri;
  /// Specifies if the cluster's disks are encrypted. Defaults to `false`.
  late final pulumi.Output<bool?> diskEncryptionEnabled;
  /// Is the cluster's double encryption enabled? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> doubleEncryptionEnabled;
  /// An `identity` block as defined below.
  late final pulumi.Output<ClusterIdentity?> identity;
  /// A `languageExtension` block as defined below.
  late final pulumi.Output<List<ClusterLanguageExtension>> languageExtension;
  late final pulumi.Output<List<ClusterLanguageExtension>> languageExtensions;
  /// The location where the Kusto Cluster should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// An `optimizedAutoScale` block as defined below.
  late final pulumi.Output<ClusterOptimizedAutoScale?> optimizedAutoScale;
  /// Whether to restrict outbound network access. Defaults to `false`.
  late final pulumi.Output<bool?> outboundNetworkAccessRestricted;
  /// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6). Defaults to `IPv4`.
  late final pulumi.Output<String?> publicIpType;
  /// Is the public network access enabled? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Specifies if the purge operations are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> purgeEnabled;
  /// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `sku` block as defined below.
  late final pulumi.Output<ClusterSku> sku;
  /// Specifies if the streaming ingest is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> streamingIngestionEnabled;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use `trustedExternalTenants = ["*"]` to explicitly allow all other tenants, `trustedExternalTenants = ["MyTenantOnly"]` for only your tenant or `trustedExternalTenants = ["&lt;tenantId1&gt;", "&lt;tenantIdx&gt;"]` to allow specific other tenants.
  ///
  /// &gt; **Note:** In v3.0 of `azurerm` a new or updated Kusto Cluster will only allow your own tenant by default. Explicit configuration of this setting will change from `trustedExternalTenants = ["MyTenantOnly"]` to `trustedExternalTenants = []`.
  late final pulumi.Output<List<String>> trustedExternalTenants;
  /// The FQDN of the Azure Kusto Cluster.
  late final pulumi.Output<String> uri;
  late final pulumi.Output<ClusterVirtualNetworkConfiguration?> virtualNetworkConfiguration;
  /// Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_kusto_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    allowedFqdns = registerOutput<List<String>?>('allowedFqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedIpRanges = registerOutput<List<String>?>('allowedIpRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    autoStopEnabled = registerOutput<bool?>('autoStopEnabled');
    dataIngestionUri = registerOutput<String>('dataIngestionUri');
    diskEncryptionEnabled = registerOutput<bool?>('diskEncryptionEnabled');
    doubleEncryptionEnabled = registerOutput<bool?>('doubleEncryptionEnabled');
    identity = registerOutput<ClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageExtension = registerOutput<List<ClusterLanguageExtension>>('languageExtension', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterLanguageExtension>(guardedValue, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>())); });
    languageExtensions = registerOutput<List<ClusterLanguageExtension>>('languageExtensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterLanguageExtension>(guardedValue, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    optimizedAutoScale = registerOutput<ClusterOptimizedAutoScale?>('optimizedAutoScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOptimizedAutoScale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundNetworkAccessRestricted = registerOutput<bool?>('outboundNetworkAccessRestricted');
    publicIpType = registerOutput<String?>('publicIpType');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    purgeEnabled = registerOutput<bool?>('purgeEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<ClusterSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamingIngestionEnabled = registerOutput<bool?>('streamingIngestionEnabled');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedExternalTenants = registerOutput<List<String>>('trustedExternalTenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    uri = registerOutput<String>('uri');
    virtualNetworkConfiguration = registerOutput<ClusterVirtualNetworkConfiguration?>('virtualNetworkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedFqdns = registerOutput<List<String>?>('allowedFqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedIpRanges = registerOutput<List<String>?>('allowedIpRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    autoStopEnabled = registerOutput<bool?>('autoStopEnabled');
    dataIngestionUri = registerOutput<String>('dataIngestionUri');
    diskEncryptionEnabled = registerOutput<bool?>('diskEncryptionEnabled');
    doubleEncryptionEnabled = registerOutput<bool?>('doubleEncryptionEnabled');
    identity = registerOutput<ClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageExtension = registerOutput<List<ClusterLanguageExtension>>('languageExtension', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterLanguageExtension>(guardedValue, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>())); });
    languageExtensions = registerOutput<List<ClusterLanguageExtension>>('languageExtensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterLanguageExtension>(guardedValue, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    optimizedAutoScale = registerOutput<ClusterOptimizedAutoScale?>('optimizedAutoScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOptimizedAutoScale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundNetworkAccessRestricted = registerOutput<bool?>('outboundNetworkAccessRestricted');
    publicIpType = registerOutput<String?>('publicIpType');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    purgeEnabled = registerOutput<bool?>('purgeEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<ClusterSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamingIngestionEnabled = registerOutput<bool?>('streamingIngestionEnabled');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedExternalTenants = registerOutput<List<String>>('trustedExternalTenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    uri = registerOutput<String>('uri');
    virtualNetworkConfiguration = registerOutput<ClusterVirtualNetworkConfiguration?>('virtualNetworkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'azure:kusto/cluster:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowedFqdns = registerOutput<List<String>?>('allowedFqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedIpRanges = registerOutput<List<String>?>('allowedIpRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    autoStopEnabled = registerOutput<bool?>('autoStopEnabled');
    dataIngestionUri = registerOutput<String>('dataIngestionUri');
    diskEncryptionEnabled = registerOutput<bool?>('diskEncryptionEnabled');
    doubleEncryptionEnabled = registerOutput<bool?>('doubleEncryptionEnabled');
    identity = registerOutput<ClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageExtension = registerOutput<List<ClusterLanguageExtension>>('languageExtension', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterLanguageExtension>(guardedValue, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>())); });
    languageExtensions = registerOutput<List<ClusterLanguageExtension>>('languageExtensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterLanguageExtension>(guardedValue, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    optimizedAutoScale = registerOutput<ClusterOptimizedAutoScale?>('optimizedAutoScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOptimizedAutoScale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundNetworkAccessRestricted = registerOutput<bool?>('outboundNetworkAccessRestricted');
    publicIpType = registerOutput<String?>('publicIpType');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    purgeEnabled = registerOutput<bool?>('purgeEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<ClusterSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamingIngestionEnabled = registerOutput<bool?>('streamingIngestionEnabled');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedExternalTenants = registerOutput<List<String>>('trustedExternalTenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    uri = registerOutput<String>('uri');
    virtualNetworkConfiguration = registerOutput<ClusterVirtualNetworkConfiguration?>('virtualNetworkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
