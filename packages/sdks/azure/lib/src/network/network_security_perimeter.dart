import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_args.dart';
import 'network_security_perimeter_state.dart';

/// Manages a Network Security Perimeter.
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
/// const exampleNetworkSecurityPerimeter = new azure.network.NetworkSecurityPerimeter("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: "West Europe",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_network_security_perimeter = azure.network.NetworkSecurityPerimeter("example",
///     name="example",
///     resource_group_name=example.name,
///     location="West Europe")
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
///     var exampleNetworkSecurityPerimeter = new Azure.Network.NetworkSecurityPerimeter("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		_, err = network.NewNetworkSecurityPerimeter(ctx, "example", &network.NetworkSecurityPerimeterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
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
/// resource "azure_network_networksecurityperimeter" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = "West Europe"
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
/// import com.pulumi.azure.network.NetworkSecurityPerimeter;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterArgs;
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
///         var exampleNetworkSecurityPerimeter = new NetworkSecurityPerimeter("exampleNetworkSecurityPerimeter", NetworkSecurityPerimeterArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location("West Europe")
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
///   exampleNetworkSecurityPerimeter:
///     type: azure:network:NetworkSecurityPerimeter
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: West Europe
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Security Perimeters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkSecurityPerimeter:NetworkSecurityPerimeter example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/networkSecurityPerimeters/example-nsp
/// ```
class NetworkSecurityPerimeter extends pulumi.CustomResource {
  /// The Azure Region where the Network Security Perimeter should exist. Changing this forces a new Network Security Perimeter to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Network Security Perimeter. Changing this forces a new Network Security Perimeter to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Network Security Perimeter should exist.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Network Security Perimeter.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NetworkSecurityPerimeter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeter]. {@macro pulumi_network_network_security_perimeter_network_security_perimeter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeter(
    String name, {
    NetworkSecurityPerimeterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeter:NetworkSecurityPerimeter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NetworkSecurityPerimeter] resource's state with the given [name] and [id].
  static NetworkSecurityPerimeter get(
    String name,
    pulumi.Input<String> id, {
    NetworkSecurityPerimeterState? state,
  }) {
    return NetworkSecurityPerimeter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSecurityPerimeter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeter:NetworkSecurityPerimeter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
