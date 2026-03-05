import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_port_authorization_args.dart';
import 'express_route_port_authorization_state.dart';

/// Manages an ExpressRoute Port Authorization.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exprtTest",
///     location: "West Europe",
/// });
/// const exampleExpressRoutePort = new azure.network.ExpressRoutePort("example", {
///     name: "port1",
///     resourceGroupName: example.name,
///     location: example.location,
///     peeringLocation: "Airtel-Chennai-CLS",
///     bandwidthInGbps: 10,
///     encapsulation: "Dot1Q",
/// });
/// const exampleExpressRoutePortAuthorization = new azure.network.ExpressRoutePortAuthorization("example", {
///     name: "exampleERCAuth",
///     expressRoutePortName: exampleExpressRoutePort.name,
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="exprtTest",
///     location="West Europe")
/// example_express_route_port = azure.network.ExpressRoutePort("example",
///     name="port1",
///     resource_group_name=example.name,
///     location=example.location,
///     peering_location="Airtel-Chennai-CLS",
///     bandwidth_in_gbps=10,
///     encapsulation="Dot1Q")
/// example_express_route_port_authorization = azure.network.ExpressRoutePortAuthorization("example",
///     name="exampleERCAuth",
///     express_route_port_name=example_express_route_port.name,
///     resource_group_name=example.name)
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
///         Name = "exprtTest",
///         Location = "West Europe",
///     });
///
///     var exampleExpressRoutePort = new Azure.Network.ExpressRoutePort("example", new()
///     {
///         Name = "port1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PeeringLocation = "Airtel-Chennai-CLS",
///         BandwidthInGbps = 10,
///         Encapsulation = "Dot1Q",
///     });
///
///     var exampleExpressRoutePortAuthorization = new Azure.Network.ExpressRoutePortAuthorization("example", new()
///     {
///         Name = "exampleERCAuth",
///         ExpressRoutePortName = exampleExpressRoutePort.Name,
///         ResourceGroupName = example.Name,
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
/// 			Name:     pulumi.String("exprtTest"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRoutePort, err := network.NewExpressRoutePort(ctx, "example", &network.ExpressRoutePortArgs{
/// 			Name:              pulumi.String("port1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			PeeringLocation:   pulumi.String("Airtel-Chennai-CLS"),
/// 			BandwidthInGbps:   pulumi.Int(10),
/// 			Encapsulation:     pulumi.String("Dot1Q"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRoutePortAuthorization(ctx, "example", &network.ExpressRoutePortAuthorizationArgs{
/// 			Name:                 pulumi.String("exampleERCAuth"),
/// 			ExpressRoutePortName: exampleExpressRoutePort.Name,
/// 			ResourceGroupName:    example.Name,
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
/// import com.pulumi.azure.network.ExpressRoutePort;
/// import com.pulumi.azure.network.ExpressRoutePortArgs;
/// import com.pulumi.azure.network.ExpressRoutePortAuthorization;
/// import com.pulumi.azure.network.ExpressRoutePortAuthorizationArgs;
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
///             .name("exprtTest")
///             .location("West Europe")
///             .build());
///
///         var exampleExpressRoutePort = new ExpressRoutePort("exampleExpressRoutePort", ExpressRoutePortArgs.builder()
///             .name("port1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .peeringLocation("Airtel-Chennai-CLS")
///             .bandwidthInGbps(10)
///             .encapsulation("Dot1Q")
///             .build());
///
///         var exampleExpressRoutePortAuthorization = new ExpressRoutePortAuthorization("exampleExpressRoutePortAuthorization", ExpressRoutePortAuthorizationArgs.builder()
///             .name("exampleERCAuth")
///             .expressRoutePortName(exampleExpressRoutePort.name())
///             .resourceGroupName(example.name())
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
///       name: exprtTest
///       location: West Europe
///   exampleExpressRoutePort:
///     type: azure:network:ExpressRoutePort
///     name: example
///     properties:
///       name: port1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       peeringLocation: Airtel-Chennai-CLS
///       bandwidthInGbps: 10
///       encapsulation: Dot1Q
///   exampleExpressRoutePortAuthorization:
///     type: azure:network:ExpressRoutePortAuthorization
///     name: example
///     properties:
///       name: exampleERCAuth
///       expressRoutePortName: ${exampleExpressRoutePort.name}
///       resourceGroupName: ${example.name}
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
/// ExpressRoute Port Authorizations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRoutePortAuthorization:ExpressRoutePortAuthorization auth1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/expressRoutePorts/myExpressPort/authorizations/auth1
/// ```
class ExpressRoutePortAuthorization extends pulumi.CustomResource {
  /// The Authorization Key.
  late final pulumi.Output<String> authorizationKey;
  /// The authorization use status.
  late final pulumi.Output<String> authorizationUseStatus;
  /// The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created.
  late final pulumi.Output<String> expressRoutePortName;
  /// The name of the ExpressRoute Port. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the ExpressRoute Port. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ExpressRoutePortAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRoutePortAuthorization]. {@macro pulumi_network_express_route_port_authorization_express_route_port_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRoutePortAuthorization(
    String name, {
    ExpressRoutePortAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRoutePortAuthorization:ExpressRoutePortAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationKey = registerOutput<String>('authorizationKey');
    authorizationUseStatus = registerOutput<String>('authorizationUseStatus');
    expressRoutePortName = registerOutput<String>('expressRoutePortName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ExpressRoutePortAuthorization] resource's state with the given [name] and [id].
  static ExpressRoutePortAuthorization get(
    String name,
    pulumi.Input<String> id, {
    ExpressRoutePortAuthorizationState? state,
  }) {
    return ExpressRoutePortAuthorization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRoutePortAuthorization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRoutePortAuthorization:ExpressRoutePortAuthorization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationKey = registerOutput<String>('authorizationKey');
    authorizationUseStatus = registerOutput<String>('authorizationUseStatus');
    expressRoutePortName = registerOutput<String>('expressRoutePortName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
