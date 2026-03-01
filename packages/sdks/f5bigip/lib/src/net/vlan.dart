import 'package:pulumi/pulumi.dart' as pulumi;
import 'vlan_args.dart';
import 'vlan_interface.dart';
import 'vlan_state.dart';

/// `f5bigip.net.Vlan` Manages a vlan configuration
///
/// For resources should be named with their "full path". The full path is the combination of the partition + name of the resource. For example /Common/my-pool.
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
/// 		_, err := net.NewVlan(ctx, "vlan1", &net.VlanArgs{
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
/// ```
class Vlan extends pulumi.CustomResource {
  /// Specifies how the traffic on the VLAN will be disaggregated. The value selected determines the traffic disaggregation method. possible options: [`default`, `src-ip`, `dst-ip`]
  late final pulumi.Output<String> cmpHash;
  /// Specifies which interfaces you want this VLAN to use for traffic management.
  late final pulumi.Output<List<VlanInterface>?> interfaces;
  /// Specifies the maximum transmission unit (MTU) for traffic on this VLAN. The default value is `1500`.
  late final pulumi.Output<int?> mtu;
  /// Name of the vlan
  late final pulumi.Output<String> name;
  /// Specifies a number that the system adds into the header of any frame passing through the VLAN.
  late final pulumi.Output<int?> tag;

  /// Creates a new [Vlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vlan]. {@macro pulumi_net_vlan_vlan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vlan(
    String name, {
    VlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:net/vlan:Vlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cmpHash = registerOutput<String>('cmpHash');
    this.interfaces = registerOutput<List<VlanInterface>?>('interfaces');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.tag = registerOutput<int?>('tag');
  }

  /// Gets an existing [Vlan] resource's state with the given [name] and [id].
  static Vlan get(
    String name,
    pulumi.Input<String> id, {
    VlanState? state,
  }) {
    return Vlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Vlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:net/vlan:Vlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cmpHash = registerOutput<String>('cmpHash');
    this.interfaces = registerOutput<List<VlanInterface>?>('interfaces');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.tag = registerOutput<int?>('tag');
  }
}
