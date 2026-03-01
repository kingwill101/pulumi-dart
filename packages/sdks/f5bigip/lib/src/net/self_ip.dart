import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_ip_args.dart';
import 'self_ip_state.dart';

/// `f5bigip.net.SelfIp` Manages a selfip configuration
///
/// Resource should be named with their `full path`. The full path is the combination of the `partition + name of the resource`, for example `/Common/my-selfip`.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const vlan1 = new f5bigip.net.Vlan("vlan1", {
///     name: "/Common/Internal",
///     tag: 101,
///     interfaces: [{
///         vlanport: "1.2",
///         tagged: false,
///     }],
/// });
/// const selfip1 = new f5bigip.net.SelfIp("selfip1", {
///     name: "/Common/internalselfIP",
///     ip: "11.1.1.1/24",
///     vlan: "/Common/internal",
/// }, {
///     dependsOn: [vlan1],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// vlan1 = f5bigip.net.Vlan("vlan1",
///     name="/Common/Internal",
///     tag=101,
///     interfaces=[{
///         "vlanport": "1.2",
///         "tagged": False,
///     }])
/// selfip1 = f5bigip.net.SelfIp("selfip1",
///     name="/Common/internalselfIP",
///     ip="11.1.1.1/24",
///     vlan="/Common/internal",
///     opts = pulumi.ResourceOptions(depends_on=[vlan1]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vlan1 = new F5BigIP.Net.Vlan("vlan1", new()
///     {
///         Name = "/Common/Internal",
///         Tag = 101,
///         Interfaces = new[]
///         {
///             new F5BigIP.Net.Inputs.VlanInterfaceArgs
///             {
///                 Vlanport = "1.2",
///                 Tagged = false,
///             },
///         },
///     });
///
///     var selfip1 = new F5BigIP.Net.SelfIp("selfip1", new()
///     {
///         Name = "/Common/internalselfIP",
///         Ip = "11.1.1.1/24",
///         Vlan = "/Common/internal",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vlan1,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/net"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vlan1, err := net.NewVlan(ctx, "vlan1", &net.VlanArgs{
/// 			Name: pulumi.String("/Common/Internal"),
/// 			Tag:  pulumi.Int(101),
/// 			Interfaces: net.VlanInterfaceArray{
/// 				&net.VlanInterfaceArgs{
/// 					Vlanport: pulumi.String("1.2"),
/// 					Tagged:   pulumi.Bool(false),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = net.NewSelfIp(ctx, "selfip1", &net.SelfIpArgs{
/// 			Name: pulumi.String("/Common/internalselfIP"),
/// 			Ip:   pulumi.String("11.1.1.1/24"),
/// 			Vlan: pulumi.String("/Common/internal"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vlan1,
/// 		}))
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
/// import com.pulumi.f5bigip.net.Vlan;
/// import com.pulumi.f5bigip.net.VlanArgs;
/// import com.pulumi.f5bigip.net.inputs.VlanInterfaceArgs;
/// import com.pulumi.f5bigip.net.SelfIp;
/// import com.pulumi.f5bigip.net.SelfIpArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var vlan1 = new Vlan("vlan1", VlanArgs.builder()
///             .name("/Common/Internal")
///             .tag(101)
///             .interfaces(VlanInterfaceArgs.builder()
///                 .vlanport("1.2")
///                 .tagged(false)
///                 .build())
///             .build());
///
///         var selfip1 = new SelfIp("selfip1", SelfIpArgs.builder()
///             .name("/Common/internalselfIP")
///             .ip("11.1.1.1/24")
///             .vlan("/Common/internal")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vlan1)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vlan1:
///     type: f5bigip:net:Vlan
///     properties:
///       name: /Common/Internal
///       tag: 101
///       interfaces:
///         - vlanport: 1.2
///           tagged: false
///   selfip1:
///     type: f5bigip:net:SelfIp
///     properties:
///       name: /Common/internalselfIP
///       ip: 11.1.1.1/24
///       vlan: /Common/internal
///     options:
///       dependsOn:
///         - ${vlan1}
/// ```
///
/// ### Example usage with `port_lockdown`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const selfip1 = new f5bigip.net.SelfIp("selfip1", {
///     name: "/Common/internalselfIP",
///     ip: "11.1.1.1/24",
///     vlan: "/Common/internal",
///     trafficGroup: "traffic-group-1",
///     portLockdowns: [
///         "tcp:4040",
///         "udp:5050",
///         "egp:0",
///     ],
/// }, {
///     dependsOn: [vlan1],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// selfip1 = f5bigip.net.SelfIp("selfip1",
///     name="/Common/internalselfIP",
///     ip="11.1.1.1/24",
///     vlan="/Common/internal",
///     traffic_group="traffic-group-1",
///     port_lockdowns=[
///         "tcp:4040",
///         "udp:5050",
///         "egp:0",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[vlan1]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selfip1 = new F5BigIP.Net.SelfIp("selfip1", new()
///     {
///         Name = "/Common/internalselfIP",
///         Ip = "11.1.1.1/24",
///         Vlan = "/Common/internal",
///         TrafficGroup = "traffic-group-1",
///         PortLockdowns = new[]
///         {
///             "tcp:4040",
///             "udp:5050",
///             "egp:0",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vlan1,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/net"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := net.NewSelfIp(ctx, "selfip1", &net.SelfIpArgs{
/// 			Name:         pulumi.String("/Common/internalselfIP"),
/// 			Ip:           pulumi.String("11.1.1.1/24"),
/// 			Vlan:         pulumi.String("/Common/internal"),
/// 			TrafficGroup: pulumi.String("traffic-group-1"),
/// 			PortLockdowns: pulumi.StringArray{
/// 				pulumi.String("tcp:4040"),
/// 				pulumi.String("udp:5050"),
/// 				pulumi.String("egp:0"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vlan1,
/// 		}))
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
/// import com.pulumi.f5bigip.net.SelfIp;
/// import com.pulumi.f5bigip.net.SelfIpArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var selfip1 = new SelfIp("selfip1", SelfIpArgs.builder()
///             .name("/Common/internalselfIP")
///             .ip("11.1.1.1/24")
///             .vlan("/Common/internal")
///             .trafficGroup("traffic-group-1")
///             .portLockdowns(
///                 "tcp:4040",
///                 "udp:5050",
///                 "egp:0")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vlan1)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   selfip1:
///     type: f5bigip:net:SelfIp
///     properties:
///       name: /Common/internalselfIP
///       ip: 11.1.1.1/24
///       vlan: /Common/internal
///       trafficGroup: traffic-group-1
///       portLockdowns:
///         - tcp:4040
///         - udp:5050
///         - egp:0
///     options:
///       dependsOn:
///         - ${vlan1}
/// ```
///
///
/// ### Example usage with `port_lockdown` set to `["none"]`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const selfip1 = new f5bigip.net.SelfIp("selfip1", {
///     name: "/Common/internalselfIP",
///     ip: "11.1.1.1/24",
///     vlan: "/Common/internal",
///     trafficGroup: "traffic-group-1",
///     portLockdowns: ["none"],
/// }, {
///     dependsOn: [vlan1],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// selfip1 = f5bigip.net.SelfIp("selfip1",
///     name="/Common/internalselfIP",
///     ip="11.1.1.1/24",
///     vlan="/Common/internal",
///     traffic_group="traffic-group-1",
///     port_lockdowns=["none"],
///     opts = pulumi.ResourceOptions(depends_on=[vlan1]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selfip1 = new F5BigIP.Net.SelfIp("selfip1", new()
///     {
///         Name = "/Common/internalselfIP",
///         Ip = "11.1.1.1/24",
///         Vlan = "/Common/internal",
///         TrafficGroup = "traffic-group-1",
///         PortLockdowns = new[]
///         {
///             "none",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vlan1,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/net"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := net.NewSelfIp(ctx, "selfip1", &net.SelfIpArgs{
/// 			Name:         pulumi.String("/Common/internalselfIP"),
/// 			Ip:           pulumi.String("11.1.1.1/24"),
/// 			Vlan:         pulumi.String("/Common/internal"),
/// 			TrafficGroup: pulumi.String("traffic-group-1"),
/// 			PortLockdowns: pulumi.StringArray{
/// 				pulumi.String("none"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vlan1,
/// 		}))
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
/// import com.pulumi.f5bigip.net.SelfIp;
/// import com.pulumi.f5bigip.net.SelfIpArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var selfip1 = new SelfIp("selfip1", SelfIpArgs.builder()
///             .name("/Common/internalselfIP")
///             .ip("11.1.1.1/24")
///             .vlan("/Common/internal")
///             .trafficGroup("traffic-group-1")
///             .portLockdowns("none")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vlan1)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   selfip1:
///     type: f5bigip:net:SelfIp
///     properties:
///       name: /Common/internalselfIP
///       ip: 11.1.1.1/24
///       vlan: /Common/internal
///       trafficGroup: traffic-group-1
///       portLockdowns:
///         - none
///     options:
///       dependsOn:
///         - ${vlan1}
/// ```
///
///
/// ### Example usage with route domain embedded in the `ip`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const selfip1 = new f5bigip.net.SelfIp("selfip1", {
///     name: "/Common/internalselfIP",
///     ip: "11.1.1.1%4/24",
///     vlan: "/Common/internal",
///     trafficGroup: "traffic-group-1",
///     portLockdowns: ["none"],
/// }, {
///     dependsOn: [vlan1],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// selfip1 = f5bigip.net.SelfIp("selfip1",
///     name="/Common/internalselfIP",
///     ip="11.1.1.1%4/24",
///     vlan="/Common/internal",
///     traffic_group="traffic-group-1",
///     port_lockdowns=["none"],
///     opts = pulumi.ResourceOptions(depends_on=[vlan1]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selfip1 = new F5BigIP.Net.SelfIp("selfip1", new()
///     {
///         Name = "/Common/internalselfIP",
///         Ip = "11.1.1.1%4/24",
///         Vlan = "/Common/internal",
///         TrafficGroup = "traffic-group-1",
///         PortLockdowns = new[]
///         {
///             "none",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vlan1,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/net"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := net.NewSelfIp(ctx, "selfip1", &net.SelfIpArgs{
/// 			Name:         pulumi.String("/Common/internalselfIP"),
/// 			Ip:           pulumi.String("11.1.1.1%4/24"),
/// 			Vlan:         pulumi.String("/Common/internal"),
/// 			TrafficGroup: pulumi.String("traffic-group-1"),
/// 			PortLockdowns: pulumi.StringArray{
/// 				pulumi.String("none"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vlan1,
/// 		}))
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
/// import com.pulumi.f5bigip.net.SelfIp;
/// import com.pulumi.f5bigip.net.SelfIpArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var selfip1 = new SelfIp("selfip1", SelfIpArgs.builder()
///             .name("/Common/internalselfIP")
///             .ip("11.1.1.1%4/24")
///             .vlan("/Common/internal")
///             .trafficGroup("traffic-group-1")
///             .portLockdowns("none")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vlan1)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   selfip1:
///     type: f5bigip:net:SelfIp
///     properties:
///       name: /Common/internalselfIP
///       ip: 11.1.1.1%4/24
///       vlan: /Common/internal
///       trafficGroup: traffic-group-1
///       portLockdowns:
///         - none
///     options:
///       dependsOn:
///         - ${vlan1}
/// ```
class SelfIp extends pulumi.CustomResource {
  /// The Self IP's address and netmask. The IP address could also contain the route domain, e.g. `10.12.13.14%4/24`.
  late final pulumi.Output<String> ip;
  /// Name of the selfip
  late final pulumi.Output<String> name;
  /// Specifies the port lockdown, defaults to `Allow None` if not specified.
  late final pulumi.Output<List<String>?> portLockdowns;
  /// Specifies the traffic group, defaults to `traffic-group-local-only` if not specified.
  late final pulumi.Output<String?> trafficGroup;
  /// Specifies the VLAN for which you are setting a self IP address. This setting must be provided when a self IP is created.
  late final pulumi.Output<String> vlan;

  /// Creates a new [SelfIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SelfIp]. {@macro pulumi_net_self_ip_self_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SelfIp(
    String name, {
    SelfIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:net/selfIp:SelfIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ip = registerOutput<String>('ip');
    this.name = registerOutput<String>('name');
    this.portLockdowns = registerOutput<List<String>?>('portLockdowns');
    this.trafficGroup = registerOutput<String?>('trafficGroup');
    this.vlan = registerOutput<String>('vlan');
  }

  /// Gets an existing [SelfIp] resource's state with the given [name] and [id].
  static SelfIp get(
    String name,
    pulumi.Input<String> id, {
    SelfIpState? state,
  }) {
    return SelfIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SelfIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:net/selfIp:SelfIp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ip = registerOutput<String>('ip');
    this.name = registerOutput<String>('name');
    this.portLockdowns = registerOutput<List<String>?>('portLockdowns');
    this.trafficGroup = registerOutput<String?>('trafficGroup');
    this.vlan = registerOutput<String>('vlan');
  }
}
