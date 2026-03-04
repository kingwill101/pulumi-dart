import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_ip_args.dart';
import 'reserved_ip_state.dart';

/// Provides a DigitalOcean reserved IP to represent a publicly-accessible static IP addresses that can be mapped to one of your Droplets.
///
/// &gt; **NOTE:** Reserved IPs can be assigned to a Droplet either directly on the `digitalocean.ReservedIp` resource by setting a `droplet_id` or using the `digitalocean.ReservedIpAssignment` resource, but the two cannot be used together.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.Droplet("example", {
///     name: "example",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-22-04-x64",
///     region: digitalocean.Region.NYC3,
///     ipv6: true,
///     privateNetworking: true,
/// });
/// const exampleReservedIp = new digitalocean.ReservedIp("example", {
///     dropletId: example.id,
///     region: example.region,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.Droplet("example",
///     name="example",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-22-04-x64",
///     region=digitalocean.Region.NYC3,
///     ipv6=True,
///     private_networking=True)
/// example_reserved_ip = digitalocean.ReservedIp("example",
///     droplet_id=example.id,
///     region=example.region)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.Droplet("example", new()
///     {
///         Name = "example",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-22-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         Ipv6 = true,
///         PrivateNetworking = true,
///     });
///
///     var exampleReservedIp = new DigitalOcean.ReservedIp("example", new()
///     {
///         DropletId = example.Id,
///         Region = example.Region,
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
/// 		example, err := digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Name:              pulumi.String("example"),
/// 			Size:              pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:             pulumi.String("ubuntu-22-04-x64"),
/// 			Region:            pulumi.String(digitalocean.RegionNYC3),
/// 			Ipv6:              pulumi.Bool(true),
/// 			PrivateNetworking: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewReservedIp(ctx, "example", &digitalocean.ReservedIpArgs{
/// 			DropletId: example.ID(),
/// 			Region:    example.Region,
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
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.ReservedIp;
/// import com.pulumi.digitalocean.ReservedIpArgs;
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
///         var example = new Droplet("example", DropletArgs.builder()
///             .name("example")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-22-04-x64")
///             .region("nyc3")
///             .ipv6(true)
///             .privateNetworking(true)
///             .build());
///
///         var exampleReservedIp = new ReservedIp("exampleReservedIp", ReservedIpArgs.builder()
///             .dropletId(example.id())
///             .region(example.region())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:Droplet
///     properties:
///       name: example
///       size: s-1vcpu-1gb
///       image: ubuntu-22-04-x64
///       region: nyc3
///       ipv6: true
///       privateNetworking: true
///   exampleReservedIp:
///     type: digitalocean:ReservedIp
///     name: example
///     properties:
///       dropletId: ${example.id}
///       region: ${example.region}
/// ```
///
///
/// ## Import
///
/// Reserved IPs can be imported using the `ip`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/reservedIp:ReservedIp myip 192.168.0.1
/// ```
class ReservedIp extends pulumi.CustomResource {
  /// The ID of Droplet that the reserved IP will be assigned to.
  late final pulumi.Output<int?> dropletId;

  /// The IP Address of the resource
  late final pulumi.Output<String> ipAddress;

  /// The region that the reserved IP is reserved to.
  late final pulumi.Output<String> region;

  /// The uniform resource name of the reserved ip
  late final pulumi.Output<String> reservedIpUrn;

  /// Creates a new [ReservedIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedIp]. {@macro pulumi_index_reserved_ip_reserved_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedIp(
    String name, {
    ReservedIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/reservedIp:ReservedIp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dropletId = registerOutput<int?>('dropletId');
    ipAddress = registerOutput<String>('ipAddress');
    region = registerOutput<String>('region');
    reservedIpUrn = registerOutput<String>('reservedIpUrn');
  }

  /// Gets an existing [ReservedIp] resource's state with the given [name] and [id].
  static ReservedIp get(
    String name,
    pulumi.Input<String> id, {
    ReservedIpState? state,
  }) {
    return ReservedIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReservedIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/reservedIp:ReservedIp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dropletId = registerOutput<int?>('dropletId');
    ipAddress = registerOutput<String>('ipAddress');
    region = registerOutput<String>('region');
    reservedIpUrn = registerOutput<String>('reservedIpUrn');
  }
}
