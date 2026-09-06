import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_cluster_args.dart';

/// An Azure SQL virtual cluster.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create virtual cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualCluster = new AzureNative.Sql.VirtualCluster("virtualCluster", new()
///     {
///         Location = "japaneast",
///         ResourceGroupName = "testrg",
///         Tags =
///         {
///             { "key", "value" },
///         },
///         VirtualClusterName = "vc-subnet1-f769ed71-b3ad-491a-a9d5-26eeceaa6be2",
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
/// 		_, err := sql.NewVirtualCluster(ctx, "virtualCluster", &sql.VirtualClusterArgs{
/// 			Location:          pulumi.String("japaneast"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			VirtualClusterName: pulumi.String("vc-subnet1-f769ed71-b3ad-491a-a9d5-26eeceaa6be2"),
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
/// resource "azure-native_sql_virtualcluster" "virtualCluster" {
///   location            = "japaneast"
///   resource_group_name = "testrg"
///   tags = {
///     "key" = "value"
///   }
///   virtual_cluster_name = "vc-subnet1-f769ed71-b3ad-491a-a9d5-26eeceaa6be2"
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
/// import com.pulumi.azurenative.sql.VirtualCluster;
/// import com.pulumi.azurenative.sql.VirtualClusterArgs;
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
///         var virtualCluster = new VirtualCluster("virtualCluster", VirtualClusterArgs.builder()
///             .location("japaneast")
///             .resourceGroupName("testrg")
///             .tags(Map.of("key", "value"))
///             .virtualClusterName("vc-subnet1-f769ed71-b3ad-491a-a9d5-26eeceaa6be2")
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
/// const virtualCluster = new azure_native.sql.VirtualCluster("virtualCluster", {
///     location: "japaneast",
///     resourceGroupName: "testrg",
///     tags: {
///         key: "value",
///     },
///     virtualClusterName: "vc-subnet1-f769ed71-b3ad-491a-a9d5-26eeceaa6be2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_cluster = azure_native.sql.VirtualCluster("virtualCluster",
///     location="japaneast",
///     resource_group_name="testrg",
///     tags={
///         "key": "value",
///     },
///     virtual_cluster_name="vc-subnet1-f769ed71-b3ad-491a-a9d5-26eeceaa6be2")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualCluster:
///     type: azure-native:sql:VirtualCluster
///     properties:
///       location: japaneast
///       resourceGroupName: testrg
///       tags:
///         key: value
///       virtualClusterName: vc-subnet1-f769ed71-b3ad-491a-a9d5-26eeceaa6be2
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
/// $ pulumi import azure-native:sql:VirtualCluster vc-f769ed71-b3ad-491a-a9d5-26eeceaa6be2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/virtualClusters/{virtualClusterName}
/// ```
class VirtualCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of resources in this virtual cluster.
  late final pulumi.Output<List<String>> childResources_;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Subnet resource ID for the virtual cluster.
  late final pulumi.Output<String> subnetId;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Virtual cluster version.
  late final pulumi.Output<String?> version;

  /// Creates a new [VirtualCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualCluster]. {@macro pulumi_sql_virtual_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualCluster(
    String name, {
    VirtualClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:VirtualCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    childResources_ = registerOutput<List<String>>('childResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }

  /// Creates a typed reference to an existing [VirtualCluster] resource.
  VirtualCluster.reference(String urn)
    : super(
        'azure-native:sql:VirtualCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    childResources_ = registerOutput<List<String>>('childResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
