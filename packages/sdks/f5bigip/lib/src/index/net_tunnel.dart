import 'package:pulumi/pulumi.dart' as pulumi;
import 'net_tunnel_args.dart';
import 'net_tunnel_state.dart';

/// `f5bigip.NetTunnel` Manages a tunnel configuration
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const example1 = new f5bigip.NetTunnel("example1", {
///     name: "example1",
///     localAddress: "192.16.81.240",
///     profile: "/Common/dslite",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// example1 = f5bigip.NetTunnel("example1",
///     name="example1",
///     local_address="192.16.81.240",
///     profile="/Common/dslite")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example1 = new F5BigIP.NetTunnel("example1", new()
///     {
///         Name = "example1",
///         LocalAddress = "192.16.81.240",
///         Profile = "/Common/dslite",
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
/// 		_, err := f5bigip.NewNetTunnel(ctx, "example1", &f5bigip.NetTunnelArgs{
/// 			Name:         pulumi.String("example1"),
/// 			LocalAddress: pulumi.String("192.16.81.240"),
/// 			Profile:      pulumi.String("/Common/dslite"),
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
/// import com.pulumi.f5bigip.NetTunnel;
/// import com.pulumi.f5bigip.NetTunnelArgs;
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
///         var example1 = new NetTunnel("example1", NetTunnelArgs.builder()
///             .name("example1")
///             .localAddress("192.16.81.240")
///             .profile("/Common/dslite")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example1:
///     type: f5bigip:NetTunnel
///     properties:
///       name: example1
///       localAddress: 192.16.81.240
///       profile: /Common/dslite
/// ```
class NetTunnel extends pulumi.CustomResource {
  /// The application service that the object belongs to
  late final pulumi.Output<String?> appService;

  /// Specifies whether auto lasthop is enabled or not
  late final pulumi.Output<String?> autoLastHop;

  /// User defined description
  late final pulumi.Output<String?> description;

  /// Specifies an idle timeout for wildcard tunnels in seconds
  late final pulumi.Output<int?> idleTimeout;

  /// The key field may represent different values depending on the type of the tunnel
  late final pulumi.Output<int?> key;

  /// Specifies a local IP address. This option is required
  late final pulumi.Output<String> localAddress;

  /// Specifies how the tunnel carries traffic
  late final pulumi.Output<String?> mode;

  /// Specifies the maximum transmission unit (MTU) of the tunnel
  late final pulumi.Output<int?> mtu;

  /// Name of the tunnel
  late final pulumi.Output<String> name;

  /// Displays the admin-partition within which this component resides
  late final pulumi.Output<String?> partition;

  /// Specifies the profile that you want to associate with the tunnel
  late final pulumi.Output<String> profile;

  /// Specifies a remote IP address
  late final pulumi.Output<String?> remoteAddress;

  /// Specifies a secondary non-floating IP address when the local-address is set to a floating address
  late final pulumi.Output<String?> secondaryAddress;

  /// Specifies a value for insertion into the Type of Service (ToS) octet within the IP header of the encapsulating header of transmitted packets
  late final pulumi.Output<String?> tos;

  /// Specifies a traffic-group for use with the tunnel
  late final pulumi.Output<String?> trafficGroup;

  /// Enables or disables the tunnel to be transparent
  late final pulumi.Output<String?> transparent;

  /// Enables or disables the tunnel to use the PMTU (Path MTU) information provided by ICMP NeedFrag error messages
  late final pulumi.Output<String?> usePmtu;

  /// Creates a new [NetTunnel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetTunnel]. {@macro pulumi_index_net_tunnel_net_tunnel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetTunnel(
    String name, {
    NetTunnelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/netTunnel:NetTunnel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appService = registerOutput<String?>('appService');
    autoLastHop = registerOutput<String?>('autoLastHop');
    description = registerOutput<String?>('description');
    idleTimeout = registerOutput<int?>('idleTimeout');
    key = registerOutput<int?>('key');
    localAddress = registerOutput<String>('localAddress');
    mode = registerOutput<String?>('mode');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String?>('partition');
    profile = registerOutput<String>('profile');
    remoteAddress = registerOutput<String?>('remoteAddress');
    secondaryAddress = registerOutput<String?>('secondaryAddress');
    tos = registerOutput<String?>('tos');
    trafficGroup = registerOutput<String?>('trafficGroup');
    transparent = registerOutput<String?>('transparent');
    usePmtu = registerOutput<String?>('usePmtu');
  }

  /// Gets an existing [NetTunnel] resource's state with the given [name] and [id].
  static NetTunnel get(
    String name,
    pulumi.Input<String> id, {
    NetTunnelState? state,
  }) {
    return NetTunnel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetTunnel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/netTunnel:NetTunnel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appService = registerOutput<String?>('appService');
    autoLastHop = registerOutput<String?>('autoLastHop');
    description = registerOutput<String?>('description');
    idleTimeout = registerOutput<int?>('idleTimeout');
    key = registerOutput<int?>('key');
    localAddress = registerOutput<String>('localAddress');
    mode = registerOutput<String?>('mode');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String?>('partition');
    profile = registerOutput<String>('profile');
    remoteAddress = registerOutput<String?>('remoteAddress');
    secondaryAddress = registerOutput<String?>('secondaryAddress');
    tos = registerOutput<String?>('tos');
    trafficGroup = registerOutput<String?>('trafficGroup');
    transparent = registerOutput<String?>('transparent');
    usePmtu = registerOutput<String?>('usePmtu');
  }
}
