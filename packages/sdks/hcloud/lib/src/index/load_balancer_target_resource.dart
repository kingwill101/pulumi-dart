import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_target_args.dart';
import 'load_balancer_target_state.dart';

/// Adds a target to a Hetzner Cloud Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const myServer = new hcloud.Server("my_server", {
///     name: "my-server",
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
///     loadBalancerId: loadBalancer.id.apply(x =>Number(x)),
///     serverId: myServer.id.apply(x =>Number(x)),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// my_server = hcloud.Server("my_server",
///     name="my-server",
///     server_type="cx23",
///     image="ubuntu-24.04")
/// load_balancer = hcloud.LoadBalancer("load_balancer",
///     name="my-load-balancer",
///     load_balancer_type="lb11",
///     location="nbg1")
/// load_balancer_target = hcloud.LoadBalancerTarget("load_balancer_target",
///     type="server",
///     load_balancer_id=load_balancer.id.apply(lambda x: int(x)),
///     server_id=my_server.id.apply(lambda x: int(x)))
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
///         Name = "my-server",
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
/// 			Name:       pulumi.String("my-server"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///   }
/// }
///
/// resource "hcloud_server" "my_server" {
///   name        = "my-server"
///   server_type = "cx23"
///   image       = "ubuntu-24.04"
/// }
/// resource "hcloud_loadbalancer" "load_balancer" {
///   name               = "my-load-balancer"
///   load_balancer_type = "lb11"
///   location           = "nbg1"
/// }
/// resource "hcloud_loadbalancertarget" "load_balancer_target" {
///   type             = "server"
///   load_balancer_id = hcloud_loadbalancer.load_balancer.id
///   server_id        = hcloud_server.my_server.id
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
///         var myServer = new Server("myServer", ServerArgs.builder()
///             .name("my-server")
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
///       name: my-server
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
/// Load Balancer Target entries can be imported using a compound ID with the following format:
/// `&lt;load-balancer-id&gt;__&lt;type&gt;__&lt;identifier&gt;`
///
/// Where _identifier_ depends on the _type_:
///
/// - `server`: server id, for example: `123`
/// - `labelSelector`: label selector, for example: `foo=bar`
/// - `ip`: ip address, for example: `203.0.113.123`
///
/// ```sh
/// $ pulumi import hcloud:index/loadBalancerTarget:LoadBalancerTarget server "${LOAD_BALANCER_ID}__server__${SERVER_ID}"
/// $ pulumi import hcloud:index/loadBalancerTarget:LoadBalancerTarget label "${LOAD_BALANCER_ID}__label_selector__${LABEL_SELECTOR}"
/// $ pulumi import hcloud:index/loadBalancerTarget:LoadBalancerTarget ip "${LOAD_BALANCER_ID}__ip__${IP}"
/// ```
class LoadBalancerTargetResource extends pulumi.CustomResource {
  /// IP address for an IP Target. Required if
  /// `type` is `ip`.
  late final pulumi.Output<String?> ip;
  /// Label Selector selecting targets
  /// for this Load Balancer. Required if `type` is `labelSelector`.
  late final pulumi.Output<String?> labelSelector;
  /// ID of the Load Balancer to which
  /// the target gets attached.
  late final pulumi.Output<int> loadBalancerId;
  /// ID of the server which should be a
  /// target for this Load Balancer. Required if `type` is `server`
  late final pulumi.Output<int?> serverId;
  /// Type of the target. Possible values
  /// `server`, `labelSelector`, `ip`.
  late final pulumi.Output<String> type;
  /// use the private IP to connect to
  /// Load Balancer targets. Only allowed if type is `server` or
  /// `labelSelector`.
  late final pulumi.Output<bool> usePrivateIp;

  /// Creates a new [LoadBalancerTargetResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerTargetResource]. {@macro pulumi_index_load_balancer_target_load_balancer_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerTargetResource(
    String name, {
    LoadBalancerTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/loadBalancerTarget:LoadBalancerTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ip = registerOutput<String?>('ip');
    labelSelector = registerOutput<String?>('labelSelector');
    loadBalancerId = registerOutput<int>('loadBalancerId');
    serverId = registerOutput<int?>('serverId');
    type = registerOutput<String>('type');
    usePrivateIp = registerOutput<bool>('usePrivateIp');
  }

  /// Gets an existing [LoadBalancerTargetResource] resource's state with the given [name] and [id].
  static LoadBalancerTargetResource get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerTargetState? state,
  }) {
    return LoadBalancerTargetResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancerTargetResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/loadBalancerTarget:LoadBalancerTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ip = registerOutput<String?>('ip');
    labelSelector = registerOutput<String?>('labelSelector');
    loadBalancerId = registerOutput<int>('loadBalancerId');
    serverId = registerOutput<int?>('serverId');
    type = registerOutput<String>('type');
    usePrivateIp = registerOutput<bool>('usePrivateIp');
  }
}
