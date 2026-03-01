import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_profile_args.dart';
import 'network_security_perimeter_profile_state.dart';

/// Manages a Network Security Perimeter Profile.
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
/// const exampleNetworkSecurityPerimeterProfile = new azure.network.NetworkSecurityPerimeterProfile("example", {
///     name: "example",
///     networkSecurityPerimeterId: exampleNetworkSecurityPerimeter.id,
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
/// example_network_security_perimeter_profile = azure.network.NetworkSecurityPerimeterProfile("example",
///     name="example",
///     network_security_perimeter_id=example_network_security_perimeter.id)
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
///     var exampleNetworkSecurityPerimeterProfile = new Azure.Network.NetworkSecurityPerimeterProfile("example", new()
///     {
///         Name = "example",
///         NetworkSecurityPerimeterId = exampleNetworkSecurityPerimeter.Id,
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
/// 		exampleNetworkSecurityPerimeter, err := network.NewNetworkSecurityPerimeter(ctx, "example", &network.NetworkSecurityPerimeterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityPerimeterProfile(ctx, "example", &network.NetworkSecurityPerimeterProfileArgs{
/// 			Name:                       pulumi.String("example"),
/// 			NetworkSecurityPerimeterId: exampleNetworkSecurityPerimeter.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.network.NetworkSecurityPerimeterProfile;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterProfileArgs;
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
///         var exampleNetworkSecurityPerimeterProfile = new NetworkSecurityPerimeterProfile("exampleNetworkSecurityPerimeterProfile", NetworkSecurityPerimeterProfileArgs.builder()
///             .name("example")
///             .networkSecurityPerimeterId(exampleNetworkSecurityPerimeter.id())
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
///   exampleNetworkSecurityPerimeterProfile:
///     type: azure:network:NetworkSecurityPerimeterProfile
///     name: example
///     properties:
///       name: example
///       networkSecurityPerimeterId: ${exampleNetworkSecurityPerimeter.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Security Perimeter Profiles can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkSecurityPerimeterProfile:NetworkSecurityPerimeterProfile example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/networkSecurityPerimeters/example-nsp/profiles/defaultProfile
/// ```
class NetworkSecurityPerimeterProfile extends pulumi.CustomResource {
  /// The name which should be used for this Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Profile to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Network Security Perimeter within this Profile is created. Changing this forces a new Network Security Perimeter Profile to be created.
  late final pulumi.Output<String> networkSecurityPerimeterId;

  /// Creates a new [NetworkSecurityPerimeterProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeterProfile]. {@macro pulumi_network_network_security_perimeter_profile_network_security_perimeter_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeterProfile(
    String name, {
    NetworkSecurityPerimeterProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeterProfile:NetworkSecurityPerimeterProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.networkSecurityPerimeterId = registerOutput<String>('networkSecurityPerimeterId');
  }

  /// Gets an existing [NetworkSecurityPerimeterProfile] resource's state with the given [name] and [id].
  static NetworkSecurityPerimeterProfile get(
    String name,
    pulumi.Input<String> id, {
    NetworkSecurityPerimeterProfileState? state,
  }) {
    return NetworkSecurityPerimeterProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSecurityPerimeterProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeterProfile:NetworkSecurityPerimeterProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.networkSecurityPerimeterId = registerOutput<String>('networkSecurityPerimeterId');
  }
}
