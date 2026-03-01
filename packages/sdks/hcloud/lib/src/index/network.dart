import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_state.dart';

/// Provides a Hetzner Cloud Network to represent a Network in the Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const privNet = new hcloud.Network("privNet", {
///     name: "my-net",
///     ipRange: "10.0.1.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// priv_net = hcloud.Network("privNet",
///     name="my-net",
///     ip_range="10.0.1.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privNet = new HCloud.Network("privNet", new()
///     {
///         Name = "my-net",
///         IpRange = "10.0.1.0/24",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.NewNetwork(ctx, "privNet", &hcloud.NetworkArgs{
/// 			Name:    pulumi.String("my-net"),
/// 			IpRange: pulumi.String("10.0.1.0/24"),
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
/// import com.pulumi.hcloud.Network;
/// import com.pulumi.hcloud.NetworkArgs;
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
///         var privNet = new Network("privNet", NetworkArgs.builder()
///             .name("my-net")
///             .ipRange("10.0.1.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   privNet:
///     type: hcloud:Network
///     properties:
///       name: my-net
///       ipRange: 10.0.1.0/24
/// ```
///
///
/// ## Import
///
/// Networks can be imported using its `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/network:Network example "$NETWORK_ID"
/// ```
class Network extends pulumi.CustomResource {
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  late final pulumi.Output<bool?> deleteProtection;
  /// Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  late final pulumi.Output<bool?> exposeRoutesToVswitch;
  /// IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918.
  late final pulumi.Output<String> ipRange;
  /// User-defined labels (key-value pairs) should be created with.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the Network to create (must be unique per project).
  late final pulumi.Output<String> name;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_index_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.exposeRoutesToVswitch = registerOutput<bool?>('exposeRoutesToVswitch');
    this.ipRange = registerOutput<String>('ipRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/network:Network',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.exposeRoutesToVswitch = registerOutput<bool?>('exposeRoutesToVswitch');
    this.ipRange = registerOutput<String>('ipRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
  }
}
