import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_resource_properties_response.dart';

/// This type describes a network resource.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateNetwork
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new AzureNative.ServiceFabricMesh.Network("network", new()
///     {
///         Location = "EastUS",
///         NetworkResourceName = "sampleNetwork",
///         Properties = null,
///         ResourceGroupName = "sbz_demo",
///         Tags = null,
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
/// 	servicefabricmesh "github.com/pulumi/pulumi-azure-native-sdk/servicefabricmesh/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabricmesh.NewNetwork(ctx, "network", &servicefabricmesh.NetworkArgs{
/// 			Location:            pulumi.String("EastUS"),
/// 			NetworkResourceName: pulumi.String("sampleNetwork"),
/// 			Properties:          &servicefabricmesh.NetworkResourcePropertiesArgs{},
/// 			ResourceGroupName:   pulumi.String("sbz_demo"),
/// 			Tags:                pulumi.StringMap{},
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
/// import com.pulumi.azurenative.servicefabricmesh.Network;
/// import com.pulumi.azurenative.servicefabricmesh.NetworkArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.NetworkResourcePropertiesArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .location("EastUS")
///             .networkResourceName("sampleNetwork")
///             .properties(NetworkResourcePropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("sbz_demo")
///             .tags(Map.ofEntries(
///             ))
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
/// const network = new azure_native.servicefabricmesh.Network("network", {
///     location: "EastUS",
///     networkResourceName: "sampleNetwork",
///     properties: {},
///     resourceGroupName: "sbz_demo",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network = azure_native.servicefabricmesh.Network("network",
///     location="EastUS",
///     network_resource_name="sampleNetwork",
///     properties={},
///     resource_group_name="sbz_demo",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   network:
///     type: azure-native:servicefabricmesh:Network
///     properties:
///       location: EastUS
///       networkResourceName: sampleNetwork
///       properties: {}
///       resourceGroupName: sbz_demo
///       tags: {}
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
/// $ pulumi import azure-native:servicefabricmesh:Network sampleNetwork /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabricMesh/networks/{networkResourceName}
/// ```
class Network extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Describes properties of a network resource.
  late final pulumi.Output<NetworkResourcePropertiesResponse> properties;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_servicefabricmesh_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicefabricmesh:Network',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NetworkResourcePropertiesResponse>(
      'properties',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
