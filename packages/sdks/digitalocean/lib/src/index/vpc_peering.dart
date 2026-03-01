import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_args.dart';
import 'vpc_peering_state.dart';

/// Provides a DigitalOcean VPC Peering resource.
///
/// VPC Peerings are used to connect two VPC networks allowing resources in each
/// VPC to communicate with each other privately.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.VpcPeering("example", {
///     name: "example-peering",
///     vpcIds: [
///         vpc1.id,
///         vpc2.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.VpcPeering("example",
///     name="example-peering",
///     vpc_ids=[
///         vpc1["id"],
///         vpc2["id"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.VpcPeering("example", new()
///     {
///         Name = "example-peering",
///         VpcIds = new[]
///         {
///             vpc1.Id,
///             vpc2.Id,
///         },
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
/// 		_, err := digitalocean.NewVpcPeering(ctx, "example", &digitalocean.VpcPeeringArgs{
/// 			Name: pulumi.String("example-peering"),
/// 			VpcIds: pulumi.StringArray{
/// 				vpc1.Id,
/// 				vpc2.Id,
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
/// import com.pulumi.digitalocean.VpcPeering;
/// import com.pulumi.digitalocean.VpcPeeringArgs;
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
///         var example = new VpcPeering("example", VpcPeeringArgs.builder()
///             .name("example-peering")
///             .vpcIds(
///                 vpc1.id(),
///                 vpc2.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:VpcPeering
///     properties:
///       name: example-peering
///       vpcIds:
///         - ${vpc1.id}
///         - ${vpc2.id}
/// ```
///
///
/// ### Resource Assignment
///
/// You can use the VPC Peering resource to allow communication between resources
/// in different VPCs. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const vpc1 = new digitalocean.Vpc("vpc1", {
///     name: "vpc1",
///     region: "nyc3",
/// });
/// const vpc2 = new digitalocean.Vpc("vpc2", {
///     name: "vpc2",
///     region: "nyc3",
/// });
/// const example = new digitalocean.VpcPeering("example", {
///     name: "example-peering",
///     vpcIds: [
///         vpc1.id,
///         vpc2.id,
///     ],
/// });
/// const example1 = new digitalocean.Droplet("example1", {
///     name: "example1",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
///     vpcUuid: vpc1.id,
/// });
/// const example2 = new digitalocean.Droplet("example2", {
///     name: "example2",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
///     vpcUuid: vpc2.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// vpc1 = digitalocean.Vpc("vpc1",
///     name="vpc1",
///     region="nyc3")
/// vpc2 = digitalocean.Vpc("vpc2",
///     name="vpc2",
///     region="nyc3")
/// example = digitalocean.VpcPeering("example",
///     name="example-peering",
///     vpc_ids=[
///         vpc1.id,
///         vpc2.id,
///     ])
/// example1 = digitalocean.Droplet("example1",
///     name="example1",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3,
///     vpc_uuid=vpc1.id)
/// example2 = digitalocean.Droplet("example2",
///     name="example2",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3,
///     vpc_uuid=vpc2.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc1 = new DigitalOcean.Vpc("vpc1", new()
///     {
///         Name = "vpc1",
///         Region = "nyc3",
///     });
///
///     var vpc2 = new DigitalOcean.Vpc("vpc2", new()
///     {
///         Name = "vpc2",
///         Region = "nyc3",
///     });
///
///     var example = new DigitalOcean.VpcPeering("example", new()
///     {
///         Name = "example-peering",
///         VpcIds = new[]
///         {
///             vpc1.Id,
///             vpc2.Id,
///         },
///     });
///
///     var example1 = new DigitalOcean.Droplet("example1", new()
///     {
///         Name = "example1",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         VpcUuid = vpc1.Id,
///     });
///
///     var example2 = new DigitalOcean.Droplet("example2", new()
///     {
///         Name = "example2",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         VpcUuid = vpc2.Id,
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
/// 		vpc1, err := digitalocean.NewVpc(ctx, "vpc1", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("vpc1"),
/// 			Region: pulumi.String("nyc3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc2, err := digitalocean.NewVpc(ctx, "vpc2", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("vpc2"),
/// 			Region: pulumi.String("nyc3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewVpcPeering(ctx, "example", &digitalocean.VpcPeeringArgs{
/// 			Name: pulumi.String("example-peering"),
/// 			VpcIds: pulumi.StringArray{
/// 				vpc1.ID(),
/// 				vpc2.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example1", &digitalocean.DropletArgs{
/// 			Name:    pulumi.String("example1"),
/// 			Size:    pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:   pulumi.String("ubuntu-18-04-x64"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC3),
/// 			VpcUuid: vpc1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example2", &digitalocean.DropletArgs{
/// 			Name:    pulumi.String("example2"),
/// 			Size:    pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:   pulumi.String("ubuntu-18-04-x64"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC3),
/// 			VpcUuid: vpc2.ID(),
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
/// import com.pulumi.digitalocean.Vpc;
/// import com.pulumi.digitalocean.VpcArgs;
/// import com.pulumi.digitalocean.VpcPeering;
/// import com.pulumi.digitalocean.VpcPeeringArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         var vpc1 = new Vpc("vpc1", VpcArgs.builder()
///             .name("vpc1")
///             .region("nyc3")
///             .build());
///
///         var vpc2 = new Vpc("vpc2", VpcArgs.builder()
///             .name("vpc2")
///             .region("nyc3")
///             .build());
///
///         var example = new VpcPeering("example", VpcPeeringArgs.builder()
///             .name("example-peering")
///             .vpcIds(
///                 vpc1.id(),
///                 vpc2.id())
///             .build());
///
///         var example1 = new Droplet("example1", DropletArgs.builder()
///             .name("example1")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .vpcUuid(vpc1.id())
///             .build());
///
///         var example2 = new Droplet("example2", DropletArgs.builder()
///             .name("example2")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .vpcUuid(vpc2.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc1:
///     type: digitalocean:Vpc
///     properties:
///       name: vpc1
///       region: nyc3
///   vpc2:
///     type: digitalocean:Vpc
///     properties:
///       name: vpc2
///       region: nyc3
///   example:
///     type: digitalocean:VpcPeering
///     properties:
///       name: example-peering
///       vpcIds:
///         - ${vpc1.id}
///         - ${vpc2.id}
///   example1:
///     type: digitalocean:Droplet
///     properties:
///       name: example1
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///       vpcUuid: ${vpc1.id}
///   example2:
///     type: digitalocean:Droplet
///     properties:
///       name: example2
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///       vpcUuid: ${vpc2.id}
/// ```
///
///
/// ## Import
///
/// A VPC Peering can be imported using its `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/vpcPeering:VpcPeering example 771ad360-c017-4b4e-a34e-73934f5f0190
/// ```
class VpcPeering extends pulumi.CustomResource {
  /// The date and time of when the VPC Peering was created.
  late final pulumi.Output<String> createdAt;
  /// A name for the VPC Peering. Must be unique and contain alphanumeric characters, dashes, and periods only.
  late final pulumi.Output<String> name;
  /// The status of the VPC Peering.
  late final pulumi.Output<String> status;
  /// A set of two VPC IDs to be peered.
  late final pulumi.Output<List<String>> vpcIds;

  /// Creates a new [VpcPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcPeering]. {@macro pulumi_index_vpc_peering_vpc_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcPeering(
    String name, {
    VpcPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vpcPeering:VpcPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    this.status = registerOutput<String>('status');
    this.vpcIds = registerOutput<List<String>>('vpcIds');
  }

  /// Gets an existing [VpcPeering] resource's state with the given [name] and [id].
  static VpcPeering get(
    String name,
    pulumi.Input<String> id, {
    VpcPeeringState? state,
  }) {
    return VpcPeering._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcPeering._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vpcPeering:VpcPeering',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    this.status = registerOutput<String>('status');
    this.vpcIds = registerOutput<List<String>>('vpcIds');
  }
}
