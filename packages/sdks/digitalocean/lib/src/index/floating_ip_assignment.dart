import 'package:pulumi/pulumi.dart' as pulumi;
import 'floating_ip_assignment_args.dart';
import 'floating_ip_assignment_state.dart';

/// &gt; **Deprecated:** DigitalOcean Floating IPs have been renamed reserved IPs. This resource will be removed in a future release. Please use `digitalocean.ReservedIpAssignment` instead.
///
/// Provides a resource for assigning an existing DigitalOcean Floating IP to a Droplet. This
/// makes it easy to provision floating IP addresses that are not tied to the lifecycle of your
/// Droplet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.FloatingIp("foobar", {region: "sgp1"});
/// const foobarDroplet = new digitalocean.Droplet("foobar", {
///     name: "baz",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.SGP1,
///     ipv6: true,
///     privateNetworking: true,
/// });
/// const foobarFloatingIpAssignment = new digitalocean.FloatingIpAssignment("foobar", {
///     ipAddress: foobar.ipAddress,
///     dropletId: foobarDroplet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.FloatingIp("foobar", region="sgp1")
/// foobar_droplet = digitalocean.Droplet("foobar",
///     name="baz",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.SGP1,
///     ipv6=True,
///     private_networking=True)
/// foobar_floating_ip_assignment = digitalocean.FloatingIpAssignment("foobar",
///     ip_address=foobar.ip_address,
///     droplet_id=foobar_droplet.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.FloatingIp("foobar", new()
///     {
///         Region = "sgp1",
///     });
///
///     var foobarDroplet = new DigitalOcean.Droplet("foobar", new()
///     {
///         Name = "baz",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.SGP1,
///         Ipv6 = true,
///         PrivateNetworking = true,
///     });
///
///     var foobarFloatingIpAssignment = new DigitalOcean.FloatingIpAssignment("foobar", new()
///     {
///         IpAddress = foobar.IpAddress,
///         DropletId = foobarDroplet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := digitalocean.NewFloatingIp(ctx, "foobar", &digitalocean.FloatingIpArgs{
/// 			Region: pulumi.String("sgp1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarDroplet, err := digitalocean.NewDroplet(ctx, "foobar", &digitalocean.DropletArgs{
/// 			Name:              pulumi.String("baz"),
/// 			Size:              pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:             pulumi.String("ubuntu-18-04-x64"),
/// 			Region:            pulumi.String(digitalocean.RegionSGP1),
/// 			Ipv6:              pulumi.Bool(true),
/// 			PrivateNetworking: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewFloatingIpAssignment(ctx, "foobar", &digitalocean.FloatingIpAssignmentArgs{
/// 			IpAddress: foobar.IpAddress,
/// 			DropletId: foobarDroplet.ID(),
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
/// import com.pulumi.digitalocean.FloatingIp;
/// import com.pulumi.digitalocean.FloatingIpArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.FloatingIpAssignment;
/// import com.pulumi.digitalocean.FloatingIpAssignmentArgs;
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
///         var foobar = new FloatingIp("foobar", FloatingIpArgs.builder()
///             .region("sgp1")
///             .build());
///
///         var foobarDroplet = new Droplet("foobarDroplet", DropletArgs.builder()
///             .name("baz")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("sgp1")
///             .ipv6(true)
///             .privateNetworking(true)
///             .build());
///
///         var foobarFloatingIpAssignment = new FloatingIpAssignment("foobarFloatingIpAssignment", FloatingIpAssignmentArgs.builder()
///             .ipAddress(foobar.ipAddress())
///             .dropletId(foobarDroplet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:FloatingIp
///     properties:
///       region: sgp1
///   foobarDroplet:
///     type: digitalocean:Droplet
///     name: foobar
///     properties:
///       name: baz
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: sgp1
///       ipv6: true
///       privateNetworking: true
///   foobarFloatingIpAssignment:
///     type: digitalocean:FloatingIpAssignment
///     name: foobar
///     properties:
///       ipAddress: ${foobar.ipAddress}
///       dropletId: ${foobarDroplet.id}
/// ```
///
///
/// ## Import
///
/// Floating IP assignments can be imported using the Floating IP itself and the `id` of
/// the Droplet joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/floatingIpAssignment:FloatingIpAssignment foobar 192.0.2.1,123456
/// ```
class FloatingIpAssignment extends pulumi.CustomResource {
  /// The ID of Droplet that the Floating IP will be assigned to.
  late final pulumi.Output<int> dropletId;

  /// The Floating IP to assign to the Droplet.
  late final pulumi.Output<String> ipAddress;

  /// Creates a new [FloatingIpAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FloatingIpAssignment]. {@macro pulumi_index_floating_ip_assignment_floating_ip_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FloatingIpAssignment(
    String name, {
    FloatingIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/floatingIpAssignment:FloatingIpAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dropletId = registerOutput<int>('dropletId');
    ipAddress = registerOutput<String>('ipAddress');
  }

  /// Gets an existing [FloatingIpAssignment] resource's state with the given [name] and [id].
  static FloatingIpAssignment get(
    String name,
    pulumi.Input<String> id, {
    FloatingIpAssignmentState? state,
  }) {
    return FloatingIpAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FloatingIpAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/floatingIpAssignment:FloatingIpAssignment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dropletId = registerOutput<int>('dropletId');
    ipAddress = registerOutput<String>('ipAddress');
  }
}
