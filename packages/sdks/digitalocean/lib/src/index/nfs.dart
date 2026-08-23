import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_args.dart';
import 'nfs_state.dart';

/// Provides a DigitalOcean NFS share which can be mounted to Droplets to provide shared storage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.Vpc("example", {
///     name: "example-vpc",
///     region: "nyc1",
/// });
/// const exampleNfs = new digitalocean.Nfs("example", {
///     region: "nyc1",
///     name: "example-nfs",
///     size: 50,
///     vpcId: example.id,
///     performanceTier: "high",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.Vpc("example",
///     name="example-vpc",
///     region="nyc1")
/// example_nfs = digitalocean.Nfs("example",
///     region="nyc1",
///     name="example-nfs",
///     size=50,
///     vpc_id=example.id,
///     performance_tier="high")
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
///         Name = "example-vpc",
///         Region = "nyc1",
///     });
///
///     var exampleNfs = new DigitalOcean.Nfs("example", new()
///     {
///         Region = "nyc1",
///         Name = "example-nfs",
///         Size = 50,
///         VpcId = example.Id,
///         PerformanceTier = "high",
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
/// 			Name:   pulumi.String("example-vpc"),
/// 			Region: pulumi.String("nyc1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfs(ctx, "example", &digitalocean.NfsArgs{
/// 			Region:          pulumi.String("nyc1"),
/// 			Name:            pulumi.String("example-nfs"),
/// 			Size:            pulumi.Int(50),
/// 			VpcId:           example.ID().ToIDOutput().ToStringOutput(),
/// 			PerformanceTier: pulumi.String("high"),
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
/// resource "digitalocean_vpc" "example" {
///   name   = "example-vpc"
///   region = "nyc1"
/// }
/// resource "digitalocean_nfs" "example" {
///   region           = "nyc1"
///   name             = "example-nfs"
///   size             = 50
///   vpc_id           = digitalocean_vpc.example.id
///   performance_tier = "high"
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
/// import com.pulumi.digitalocean.Nfs;
/// import com.pulumi.digitalocean.NfsArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .name("example-vpc")
///             .region("nyc1")
///             .build());
///
///         var exampleNfs = new Nfs("exampleNfs", NfsArgs.builder()
///             .region("nyc1")
///             .name("example-nfs")
///             .size(50)
///             .vpcId(example.id())
///             .performanceTier("high")
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
///       name: example-vpc
///       region: nyc1
///   exampleNfs:
///     type: digitalocean:Nfs
///     name: example
///     properties:
///       region: nyc1
///       name: example-nfs
///       size: 50
///       vpcId: ${example.id}
///       performanceTier: high
/// ```
///
///
/// ### Multiple VPC Attachments
///
/// Attach an NFS share to additional VPCs one at a time using separate attachment resources:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const primary = new digitalocean.Vpc("primary", {
///     name: "primary-vpc",
///     region: "nyc1",
/// });
/// const secondary = new digitalocean.Vpc("secondary", {
///     name: "secondary-vpc",
///     region: "nyc1",
/// });
/// const example = new digitalocean.Nfs("example", {
///     region: "nyc1",
///     name: "example-nfs",
///     size: 50,
///     vpcId: primary.id,
///     performanceTier: "high",
/// });
/// const primaryNfsAttachment = new digitalocean.NfsAttachment("primary", {
///     shareId: example.id,
///     vpcId: primary.id,
///     region: "nyc1",
/// });
/// const secondaryNfsAttachment = new digitalocean.NfsAttachment("secondary", {
///     shareId: example.id,
///     vpcId: secondary.id,
///     region: "nyc1",
/// }, {
///     dependsOn: [primaryNfsAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// primary = digitalocean.Vpc("primary",
///     name="primary-vpc",
///     region="nyc1")
/// secondary = digitalocean.Vpc("secondary",
///     name="secondary-vpc",
///     region="nyc1")
/// example = digitalocean.Nfs("example",
///     region="nyc1",
///     name="example-nfs",
///     size=50,
///     vpc_id=primary.id,
///     performance_tier="high")
/// primary_nfs_attachment = digitalocean.NfsAttachment("primary",
///     share_id=example.id,
///     vpc_id=primary.id,
///     region="nyc1")
/// secondary_nfs_attachment = digitalocean.NfsAttachment("secondary",
///     share_id=example.id,
///     vpc_id=secondary.id,
///     region="nyc1",
///     opts = pulumi.ResourceOptions(depends_on=[primary_nfs_attachment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new DigitalOcean.Vpc("primary", new()
///     {
///         Name = "primary-vpc",
///         Region = "nyc1",
///     });
///
///     var secondary = new DigitalOcean.Vpc("secondary", new()
///     {
///         Name = "secondary-vpc",
///         Region = "nyc1",
///     });
///
///     var example = new DigitalOcean.Nfs("example", new()
///     {
///         Region = "nyc1",
///         Name = "example-nfs",
///         Size = 50,
///         VpcId = primary.Id,
///         PerformanceTier = "high",
///     });
///
///     var primaryNfsAttachment = new DigitalOcean.NfsAttachment("primary", new()
///     {
///         ShareId = example.Id,
///         VpcId = primary.Id,
///         Region = "nyc1",
///     });
///
///     var secondaryNfsAttachment = new DigitalOcean.NfsAttachment("secondary", new()
///     {
///         ShareId = example.Id,
///         VpcId = secondary.Id,
///         Region = "nyc1",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryNfsAttachment,
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
/// 		primary, err := digitalocean.NewVpc(ctx, "primary", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("primary-vpc"),
/// 			Region: pulumi.String("nyc1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := digitalocean.NewVpc(ctx, "secondary", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("secondary-vpc"),
/// 			Region: pulumi.String("nyc1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := digitalocean.NewNfs(ctx, "example", &digitalocean.NfsArgs{
/// 			Region:          pulumi.String("nyc1"),
/// 			Name:            pulumi.String("example-nfs"),
/// 			Size:            pulumi.Int(50),
/// 			VpcId:           primary.ID().ToIDOutput().ToStringOutput(),
/// 			PerformanceTier: pulumi.String("high"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryNfsAttachment, err := digitalocean.NewNfsAttachment(ctx, "primary", &digitalocean.NfsAttachmentArgs{
/// 			ShareId: example.ID().ToIDOutput().ToStringOutput(),
/// 			VpcId:   primary.ID().ToIDOutput().ToStringOutput(),
/// 			Region:  pulumi.String("nyc1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfsAttachment(ctx, "secondary", &digitalocean.NfsAttachmentArgs{
/// 			ShareId: example.ID().ToIDOutput().ToStringOutput(),
/// 			VpcId:   secondary.ID().ToIDOutput().ToStringOutput(),
/// 			Region:  pulumi.String("nyc1"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryNfsAttachment,
/// 		}))
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
/// resource "digitalocean_vpc" "primary" {
///   name   = "primary-vpc"
///   region = "nyc1"
/// }
/// resource "digitalocean_vpc" "secondary" {
///   name   = "secondary-vpc"
///   region = "nyc1"
/// }
/// resource "digitalocean_nfs" "example" {
///   region           = "nyc1"
///   name             = "example-nfs"
///   size             = 50
///   vpc_id           = digitalocean_vpc.primary.id
///   performance_tier = "high"
/// }
/// resource "digitalocean_nfsattachment" "primary" {
///   share_id = digitalocean_nfs.example.id
///   vpc_id   = digitalocean_vpc.primary.id
///   region   = "nyc1"
/// }
/// resource "digitalocean_nfsattachment" "secondary" {
///   depends_on = [digitalocean_nfsattachment.primary]
///   share_id   = digitalocean_nfs.example.id
///   vpc_id     = digitalocean_vpc.secondary.id
///   region     = "nyc1"
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
/// import com.pulumi.digitalocean.Nfs;
/// import com.pulumi.digitalocean.NfsArgs;
/// import com.pulumi.digitalocean.NfsAttachment;
/// import com.pulumi.digitalocean.NfsAttachmentArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var primary = new Vpc("primary", VpcArgs.builder()
///             .name("primary-vpc")
///             .region("nyc1")
///             .build());
///
///         var secondary = new Vpc("secondary", VpcArgs.builder()
///             .name("secondary-vpc")
///             .region("nyc1")
///             .build());
///
///         var example = new Nfs("example", NfsArgs.builder()
///             .region("nyc1")
///             .name("example-nfs")
///             .size(50)
///             .vpcId(primary.id())
///             .performanceTier("high")
///             .build());
///
///         var primaryNfsAttachment = new NfsAttachment("primaryNfsAttachment", NfsAttachmentArgs.builder()
///             .shareId(example.id())
///             .vpcId(primary.id())
///             .region("nyc1")
///             .build());
///
///         var secondaryNfsAttachment = new NfsAttachment("secondaryNfsAttachment", NfsAttachmentArgs.builder()
///             .shareId(example.id())
///             .vpcId(secondary.id())
///             .region("nyc1")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryNfsAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: digitalocean:Vpc
///     properties:
///       name: primary-vpc
///       region: nyc1
///   secondary:
///     type: digitalocean:Vpc
///     properties:
///       name: secondary-vpc
///       region: nyc1
///   example:
///     type: digitalocean:Nfs
///     properties:
///       region: nyc1
///       name: example-nfs
///       size: 50
///       vpcId: ${primary.id}
///       performanceTier: high
///   primaryNfsAttachment:
///     type: digitalocean:NfsAttachment
///     name: primary
///     properties:
///       shareId: ${example.id}
///       vpcId: ${primary.id}
///       region: nyc1
///   secondaryNfsAttachment:
///     type: digitalocean:NfsAttachment
///     name: secondary
///     properties:
///       shareId: ${example.id}
///       vpcId: ${secondary.id}
///       region: nyc1
///     options:
///       dependsOn:
///         - ${primaryNfsAttachment}
/// ```
///
///
/// ## Notes
///
/// An NFS share can be attached to multiple VPCs. Use one `digitalocean.NfsAttachment` resource per VPC. Multiple NFS shares can also be attached to the same VPC.
///
/// ## Import
///
/// NFS shares can be imported using the `share id` and the `region`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/nfs:Nfs foobar 506f78a4-e098-11e5-ad9f-000f53306ae1,atl1
/// ```
class Nfs extends pulumi.CustomResource {
  /// The host IP of the NFS server accessible from the associated VPC.
  late final pulumi.Output<String> host;
  /// The mount path for accessing the NFS share.
  late final pulumi.Output<String> mountPath;
  /// A name for the NFS share. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters. The name must begin with a letter.
  late final pulumi.Output<String> name;
  /// The performance tier for the NFS share. Can be `standard` or `high`. Defaults to `high`. Changing this will cause the performance tier to be switched.
  /// &gt; **Note:** You cannot downgrade the performance tier from `high` to `standard` after creation. Upgrades from `standard` to `high` are allowed.
  late final pulumi.Output<String?> performanceTier;
  /// The region where the NFS share will be created.
  late final pulumi.Output<String> region;
  /// The size of the NFS share in GiB. Minimum size is 50 GiB.
  late final pulumi.Output<int> size;
  /// The current status of the NFS share.
  late final pulumi.Output<String> status;
  late final pulumi.Output<List<String>?> tags;
  /// The ID of the VPC where the NFS share will be created.
  late final pulumi.Output<String> vpcId;
  /// The set of VPC IDs the NFS share is attached to.
  late final pulumi.Output<List<String>> vpcIds;

  /// Creates a new [Nfs].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Nfs]. {@macro pulumi_index_nfs_nfs_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Nfs(
    String name, {
    NfsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfs:Nfs',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    host = registerOutput<String>('host');
    mountPath = registerOutput<String>('mountPath');
    this.name = registerOutput<String>('name');
    performanceTier = registerOutput<String?>('performanceTier');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vpcIds = registerOutput<List<String>>('vpcIds');
  }

  /// Gets an existing [Nfs] resource's state with the given [name] and [id].
  static Nfs get(
    String name,
    pulumi.Input<String> id, {
    NfsState? state,
  }) {
    return Nfs._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Nfs._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfs:Nfs',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    host = registerOutput<String>('host');
    mountPath = registerOutput<String>('mountPath');
    this.name = registerOutput<String>('name');
    performanceTier = registerOutput<String?>('performanceTier');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vpcIds = registerOutput<List<String>>('vpcIds');
  }
}
