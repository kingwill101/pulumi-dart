import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_san_args.dart';
import 'elastic_san_sku.dart';
import 'elastic_san_state.dart';

/// Manages an Elastic SAN resource.
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
/// const exampleElasticSan = new azure.elasticsan.ElasticSan("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     baseSizeInTib: 1,
///     extendedSizeInTib: 2,
///     sku: {
///         name: "example-value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_elastic_san = azure.elasticsan.ElasticSan("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     base_size_in_tib=1,
///     extended_size_in_tib=2,
///     sku={
///         "name": "example-value",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleElasticSan = new Azure.ElasticSan.ElasticSan("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         BaseSizeInTib = 1,
///         ExtendedSizeInTib = 2,
///         Sku = new Azure.ElasticSan.Inputs.ElasticSanSkuArgs
///         {
///             Name = "example-value",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticsan"
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
/// 		_, err = elasticsan.NewElasticSan(ctx, "example", &elasticsan.ElasticSanArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			BaseSizeInTib:     pulumi.Int(1),
/// 			ExtendedSizeInTib: pulumi.Int(2),
/// 			Sku: &elasticsan.ElasticSanSkuArgs{
/// 				Name: pulumi.String("example-value"),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_elasticsan_elasticsan" "example" {
///   name                 = "example"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   location             = azure_core_resourcegroup.example.location
///   base_size_in_tib     = 1
///   extended_size_in_tib = 2
///   sku = {
///     name = "example-value"
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
/// import com.pulumi.azure.elasticsan.ElasticSan;
/// import com.pulumi.azure.elasticsan.ElasticSanArgs;
/// import com.pulumi.azure.elasticsan.inputs.ElasticSanSkuArgs;
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
///         var exampleElasticSan = new ElasticSan("exampleElasticSan", ElasticSanArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .baseSizeInTib(1)
///             .extendedSizeInTib(2)
///             .sku(ElasticSanSkuArgs.builder()
///                 .name("example-value")
///                 .build())
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
///   exampleElasticSan:
///     type: azure:elasticsan:ElasticSan
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       baseSizeInTib: 1
///       extendedSizeInTib: 2
///       sku:
///         name: example-value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ElasticSan` - 2023-01-01
///
/// ## Import
///
/// An existing Elastic SAN can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:elasticsan/elasticSan:ElasticSan example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ElasticSan/elasticSans/esan1
/// ```
class ElasticSan extends pulumi.CustomResource {
  /// Specifies the base size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// &gt; **Note:** When updating `baseSizeInTib`, the new value should be greater than the existing one.
  late final pulumi.Output<int> baseSizeInTib;
  /// Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// &gt; **Note:** `extendedSizeInTib` cannot be removed and when updating, the new value should be greater than the existing one.
  late final pulumi.Output<int?> extendedSizeInTib;
  /// The Azure Region where the Elastic SAN resource should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Elastic SAN resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group within which this Elastic SAN resource should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `sku` block as defined below.
  late final pulumi.Output<ElasticSanSku> sku;
  /// A mapping of tags which should be assigned to the Elastic SAN resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Total Provisioned IOps of the Elastic SAN resource.
  late final pulumi.Output<int> totalIops;
  /// Total Provisioned MBps Elastic SAN resource.
  late final pulumi.Output<int> totalMbps;
  /// Total size of the Elastic SAN resource in TB.
  late final pulumi.Output<int> totalSizeInTib;
  /// Total size of the provisioned Volumes in GiB.
  late final pulumi.Output<int> totalVolumeSizeInGib;
  /// Total number of volume groups in this Elastic SAN resource.
  late final pulumi.Output<int> volumeGroupCount;
  /// Logical zone for the Elastic SAN resource. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `zones` cannot be specified if `sku.name` is set to `Premium_ZRS`.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ElasticSan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticSan]. {@macro pulumi_elasticsan_elastic_san_elastic_san_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticSan(
    String name, {
    ElasticSanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:elasticsan/elasticSan:ElasticSan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    baseSizeInTib = registerOutput<int>('baseSizeInTib');
    extendedSizeInTib = registerOutput<int?>('extendedSizeInTib');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<ElasticSanSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticSanSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    totalIops = registerOutput<int>('totalIops');
    totalMbps = registerOutput<int>('totalMbps');
    totalSizeInTib = registerOutput<int>('totalSizeInTib');
    totalVolumeSizeInGib = registerOutput<int>('totalVolumeSizeInGib');
    volumeGroupCount = registerOutput<int>('volumeGroupCount');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [ElasticSan] resource's state with the given [name] and [id].
  static ElasticSan get(
    String name,
    pulumi.Input<String> id, {
    ElasticSanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ElasticSan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ElasticSan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:elasticsan/elasticSan:ElasticSan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    baseSizeInTib = registerOutput<int>('baseSizeInTib');
    extendedSizeInTib = registerOutput<int?>('extendedSizeInTib');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<ElasticSanSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticSanSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    totalIops = registerOutput<int>('totalIops');
    totalMbps = registerOutput<int>('totalMbps');
    totalSizeInTib = registerOutput<int>('totalSizeInTib');
    totalVolumeSizeInGib = registerOutput<int>('totalVolumeSizeInGib');
    volumeGroupCount = registerOutput<int>('volumeGroupCount');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ElasticSan] resource.
  ElasticSan.reference(String urn)
    : super(
        'azure:elasticsan/elasticSan:ElasticSan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    baseSizeInTib = registerOutput<int>('baseSizeInTib');
    extendedSizeInTib = registerOutput<int?>('extendedSizeInTib');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<ElasticSanSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticSanSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    totalIops = registerOutput<int>('totalIops');
    totalMbps = registerOutput<int>('totalMbps');
    totalSizeInTib = registerOutput<int>('totalSizeInTib');
    totalVolumeSizeInGib = registerOutput<int>('totalVolumeSizeInGib');
    volumeGroupCount = registerOutput<int>('volumeGroupCount');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
