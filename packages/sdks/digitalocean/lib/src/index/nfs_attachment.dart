import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_attachment_args.dart';
import 'nfs_attachment_state.dart';

/// Manages attaching an NFS share to a VPC. A share can be attached to multiple VPCs by creating one `digitalocean.NfsAttachment` resource per VPC.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.Vpc("foobar", {
///     name: "example-vpc",
///     region: "atl1",
/// });
/// const foobarNfs = new digitalocean.Nfs("foobar", {
///     region: "atl1",
///     name: "example-nfs",
///     size: 50,
///     vpcId: foobar.id,
///     performanceTier: "high",
/// });
/// const foobarNfsAttachment = new digitalocean.NfsAttachment("foobar", {
///     shareId: foobarNfs.id,
///     vpcId: foobar.id,
///     region: "atl1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.Vpc("foobar",
///     name="example-vpc",
///     region="atl1")
/// foobar_nfs = digitalocean.Nfs("foobar",
///     region="atl1",
///     name="example-nfs",
///     size=50,
///     vpc_id=foobar.id,
///     performance_tier="high")
/// foobar_nfs_attachment = digitalocean.NfsAttachment("foobar",
///     share_id=foobar_nfs.id,
///     vpc_id=foobar.id,
///     region="atl1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.Vpc("foobar", new()
///     {
///         Name = "example-vpc",
///         Region = "atl1",
///     });
///
///     var foobarNfs = new DigitalOcean.Nfs("foobar", new()
///     {
///         Region = "atl1",
///         Name = "example-nfs",
///         Size = 50,
///         VpcId = foobar.Id,
///         PerformanceTier = "high",
///     });
///
///     var foobarNfsAttachment = new DigitalOcean.NfsAttachment("foobar", new()
///     {
///         ShareId = foobarNfs.Id,
///         VpcId = foobar.Id,
///         Region = "atl1",
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
/// 		foobar, err := digitalocean.NewVpc(ctx, "foobar", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("example-vpc"),
/// 			Region: pulumi.String("atl1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarNfs, err := digitalocean.NewNfs(ctx, "foobar", &digitalocean.NfsArgs{
/// 			Region:          pulumi.String("atl1"),
/// 			Name:            pulumi.String("example-nfs"),
/// 			Size:            pulumi.Int(50),
/// 			VpcId:           foobar.ID().ToIDOutput().ToStringOutput(),
/// 			PerformanceTier: pulumi.String("high"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfsAttachment(ctx, "foobar", &digitalocean.NfsAttachmentArgs{
/// 			ShareId: foobarNfs.ID().ToIDOutput().ToStringOutput(),
/// 			VpcId:   foobar.ID().ToIDOutput().ToStringOutput(),
/// 			Region:  pulumi.String("atl1"),
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
/// resource "digitalocean_vpc" "foobar" {
///   name   = "example-vpc"
///   region = "atl1"
/// }
/// resource "digitalocean_nfs" "foobar" {
///   region           = "atl1"
///   name             = "example-nfs"
///   size             = 50
///   vpc_id           = digitalocean_vpc.foobar.id
///   performance_tier = "high"
/// }
/// resource "digitalocean_nfsattachment" "foobar" {
///   share_id = digitalocean_nfs.foobar.id
///   vpc_id   = digitalocean_vpc.foobar.id
///   region   = "atl1"
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
///         var foobar = new Vpc("foobar", VpcArgs.builder()
///             .name("example-vpc")
///             .region("atl1")
///             .build());
///
///         var foobarNfs = new Nfs("foobarNfs", NfsArgs.builder()
///             .region("atl1")
///             .name("example-nfs")
///             .size(50)
///             .vpcId(foobar.id())
///             .performanceTier("high")
///             .build());
///
///         var foobarNfsAttachment = new NfsAttachment("foobarNfsAttachment", NfsAttachmentArgs.builder()
///             .shareId(foobarNfs.id())
///             .vpcId(foobar.id())
///             .region("atl1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:Vpc
///     properties:
///       name: example-vpc
///       region: atl1
///   foobarNfs:
///     type: digitalocean:Nfs
///     name: foobar
///     properties:
///       region: atl1
///       name: example-nfs
///       size: 50
///       vpcId: ${foobar.id}
///       performanceTier: high
///   foobarNfsAttachment:
///     type: digitalocean:NfsAttachment
///     name: foobar
///     properties:
///       shareId: ${foobarNfs.id}
///       vpcId: ${foobar.id}
///       region: atl1
/// ```
///
///
/// ### Multiple VPCs
///
/// Attach the same NFS share to additional VPCs one at a time:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const primary = new digitalocean.Vpc("primary", {
///     name: "primary-vpc",
///     region: "atl1",
/// });
/// const secondary = new digitalocean.Vpc("secondary", {
///     name: "secondary-vpc",
///     region: "atl1",
/// });
/// const example = new digitalocean.Nfs("example", {
///     region: "atl1",
///     name: "example-nfs",
///     size: 50,
///     vpcId: primary.id,
///     performanceTier: "high",
/// });
/// const primaryNfsAttachment = new digitalocean.NfsAttachment("primary", {
///     shareId: example.id,
///     vpcId: primary.id,
///     region: "atl1",
/// });
/// const secondaryNfsAttachment = new digitalocean.NfsAttachment("secondary", {
///     shareId: example.id,
///     vpcId: secondary.id,
///     region: "atl1",
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
///     region="atl1")
/// secondary = digitalocean.Vpc("secondary",
///     name="secondary-vpc",
///     region="atl1")
/// example = digitalocean.Nfs("example",
///     region="atl1",
///     name="example-nfs",
///     size=50,
///     vpc_id=primary.id,
///     performance_tier="high")
/// primary_nfs_attachment = digitalocean.NfsAttachment("primary",
///     share_id=example.id,
///     vpc_id=primary.id,
///     region="atl1")
/// secondary_nfs_attachment = digitalocean.NfsAttachment("secondary",
///     share_id=example.id,
///     vpc_id=secondary.id,
///     region="atl1",
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
///         Region = "atl1",
///     });
///
///     var secondary = new DigitalOcean.Vpc("secondary", new()
///     {
///         Name = "secondary-vpc",
///         Region = "atl1",
///     });
///
///     var example = new DigitalOcean.Nfs("example", new()
///     {
///         Region = "atl1",
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
///         Region = "atl1",
///     });
///
///     var secondaryNfsAttachment = new DigitalOcean.NfsAttachment("secondary", new()
///     {
///         ShareId = example.Id,
///         VpcId = secondary.Id,
///         Region = "atl1",
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
/// 			Region: pulumi.String("atl1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := digitalocean.NewVpc(ctx, "secondary", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("secondary-vpc"),
/// 			Region: pulumi.String("atl1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := digitalocean.NewNfs(ctx, "example", &digitalocean.NfsArgs{
/// 			Region:          pulumi.String("atl1"),
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
/// 			Region:  pulumi.String("atl1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfsAttachment(ctx, "secondary", &digitalocean.NfsAttachmentArgs{
/// 			ShareId: example.ID().ToIDOutput().ToStringOutput(),
/// 			VpcId:   secondary.ID().ToIDOutput().ToStringOutput(),
/// 			Region:  pulumi.String("atl1"),
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
///   region = "atl1"
/// }
/// resource "digitalocean_vpc" "secondary" {
///   name   = "secondary-vpc"
///   region = "atl1"
/// }
/// resource "digitalocean_nfs" "example" {
///   region           = "atl1"
///   name             = "example-nfs"
///   size             = 50
///   vpc_id           = digitalocean_vpc.primary.id
///   performance_tier = "high"
/// }
/// resource "digitalocean_nfsattachment" "primary" {
///   share_id = digitalocean_nfs.example.id
///   vpc_id   = digitalocean_vpc.primary.id
///   region   = "atl1"
/// }
/// resource "digitalocean_nfsattachment" "secondary" {
///   depends_on = [digitalocean_nfsattachment.primary]
///   share_id   = digitalocean_nfs.example.id
///   vpc_id     = digitalocean_vpc.secondary.id
///   region     = "atl1"
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
///             .region("atl1")
///             .build());
///
///         var secondary = new Vpc("secondary", VpcArgs.builder()
///             .name("secondary-vpc")
///             .region("atl1")
///             .build());
///
///         var example = new Nfs("example", NfsArgs.builder()
///             .region("atl1")
///             .name("example-nfs")
///             .size(50)
///             .vpcId(primary.id())
///             .performanceTier("high")
///             .build());
///
///         var primaryNfsAttachment = new NfsAttachment("primaryNfsAttachment", NfsAttachmentArgs.builder()
///             .shareId(example.id())
///             .vpcId(primary.id())
///             .region("atl1")
///             .build());
///
///         var secondaryNfsAttachment = new NfsAttachment("secondaryNfsAttachment", NfsAttachmentArgs.builder()
///             .shareId(example.id())
///             .vpcId(secondary.id())
///             .region("atl1")
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
///       region: atl1
///   secondary:
///     type: digitalocean:Vpc
///     properties:
///       name: secondary-vpc
///       region: atl1
///   example:
///     type: digitalocean:Nfs
///     properties:
///       region: atl1
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
///       region: atl1
///   secondaryNfsAttachment:
///     type: digitalocean:NfsAttachment
///     name: secondary
///     properties:
///       shareId: ${example.id}
///       vpcId: ${secondary.id}
///       region: atl1
///     options:
///       dependsOn:
///         - ${primaryNfsAttachment}
/// ```
///
///
/// Deleting an attachment resource detaches the share from that VPC only. Other VPC attachments remain in place.
///
/// ## Import
///
/// NFS attachments can be imported using the `shareId` and `vpcId` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/nfsAttachment:NfsAttachment foobar 506f78a4-e098-11e5-ad9f-000f53306ae1,d1ebc5a4-e098-11e5-ad9f-000f53306ae1
/// ```
class NfsAttachment extends pulumi.CustomResource {
  /// The region of the NFS share.
  late final pulumi.Output<String> region;
  /// The ID of the NFS share to attach.
  late final pulumi.Output<String> shareId;
  /// The ID of the VPC to attach the NFS share to.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [NfsAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NfsAttachment]. {@macro pulumi_index_nfs_attachment_nfs_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NfsAttachment(
    String name, {
    NfsAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfsAttachment:NfsAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    shareId = registerOutput<String>('shareId');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [NfsAttachment] resource's state with the given [name] and [id].
  static NfsAttachment get(
    String name,
    pulumi.Input<String> id, {
    NfsAttachmentState? state,
  }) {
    return NfsAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NfsAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfsAttachment:NfsAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    shareId = registerOutput<String>('shareId');
    vpcId = registerOutput<String>('vpcId');
  }
}
