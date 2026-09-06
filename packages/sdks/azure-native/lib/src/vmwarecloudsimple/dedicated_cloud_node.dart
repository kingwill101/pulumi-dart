import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_cloud_node_args.dart';
import 'dedicated_cloud_node_properties_response.dart';
import 'sku_response.dart';

/// Dedicated cloud node model
///
/// Uses Azure REST API version 2019-04-01. In version 2.x of the Azure Native provider, it used API version 2019-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateDedicatedCloudNode
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedCloudNode = new AzureNative.VMwareCloudSimple.DedicatedCloudNode("dedicatedCloudNode", new()
///     {
///         AvailabilityZoneId = "az1",
///         DedicatedCloudNodeName = "myNode",
///         Id = "general",
///         Location = "westus",
///         Name = "CS28-Node",
///         NodesCount = 1,
///         PlacementGroupId = "n1",
///         PurchaseId = "56acbd46-3d36-4bbf-9b08-57c30fdf6932",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.VMwareCloudSimple.Inputs.SkuArgs
///         {
///             Name = "VMware_CloudSimple_CS28",
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
/// 	vmwarecloudsimple "github.com/pulumi/pulumi-azure-native-sdk/vmwarecloudsimple/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwarecloudsimple.NewDedicatedCloudNode(ctx, "dedicatedCloudNode", &vmwarecloudsimple.DedicatedCloudNodeArgs{
/// 			AvailabilityZoneId:     pulumi.String("az1"),
/// 			DedicatedCloudNodeName: pulumi.String("myNode"),
/// 			Id:                     pulumi.String("general"),
/// 			Location:               pulumi.String("westus"),
/// 			Name:                   pulumi.String("CS28-Node"),
/// 			NodesCount:             pulumi.Int(1),
/// 			PlacementGroupId:       pulumi.String("n1"),
/// 			PurchaseId:             pulumi.String("56acbd46-3d36-4bbf-9b08-57c30fdf6932"),
/// 			ResourceGroupName:      pulumi.String("myResourceGroup"),
/// 			Sku: &vmwarecloudsimple.SkuArgs{
/// 				Name: pulumi.String("VMware_CloudSimple_CS28"),
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
/// resource "azure-native_vmwarecloudsimple_dedicatedcloudnode" "dedicatedCloudNode" {
///   availability_zone_id      = "az1"
///   dedicated_cloud_node_name = "myNode"
///   id                        = "general"
///   location                  = "westus"
///   name                      = "CS28-Node"
///   nodes_count               = 1
///   placement_group_id        = "n1"
///   purchase_id               = "56acbd46-3d36-4bbf-9b08-57c30fdf6932"
///   resource_group_name       = "myResourceGroup"
///   sku = {
///     name = "VMware_CloudSimple_CS28"
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
/// import com.pulumi.azurenative.vmwarecloudsimple.DedicatedCloudNode;
/// import com.pulumi.azurenative.vmwarecloudsimple.DedicatedCloudNodeArgs;
/// import com.pulumi.azurenative.vmwarecloudsimple.inputs.SkuArgs;
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
///         var dedicatedCloudNode = new DedicatedCloudNode("dedicatedCloudNode", DedicatedCloudNodeArgs.builder()
///             .availabilityZoneId("az1")
///             .dedicatedCloudNodeName("myNode")
///             .id("general")
///             .location("westus")
///             .name("CS28-Node")
///             .nodesCount(1)
///             .placementGroupId("n1")
///             .purchaseId("56acbd46-3d36-4bbf-9b08-57c30fdf6932")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("VMware_CloudSimple_CS28")
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
/// const dedicatedCloudNode = new azure_native.vmwarecloudsimple.DedicatedCloudNode("dedicatedCloudNode", {
///     availabilityZoneId: "az1",
///     dedicatedCloudNodeName: "myNode",
///     id: "general",
///     location: "westus",
///     name: "CS28-Node",
///     nodesCount: 1,
///     placementGroupId: "n1",
///     purchaseId: "56acbd46-3d36-4bbf-9b08-57c30fdf6932",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "VMware_CloudSimple_CS28",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_cloud_node = azure_native.vmwarecloudsimple.DedicatedCloudNode("dedicatedCloudNode",
///     availability_zone_id="az1",
///     dedicated_cloud_node_name="myNode",
///     id="general",
///     location="westus",
///     name="CS28-Node",
///     nodes_count=1,
///     placement_group_id="n1",
///     purchase_id="56acbd46-3d36-4bbf-9b08-57c30fdf6932",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "VMware_CloudSimple_CS28",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedCloudNode:
///     type: azure-native:vmwarecloudsimple:DedicatedCloudNode
///     properties:
///       availabilityZoneId: az1
///       dedicatedCloudNodeName: myNode
///       id: general
///       location: westus
///       name: CS28-Node
///       nodesCount: 1
///       placementGroupId: n1
///       purchaseId: 56acbd46-3d36-4bbf-9b08-57c30fdf6932
///       resourceGroupName: myResourceGroup
///       sku:
///         name: VMware_CloudSimple_CS28
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
/// $ pulumi import azure-native:vmwarecloudsimple:DedicatedCloudNode myNode /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudNodes/{dedicatedCloudNodeName}
/// ```
class DedicatedCloudNode extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure region
  late final pulumi.Output<String> location;
  /// {dedicatedCloudNodeName}
  late final pulumi.Output<String> name;
  /// Dedicated Cloud Nodes properties
  late final pulumi.Output<DedicatedCloudNodePropertiesResponse> properties;
  /// Dedicated Cloud Nodes SKU
  late final pulumi.Output<SkuResponse?> sku;
  /// Dedicated Cloud Nodes tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// {resourceProviderNamespace}/{resourceType}
  late final pulumi.Output<String> type;

  /// Creates a new [DedicatedCloudNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedCloudNode]. {@macro pulumi_vmwarecloudsimple_dedicated_cloud_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedCloudNode(
    String name, {
    DedicatedCloudNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:vmwarecloudsimple:DedicatedCloudNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DedicatedCloudNodePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedCloudNodePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DedicatedCloudNode] resource.
  DedicatedCloudNode.reference(String urn)
    : super(
        'azure-native:vmwarecloudsimple:DedicatedCloudNode',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DedicatedCloudNodePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedCloudNodePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
