import 'package:pulumi/pulumi.dart' as pulumi;
import 'rdns_args.dart';
import 'rdns_state.dart';
import 'rdns_timeouts.dart';

/// Provides a Linode RDNS resource.  This can be used to create and modify RDNS records.
///
/// Linode RDNS names must have a matching address value in an A or AAAA record.  This A or AAAA name must be resolvable at the time the RDNS resource is being associated.
///
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/put-ip) and the [Configure your Linode for Reverse DNS](https://www.linode.com/docs/networking/dns/configure-your-linode-for-reverse-dns-classic-manager/) guide.
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure an RDNS address for an IP address.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const fooInstance = new linode.Instance("foo", {
///     image: "linode/alpine3.19",
///     region: "ca-east",
///     type: "g6-dedicated-2",
/// });
/// const foo = new linode.Rdns("foo", {
///     address: fooInstance.ipAddress,
///     rdns: pulumi.interpolate`${fooInstance.ipAddress}.nip.io`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo_instance = linode.Instance("foo",
///     image="linode/alpine3.19",
///     region="ca-east",
///     type="g6-dedicated-2")
/// foo = linode.Rdns("foo",
///     address=foo_instance.ip_address,
///     rdns=foo_instance.ip_address.apply(lambda ip_address: f"{ip_address}.nip.io"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooInstance = new Linode.Instance("foo", new()
///     {
///         Image = "linode/alpine3.19",
///         Region = "ca-east",
///         Type = "g6-dedicated-2",
///     });
///
///     var foo = new Linode.Rdns("foo", new()
///     {
///         Address = fooInstance.IpAddress,
///         RdnsName = fooInstance.IpAddress.Apply(ipAddress => $"{ipAddress}.nip.io"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fooInstance, err := linode.NewInstance(ctx, "foo", &linode.InstanceArgs{
/// 			Image:  pulumi.String("linode/alpine3.19"),
/// 			Region: pulumi.String("ca-east"),
/// 			Type:   pulumi.String("g6-dedicated-2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewRdns(ctx, "foo", &linode.RdnsArgs{
/// 			Address: fooInstance.IpAddress,
/// 			Rdns: fooInstance.IpAddress.ApplyT(func(ipAddress string) (string, error) {
/// 				return fmt.Sprintf("%v.nip.io", ipAddress), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.Rdns;
/// import com.pulumi.linode.RdnsArgs;
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
///         var fooInstance = new Instance("fooInstance", InstanceArgs.builder()
///             .image("linode/alpine3.19")
///             .region("ca-east")
///             .type("g6-dedicated-2")
///             .build());
///
///         var foo = new Rdns("foo", RdnsArgs.builder()
///             .address(fooInstance.ipAddress())
///             .rdns(fooInstance.ipAddress().applyValue(_ipAddress -> String.format("%s.nip.io", _ipAddress)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:Rdns
///     properties:
///       address: ${fooInstance.ipAddress}
///       rdns: ${fooInstance.ipAddress}.nip.io
///   fooInstance:
///     type: linode:Instance
///     name: foo
///     properties:
///       image: linode/alpine3.19
///       region: ca-east
///       type: g6-dedicated-2
/// ```
///
///
/// The following example shows how one might use this resource to configure RDNS for multiple IP addresses.
///
/// ## Import
///
/// Linodes RDNS resources can be imported using the address as the `id`.
///
/// ```sh
/// $ pulumi import linode:index/rdns:Rdns foo 123.123.123.123
/// ```
class Rdns extends pulumi.CustomResource {
  /// The Public IPv4 or IPv6 address that will receive the `PTR` record.  A matching `A` or `AAAA` record must exist.
  late final pulumi.Output<String> address;
  /// The name of the RDNS address.
  late final pulumi.Output<String> rdns;
  late final pulumi.Output<RdnsTimeouts?> timeouts;
  /// If true, the RDNS assignment will be retried within the operation timeout period.
  late final pulumi.Output<bool> waitForAvailable;

  /// Creates a new [Rdns].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rdns]. {@macro pulumi_index_rdns_rdns_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rdns(
    String name, {
    RdnsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/rdns:Rdns',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.rdns = registerOutput<String>('rdns');
    this.timeouts = registerOutput<RdnsTimeouts?>('timeouts');
    this.waitForAvailable = registerOutput<bool>('waitForAvailable');
  }

  /// Gets an existing [Rdns] resource's state with the given [name] and [id].
  static Rdns get(
    String name,
    pulumi.Input<String> id, {
    RdnsState? state,
  }) {
    return Rdns._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rdns._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/rdns:Rdns',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.rdns = registerOutput<String>('rdns');
    this.timeouts = registerOutput<RdnsTimeouts?>('timeouts');
    this.waitForAvailable = registerOutput<bool>('waitForAvailable');
  }
}
