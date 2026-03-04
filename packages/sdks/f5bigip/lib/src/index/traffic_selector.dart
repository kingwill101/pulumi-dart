import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_selector_args.dart';
import 'traffic_selector_state.dart';

/// `f5bigip.TrafficSelector` Manage IPSec Traffic Selectors on BIG-IP
///
/// Resources should be named with their "full path". The full path is the combination of the partition + name (example: /Common/test-selector)
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_selector = new f5bigip.TrafficSelector("test-selector", {
///     name: "/Common/test-selector",
///     destinationAddress: "3.10.11.2/32",
///     sourceAddress: "2.10.11.12/32",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_selector = f5bigip.TrafficSelector("test-selector",
///     name="/Common/test-selector",
///     destination_address="3.10.11.2/32",
///     source_address="2.10.11.12/32")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_selector = new F5BigIP.TrafficSelector("test-selector", new()
///     {
///         Name = "/Common/test-selector",
///         DestinationAddress = "3.10.11.2/32",
///         SourceAddress = "2.10.11.12/32",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewTrafficSelector(ctx, "test-selector", &f5bigip.TrafficSelectorArgs{
/// 			Name:               pulumi.String("/Common/test-selector"),
/// 			DestinationAddress: pulumi.String("3.10.11.2/32"),
/// 			SourceAddress:      pulumi.String("2.10.11.12/32"),
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
/// import com.pulumi.f5bigip.TrafficSelector;
/// import com.pulumi.f5bigip.TrafficSelectorArgs;
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
///         var test_selector = new TrafficSelector("test-selector", TrafficSelectorArgs.builder()
///             .name("/Common/test-selector")
///             .destinationAddress("3.10.11.2/32")
///             .sourceAddress("2.10.11.12/32")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-selector:
///     type: f5bigip:TrafficSelector
///     properties:
///       name: /Common/test-selector
///       destinationAddress: 3.10.11.2/32
///       sourceAddress: 2.10.11.12/32
/// ```
class TrafficSelector extends pulumi.CustomResource {
  /// Description of the traffic selector.
  late final pulumi.Output<String> description;

  /// Specifies the host or network IP address to which the application traffic is destined.When creating a new traffic selector, this parameter is required.
  late final pulumi.Output<String> destinationAddress;

  /// Specifies the IP port used by the application. The default value is `All Ports (0)`
  late final pulumi.Output<int> destinationPort;

  /// Specifies whether the traffic selector applies to inbound or outbound traffic, or both. The default value is `Both`.
  late final pulumi.Output<String> direction;

  /// Specifies the network protocol to use for this traffic. The default value is `All Protocols (255)`
  late final pulumi.Output<int> ipProtocol;

  /// Specifies the IPsec policy that tells the BIG-IP system how to handle the packets.When creating a new traffic selector, if this parameter is not specified, the default is `default-ipsec-policy`.
  late final pulumi.Output<String> ipsecPolicy;

  /// Name of the IPSec traffic-selector,it should be "full path".The full path is the combination of the partition + name of the IPSec traffic-selector.(For example `/Common/test-selector`)
  late final pulumi.Output<String> name;

  /// Specifies the order in which traffic is matched, if traffic can be matched to multiple traffic selectors.Traffic is matched to the traffic selector with the highest priority (lowest order number).
  /// When creating a new traffic selector, if this parameter is not specified, the default is `last`
  late final pulumi.Output<int> order;

  /// Specifies the host or network IP address from which the application traffic originates.When creating a new traffic selector, this parameter is required.
  late final pulumi.Output<String> sourceAddress;

  /// Specifies the IP port used by the application. The default value is `All Ports (0)`.
  late final pulumi.Output<int> sourcePort;

  /// Creates a new [TrafficSelector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficSelector]. {@macro pulumi_index_traffic_selector_traffic_selector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficSelector(
    String name, {
    TrafficSelectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/trafficSelector:TrafficSelector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    destinationAddress = registerOutput<String>('destinationAddress');
    destinationPort = registerOutput<int>('destinationPort');
    direction = registerOutput<String>('direction');
    ipProtocol = registerOutput<int>('ipProtocol');
    ipsecPolicy = registerOutput<String>('ipsecPolicy');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    sourceAddress = registerOutput<String>('sourceAddress');
    sourcePort = registerOutput<int>('sourcePort');
  }

  /// Gets an existing [TrafficSelector] resource's state with the given [name] and [id].
  static TrafficSelector get(
    String name,
    pulumi.Input<String> id, {
    TrafficSelectorState? state,
  }) {
    return TrafficSelector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficSelector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/trafficSelector:TrafficSelector',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    destinationAddress = registerOutput<String>('destinationAddress');
    destinationPort = registerOutput<int>('destinationPort');
    direction = registerOutput<String>('direction');
    ipProtocol = registerOutput<int>('ipProtocol');
    ipsecPolicy = registerOutput<String>('ipsecPolicy');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    sourceAddress = registerOutput<String>('sourceAddress');
    sourcePort = registerOutput<int>('sourcePort');
  }
}
