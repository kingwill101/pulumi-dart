import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_args.dart';
import 'vpc_state.dart';

/// Provides a [DigitalOcean VPC](https://docs.digitalocean.com/reference/api/digitalocean/#tag/VPCs) resource.
///
/// VPCs are virtual networks containing resources that can communicate with each
/// other in full isolation, using private IP addresses.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.Vpc("example", {
///     name: "example-project-network",
///     region: "nyc3",
///     ipRange: "10.10.10.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.Vpc("example",
///     name="example-project-network",
///     region="nyc3",
///     ip_range="10.10.10.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.Vpc("example", new()
///     {
///         Name = "example-project-network",
///         Region = "nyc3",
///         IpRange = "10.10.10.0/24",
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
/// 		_, err := digitalocean.NewVpc(ctx, "example", &digitalocean.VpcArgs{
/// 			Name:    pulumi.String("example-project-network"),
/// 			Region:  pulumi.String("nyc3"),
/// 			IpRange: pulumi.String("10.10.10.0/24"),
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .name("example-project-network")
///             .region("nyc3")
///             .ipRange("10.10.10.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:Vpc
///     properties:
///       name: example-project-network
///       region: nyc3
///       ipRange: 10.10.10.0/24
/// ```
///
///
/// ### Resource Assignment
///
/// `digitalocean.Droplet`, `digitalocean.KubernetesCluster`,
/// `digitalocean_load_balancer`, and `digitalocean.DatabaseCluster` resources
/// may be assigned to a VPC by referencing its `id`. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.Vpc("example", {
///     name: "example-project-network",
///     region: "nyc3",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     name: "example-01",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
///     vpcUuid: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.Vpc("example",
///     name="example-project-network",
///     region="nyc3")
/// example_droplet = digitalocean.Droplet("example",
///     name="example-01",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3,
///     vpc_uuid=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.Vpc("example", new()
///     {
///         Name = "example-project-network",
///         Region = "nyc3",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Name = "example-01",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         VpcUuid = example.Id,
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
/// 		example, err := digitalocean.NewVpc(ctx, "example", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("example-project-network"),
/// 			Region: pulumi.String("nyc3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Name:    pulumi.String("example-01"),
/// 			Size:    pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:   pulumi.String("ubuntu-18-04-x64"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC3),
/// 			VpcUuid: example.ID(),
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .name("example-project-network")
///             .region("nyc3")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .name("example-01")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .vpcUuid(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:Vpc
///     properties:
///       name: example-project-network
///       region: nyc3
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       name: example-01
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///       vpcUuid: ${example.id}
/// ```
///
///
/// ## Import
///
/// A VPC can be imported using its `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/vpc:Vpc example 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class Vpc extends pulumi.CustomResource {
  /// The date and time of when the VPC was created.
  late final pulumi.Output<String> createdAt;
  /// A boolean indicating whether or not the VPC is the default one for the region.
  late final pulumi.Output<bool> default_;
  /// A free-form text field up to a limit of 255 characters to describe the VPC.
  late final pulumi.Output<String?> description;
  /// The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24`.
  late final pulumi.Output<String> ipRange;
  /// A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only.
  late final pulumi.Output<String> name;
  /// The DigitalOcean region slug for the VPC's location.
  late final pulumi.Output<String> region;
  /// The uniform resource name (URN) for the VPC.
  late final pulumi.Output<String> vpcUrn;

  /// Creates a new [Vpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vpc]. {@macro pulumi_index_vpc_vpc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vpc(
    String name, {
    VpcArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vpc:Vpc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.default_ = registerOutput<bool>('default');
    this.description = registerOutput<String?>('description');
    this.ipRange = registerOutput<String>('ipRange');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.vpcUrn = registerOutput<String>('vpcUrn');
  }

  /// Gets an existing [Vpc] resource's state with the given [name] and [id].
  static Vpc get(
    String name,
    pulumi.Input<String> id, {
    VpcState? state,
  }) {
    return Vpc._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Vpc._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vpc:Vpc',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.default_ = registerOutput<bool>('default');
    this.description = registerOutput<String?>('description');
    this.ipRange = registerOutput<String>('ipRange');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.vpcUrn = registerOutput<String>('vpcUrn');
  }
}
