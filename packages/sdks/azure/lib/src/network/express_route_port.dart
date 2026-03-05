import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_port_args.dart';
import 'express_route_port_identity.dart';
import 'express_route_port_link1.dart';
import 'express_route_port_link2.dart';
import 'express_route_port_state.dart';

/// Manages a Express Route Port.
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
///     location: "West US",
/// });
/// const exampleExpressRoutePort = new azure.network.ExpressRoutePort("example", {
///     name: "port1",
///     resourceGroupName: example.name,
///     location: example.location,
///     peeringLocation: "Airtel-Chennai-CLS",
///     bandwidthInGbps: 10,
///     encapsulation: "Dot1Q",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West US")
/// example_express_route_port = azure.network.ExpressRoutePort("example",
///     name="port1",
///     resource_group_name=example.name,
///     location=example.location,
///     peering_location="Airtel-Chennai-CLS",
///     bandwidth_in_gbps=10,
///     encapsulation="Dot1Q")
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
///         Location = "West US",
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
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRoutePort(ctx, "example", &network.ExpressRoutePortArgs{
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
///             .location("West US")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West US
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
/// Express Route Ports can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRoutePort:ExpressRoutePort example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/expressRoutePorts/port1
/// ```
class ExpressRoutePort extends pulumi.CustomResource {
  /// Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created.
  late final pulumi.Output<int> bandwidthInGbps;

  /// The billing type of the Express Route Port. Possible values are `MeteredData` and `UnlimitedData`. Defaults to `MeteredData`.
  late final pulumi.Output<String?> billingType;

  /// The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: `Dot1Q`, `QinQ`.
  late final pulumi.Output<String> encapsulation;

  /// The EtherType of the Express Route Port.
  late final pulumi.Output<String> ethertype;

  /// The resource GUID of the Express Route Port.
  late final pulumi.Output<String> guid;

  /// An `identity` block as defined below.
  late final pulumi.Output<ExpressRoutePortIdentity?> identity;

  /// A list of `link` blocks as defined below.
  late final pulumi.Output<ExpressRoutePortLink1> link1;

  /// A list of `link` blocks as defined below.
  late final pulumi.Output<ExpressRoutePortLink2> link2;

  /// The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created.
  late final pulumi.Output<String> location;

  /// The maximum transmission unit of the Express Route Port.
  late final pulumi.Output<String> mtu;

  /// The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created.
  late final pulumi.Output<String> name;

  /// The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created.
  late final pulumi.Output<String> peeringLocation;

  /// The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Express Route Port.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ExpressRoutePort].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRoutePort]. {@macro pulumi_network_express_route_port_express_route_port_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRoutePort(
    String name, {
    ExpressRoutePortArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/expressRoutePort:ExpressRoutePort',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidthInGbps = registerOutput<int>('bandwidthInGbps');
    billingType = registerOutput<String?>('billingType');
    encapsulation = registerOutput<String>('encapsulation');
    ethertype = registerOutput<String>('ethertype');
    guid = registerOutput<String>('guid');
    identity = registerOutput<ExpressRoutePortIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressRoutePortIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    link1 = registerOutput<ExpressRoutePortLink1>(
      'link1',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressRoutePortLink1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    link2 = registerOutput<ExpressRoutePortLink2>(
      'link2',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressRoutePortLink2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    mtu = registerOutput<String>('mtu');
    this.name = registerOutput<String>('name');
    peeringLocation = registerOutput<String>('peeringLocation');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ExpressRoutePort] resource's state with the given [name] and [id].
  static ExpressRoutePort get(
    String name,
    pulumi.Input<String> id, {
    ExpressRoutePortState? state,
  }) {
    return ExpressRoutePort._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRoutePort._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/expressRoutePort:ExpressRoutePort',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidthInGbps = registerOutput<int>('bandwidthInGbps');
    billingType = registerOutput<String?>('billingType');
    encapsulation = registerOutput<String>('encapsulation');
    ethertype = registerOutput<String>('ethertype');
    guid = registerOutput<String>('guid');
    identity = registerOutput<ExpressRoutePortIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressRoutePortIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    link1 = registerOutput<ExpressRoutePortLink1>(
      'link1',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressRoutePortLink1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    link2 = registerOutput<ExpressRoutePortLink2>(
      'link2',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressRoutePortLink2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    mtu = registerOutput<String>('mtu');
    this.name = registerOutput<String>('name');
    peeringLocation = registerOutput<String>('peeringLocation');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
