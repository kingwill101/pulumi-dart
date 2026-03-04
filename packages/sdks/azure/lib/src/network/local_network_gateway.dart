import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_network_gateway_args.dart';
import 'local_network_gateway_bgp_settings.dart';
import 'local_network_gateway_state.dart';

/// Manages a local network gateway connection over which specific connections can be configured.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "localNetworkGWTest",
///     location: "West Europe",
/// });
/// const home = new azure.network.LocalNetworkGateway("home", {
///     name: "backHome",
///     resourceGroupName: example.name,
///     location: example.location,
///     gatewayAddress: "12.13.14.15",
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="localNetworkGWTest",
///     location="West Europe")
/// home = azure.network.LocalNetworkGateway("home",
///     name="backHome",
///     resource_group_name=example.name,
///     location=example.location,
///     gateway_address="12.13.14.15",
///     address_spaces=["10.0.0.0/16"])
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
///         Name = "localNetworkGWTest",
///         Location = "West Europe",
///     });
///
///     var home = new Azure.Network.LocalNetworkGateway("home", new()
///     {
///         Name = "backHome",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         GatewayAddress = "12.13.14.15",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("localNetworkGWTest"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewLocalNetworkGateway(ctx, "home", &network.LocalNetworkGatewayArgs{
/// 			Name:              pulumi.String("backHome"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			GatewayAddress:    pulumi.String("12.13.14.15"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
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
/// import com.pulumi.azure.network.LocalNetworkGateway;
/// import com.pulumi.azure.network.LocalNetworkGatewayArgs;
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
///             .name("localNetworkGWTest")
///             .location("West Europe")
///             .build());
///
///         var home = new LocalNetworkGateway("home", LocalNetworkGatewayArgs.builder()
///             .name("backHome")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .gatewayAddress("12.13.14.15")
///             .addressSpaces("10.0.0.0/16")
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
///       name: localNetworkGWTest
///       location: West Europe
///   home:
///     type: azure:network:LocalNetworkGateway
///     properties:
///       name: backHome
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       gatewayAddress: 12.13.14.15
///       addressSpaces:
///         - 10.0.0.0/16
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
/// Local Network Gateways can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/localNetworkGateway:LocalNetworkGateway lng1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/localNetworkGateways/lng1
/// ```
class LocalNetworkGateway extends pulumi.CustomResource {
  /// The list of string CIDRs representing the address spaces the gateway exposes.
  late final pulumi.Output<List<String>?> addressSpaces;

  /// A `bgp_settings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  late final pulumi.Output<LocalNetworkGatewayBgpSettings?> bgpSettings;

  /// The gateway IP address to connect with.
  late final pulumi.Output<String?> gatewayAddress;

  /// The gateway FQDN to connect with.
  ///
  /// &gt; **Note:** Either `gateway_address` or `gateway_fqdn` should be specified.
  late final pulumi.Output<String?> gatewayFqdn;

  /// The location/region where the local network gateway is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the local network gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [LocalNetworkGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalNetworkGateway]. {@macro pulumi_network_local_network_gateway_local_network_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalNetworkGateway(
    String name, {
    LocalNetworkGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/localNetworkGateway:LocalNetworkGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressSpaces = registerOutput<List<String>?>('addressSpaces');
    bgpSettings = registerOutput<LocalNetworkGatewayBgpSettings?>(
      'bgpSettings',
    );
    gatewayAddress = registerOutput<String?>('gatewayAddress');
    gatewayFqdn = registerOutput<String?>('gatewayFqdn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [LocalNetworkGateway] resource's state with the given [name] and [id].
  static LocalNetworkGateway get(
    String name,
    pulumi.Input<String> id, {
    LocalNetworkGatewayState? state,
  }) {
    return LocalNetworkGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocalNetworkGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/localNetworkGateway:LocalNetworkGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressSpaces = registerOutput<List<String>?>('addressSpaces');
    bgpSettings = registerOutput<LocalNetworkGatewayBgpSettings?>(
      'bgpSettings',
    );
    gatewayAddress = registerOutput<String?>('gatewayAddress');
    gatewayFqdn = registerOutput<String?>('gatewayFqdn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
