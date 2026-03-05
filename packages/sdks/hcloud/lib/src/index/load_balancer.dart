import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_algorithm.dart';
import 'load_balancer_args.dart';
import 'load_balancer_state.dart';

/// Provides a Hetzner Cloud Load Balancer to represent a Load Balancer in the Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const myServer = new hcloud.Server("my_server", {
///     name: "server-%d",
///     serverType: "cx23",
///     image: "ubuntu-24.04",
/// });
/// const loadBalancer = new hcloud.LoadBalancer("load_balancer", {
///     name: "my-load-balancer",
///     loadBalancerType: "lb11",
///     location: "nbg1",
/// });
/// const loadBalancerTarget = new hcloud.LoadBalancerTarget("load_balancer_target", {
///     type: "server",
///     loadBalancerId: loadBalancer.id,
///     serverId: myServer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// my_server = hcloud.Server("my_server",
///     name="server-%d",
///     server_type="cx23",
///     image="ubuntu-24.04")
/// load_balancer = hcloud.LoadBalancer("load_balancer",
///     name="my-load-balancer",
///     load_balancer_type="lb11",
///     location="nbg1")
/// load_balancer_target = hcloud.LoadBalancerTarget("load_balancer_target",
///     type="server",
///     load_balancer_id=load_balancer.id,
///     server_id=my_server.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myServer = new HCloud.Server("my_server", new()
///     {
///         Name = "server-%d",
///         ServerType = "cx23",
///         Image = "ubuntu-24.04",
///     });
///
///     var loadBalancer = new HCloud.LoadBalancer("load_balancer", new()
///     {
///         Name = "my-load-balancer",
///         LoadBalancerType = "lb11",
///         Location = "nbg1",
///     });
///
///     var loadBalancerTarget = new HCloud.LoadBalancerTarget("load_balancer_target", new()
///     {
///         Type = "server",
///         LoadBalancerId = loadBalancer.Id,
///         ServerId = myServer.Id,
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
/// 		myServer, err := hcloud.NewServer(ctx, "my_server", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("server-%d"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		loadBalancer, err := hcloud.NewLoadBalancer(ctx, "load_balancer", &hcloud.LoadBalancerArgs{
/// 			Name:             pulumi.String("my-load-balancer"),
/// 			LoadBalancerType: pulumi.String("lb11"),
/// 			Location:         pulumi.String("nbg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewLoadBalancerTarget(ctx, "load_balancer_target", &hcloud.LoadBalancerTargetArgs{
/// 			Type:           pulumi.String("server"),
/// 			LoadBalancerId: loadBalancer.ID(),
/// 			ServerId:       myServer.ID(),
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.LoadBalancer;
/// import com.pulumi.hcloud.LoadBalancerArgs;
/// import com.pulumi.hcloud.LoadBalancerTarget;
/// import com.pulumi.hcloud.LoadBalancerTargetArgs;
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
///         var myServer = new Server("myServer", ServerArgs.builder()
///             .name("server-%d")
///             .serverType("cx23")
///             .image("ubuntu-24.04")
///             .build());
///
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .name("my-load-balancer")
///             .loadBalancerType("lb11")
///             .location("nbg1")
///             .build());
///
///         var loadBalancerTarget = new LoadBalancerTarget("loadBalancerTarget", LoadBalancerTargetArgs.builder()
///             .type("server")
///             .loadBalancerId(loadBalancer.id())
///             .serverId(myServer.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myServer:
///     type: hcloud:Server
///     name: my_server
///     properties:
///       name: server-%d
///       serverType: cx23
///       image: ubuntu-24.04
///   loadBalancer:
///     type: hcloud:LoadBalancer
///     name: load_balancer
///     properties:
///       name: my-load-balancer
///       loadBalancerType: lb11
///       location: nbg1
///   loadBalancerTarget:
///     type: hcloud:LoadBalancerTarget
///     name: load_balancer_target
///     properties:
///       type: server
///       loadBalancerId: ${loadBalancer.id}
///       serverId: ${myServer.id}
/// ```
///
///
/// ## Import
///
/// Load Balancers can be imported using its `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/loadBalancer:LoadBalancer example "$LOAD_BALANCER_ID"
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// Configuration of the algorithm the Load Balancer use.
  late final pulumi.Output<LoadBalancerAlgorithm> algorithm;

  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  late final pulumi.Output<bool?> deleteProtection;

  /// (string) IPv4 Address of the Load Balancer.
  late final pulumi.Output<String> ipv4;

  /// (string) IPv6 Address of the Load Balancer.
  late final pulumi.Output<String> ipv6;

  /// User-defined labels (key-value pairs) should be created with.
  late final pulumi.Output<Map<String, String>> labels;

  /// Type of the Load Balancer.
  late final pulumi.Output<String> loadBalancerType;

  /// The location name of the Load Balancer. Require when no network_zone is set. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  late final pulumi.Output<String> location;

  /// Name of the Load Balancer.
  late final pulumi.Output<String> name;

  /// (int) ID of the first private network that this Load Balancer is connected to.
  late final pulumi.Output<int> networkId;

  /// (string) IP of the Load Balancer in the first private network that it is connected to.
  late final pulumi.Output<String> networkIp;

  /// The Network Zone of the Load Balancer. Require when no location is set.
  late final pulumi.Output<String> networkZone;
  late final pulumi.Output<List<Map<String, dynamic>>> targets;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_index_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    algorithm = registerOutput<LoadBalancerAlgorithm>(
      'algorithm',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAlgorithm.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deleteProtection = registerOutput<bool?>('deleteProtection');
    ipv4 = registerOutput<String>('ipv4');
    ipv6 = registerOutput<String>('ipv6');
    labels = registerOutput<Map<String, String>>('labels');
    loadBalancerType = registerOutput<String>('loadBalancerType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<int>('networkId');
    networkIp = registerOutput<String>('networkIp');
    networkZone = registerOutput<String>('networkZone');
    targets = registerOutput<List<Map<String, dynamic>>>('targets');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    algorithm = registerOutput<LoadBalancerAlgorithm>(
      'algorithm',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAlgorithm.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deleteProtection = registerOutput<bool?>('deleteProtection');
    ipv4 = registerOutput<String>('ipv4');
    ipv6 = registerOutput<String>('ipv6');
    labels = registerOutput<Map<String, String>>('labels');
    loadBalancerType = registerOutput<String>('loadBalancerType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<int>('networkId');
    networkIp = registerOutput<String>('networkIp');
    networkZone = registerOutput<String>('networkZone');
    targets = registerOutput<List<Map<String, dynamic>>>('targets');
  }
}
