import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_address_args.dart';
import 'virtual_address_state.dart';

/// `f5bigip.ltm.VirtualAddress` Configures Virtual Server
///
/// For resources should be named with their "full path". The full path is the combination of the partition + name of the resource. For example /Common/virtual_server.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const vsVa = new f5bigip.ltm.VirtualAddress("vs_va", {
///     name: "/Common/xxxxx",
///     advertizeRoute: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// vs_va = f5bigip.ltm.VirtualAddress("vs_va",
///     name="/Common/xxxxx",
///     advertize_route="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vsVa = new F5BigIP.Ltm.VirtualAddress("vs_va", new()
///     {
///         Name = "/Common/xxxxx",
///         AdvertizeRoute = "enabled",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewVirtualAddress(ctx, "vs_va", &ltm.VirtualAddressArgs{
/// 			Name:           pulumi.String("/Common/xxxxx"),
/// 			AdvertizeRoute: pulumi.String("enabled"),
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
/// import com.pulumi.f5bigip.ltm.VirtualAddress;
/// import com.pulumi.f5bigip.ltm.VirtualAddressArgs;
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
///         var vsVa = new VirtualAddress("vsVa", VirtualAddressArgs.builder()
///             .name("/Common/xxxxx")
///             .advertizeRoute("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vsVa:
///     type: f5bigip:ltm:VirtualAddress
///     name: vs_va
///     properties:
///       name: /Common/xxxxx
///       advertizeRoute: enabled
/// ```
class VirtualAddress extends pulumi.CustomResource {
  /// Enabled dynamic routing of the address ( In versions prior to BIG-IP 13.0.0 HF1, you can configure the Route Advertisement option for a virtual address to be either Enabled or Disabled only. Beginning with BIG-IP 13.0.0 HF1, F5 added more settings for the Route Advertisement option. In addition, the Enabled setting is deprecated and replaced by the Selective setting. For more information, please look into KB article https://support.f5.com/csp/article/K85543242 )
  late final pulumi.Output<String?> advertizeRoute;

  /// Enable or disable ARP for the virtual address
  late final pulumi.Output<bool?> arp;

  /// Automatically delete the virtual address with the virtual server
  late final pulumi.Output<bool?> autoDelete;

  /// Max number of connections for virtual address
  late final pulumi.Output<int?> connLimit;

  /// Enable or disable the virtual address
  late final pulumi.Output<bool?> enabled;

  /// Specifies how the system sends responses to ICMP echo requests on a per-virtual address basis.
  late final pulumi.Output<String?> icmpEcho;

  /// Name of the virtual address
  late final pulumi.Output<String> name;

  /// Specify the partition and traffic group
  late final pulumi.Output<String?> trafficGroup;

  /// Creates a new [VirtualAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualAddress]. {@macro pulumi_ltm_virtual_address_virtual_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualAddress(
    String name, {
    VirtualAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/virtualAddress:VirtualAddress',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advertizeRoute = registerOutput<String?>('advertizeRoute');
    arp = registerOutput<bool?>('arp');
    autoDelete = registerOutput<bool?>('autoDelete');
    connLimit = registerOutput<int?>('connLimit');
    enabled = registerOutput<bool?>('enabled');
    icmpEcho = registerOutput<String?>('icmpEcho');
    this.name = registerOutput<String>('name');
    trafficGroup = registerOutput<String?>('trafficGroup');
  }

  /// Gets an existing [VirtualAddress] resource's state with the given [name] and [id].
  static VirtualAddress get(
    String name,
    pulumi.Input<String> id, {
    VirtualAddressState? state,
  }) {
    return VirtualAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/virtualAddress:VirtualAddress',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advertizeRoute = registerOutput<String?>('advertizeRoute');
    arp = registerOutput<bool?>('arp');
    autoDelete = registerOutput<bool?>('autoDelete');
    connLimit = registerOutput<int?>('connLimit');
    enabled = registerOutput<bool?>('enabled');
    icmpEcho = registerOutput<String?>('icmpEcho');
    this.name = registerOutput<String>('name');
    trafficGroup = registerOutput<String?>('trafficGroup');
  }
}
