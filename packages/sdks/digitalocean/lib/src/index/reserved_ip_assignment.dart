import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_ip_assignment_args.dart';
import 'reserved_ip_assignment_state.dart';

/// Provides a resource for assigning an existing DigitalOcean reserved IP to a Droplet. This
/// makes it easy to provision reserved IP addresses that are not tied to the lifecycle of your
/// Droplet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.ReservedIp("example", {region: "nyc3"});
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     name: "baz",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-22-04-x64",
///     region: digitalocean.Region.NYC3,
///     ipv6: true,
///     privateNetworking: true,
/// });
/// const exampleReservedIpAssignment = new digitalocean.ReservedIpAssignment("example", {
///     ipAddress: example.ipAddress,
///     dropletId: exampleDroplet.id.apply(x =>Number(x)),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.ReservedIp("example", region="nyc3")
/// example_droplet = digitalocean.Droplet("example",
///     name="baz",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-22-04-x64",
///     region=digitalocean.Region.NYC3,
///     ipv6=True,
///     private_networking=True)
/// example_reserved_ip_assignment = digitalocean.ReservedIpAssignment("example",
///     ip_address=example.ip_address,
///     droplet_id=example_droplet.id.apply(lambda x: int(x)))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.ReservedIp("example", new()
///     {
///         Region = "nyc3",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Name = "baz",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-22-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         Ipv6 = true,
///         PrivateNetworking = true,
///     });
///
///     var exampleReservedIpAssignment = new DigitalOcean.ReservedIpAssignment("example", new()
///     {
///         IpAddress = example.IpAddress,
///         DropletId = exampleDroplet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"strconv"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.NewReservedIp(ctx, "example", &digitalocean.ReservedIpArgs{
/// 			Region: pulumi.String("nyc3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDroplet, err := digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Name:              pulumi.String("baz"),
/// 			Size:              pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:             pulumi.String("ubuntu-22-04-x64"),
/// 			Region:            pulumi.String(digitalocean.RegionNYC3),
/// 			Ipv6:              pulumi.Bool(true),
/// 			PrivateNetworking: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewReservedIpAssignment(ctx, "example", &digitalocean.ReservedIpAssignmentArgs{
/// 			IpAddress: example.IpAddress,
/// 			DropletId: exampleDroplet.ID().ToIDOutput().ApplyT(func(id pulumi.ID) (int, error) { return strconv.Atoi(string(id)) }).(pulumi.IntOutput),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_reservedip" "example" {
///   region = "nyc3"
/// }
/// resource "digitalocean_droplet" "example" {
///   name               = "baz"
///   size               = "s-1vcpu-1gb"
///   image              = "ubuntu-22-04-x64"
///   region             = "nyc3"
///   ipv6               = true
///   private_networking = true
/// }
/// resource "digitalocean_reservedipassignment" "example" {
///   ip_address = digitalocean_reservedip.example.ip_address
///   droplet_id = digitalocean_droplet.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ReservedIp;
/// import com.pulumi.digitalocean.ReservedIpArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.ReservedIpAssignment;
/// import com.pulumi.digitalocean.ReservedIpAssignmentArgs;
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
///         var example = new ReservedIp("example", ReservedIpArgs.builder()
///             .region("nyc3")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .name("baz")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-22-04-x64")
///             .region("nyc3")
///             .ipv6(true)
///             .privateNetworking(true)
///             .build());
///
///         var exampleReservedIpAssignment = new ReservedIpAssignment("exampleReservedIpAssignment", ReservedIpAssignmentArgs.builder()
///             .ipAddress(example.ipAddress())
///             .dropletId(exampleDroplet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:ReservedIp
///     properties:
///       region: nyc3
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       name: baz
///       size: s-1vcpu-1gb
///       image: ubuntu-22-04-x64
///       region: nyc3
///       ipv6: true
///       privateNetworking: true
///   exampleReservedIpAssignment:
///     type: digitalocean:ReservedIpAssignment
///     name: example
///     properties:
///       ipAddress: ${example.ipAddress}
///       dropletId: ${exampleDroplet.id}
/// ```
///
///
/// ## Import
///
/// Reserved IP assignments can be imported using the reserved IP itself and the `id` of
/// the Droplet joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/reservedIpAssignment:ReservedIpAssignment foobar 192.0.2.1,123456
/// ```
class ReservedIpAssignment extends pulumi.CustomResource {
  /// The ID of Droplet that the reserved IP will be assigned to.
  late final pulumi.Output<int> dropletId;
  /// The reserved IP to assign to the Droplet.
  late final pulumi.Output<String> ipAddress;

  /// Creates a new [ReservedIpAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedIpAssignment]. {@macro pulumi_index_reserved_ip_assignment_reserved_ip_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedIpAssignment(
    String name, {
    ReservedIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/reservedIpAssignment:ReservedIpAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dropletId = registerOutput<int>('dropletId');
    ipAddress = registerOutput<String>('ipAddress');
  }

  /// Gets an existing [ReservedIpAssignment] resource's state with the given [name] and [id].
  static ReservedIpAssignment get(
    String name,
    pulumi.Input<String> id, {
    ReservedIpAssignmentState? state,
  }) {
    return ReservedIpAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReservedIpAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/reservedIpAssignment:ReservedIpAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dropletId = registerOutput<int>('dropletId');
    ipAddress = registerOutput<String>('ipAddress');
  }
}
