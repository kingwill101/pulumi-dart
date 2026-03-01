import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_attachment_args.dart';
import 'nfs_attachment_state.dart';

/// Manages attaching a NFS share to a vpc.
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
/// });
/// const foobarNfsAttachment = new digitalocean.NfsAttachment("foobar", {
///     shareId: foobarNfs.id,
///     vpcId: foobar.id,
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
///     vpc_id=foobar.id)
/// foobar_nfs_attachment = digitalocean.NfsAttachment("foobar",
///     share_id=foobar_nfs.id,
///     vpc_id=foobar.id)
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
///     });
///
///     var foobarNfsAttachment = new DigitalOcean.NfsAttachment("foobar", new()
///     {
///         ShareId = foobarNfs.Id,
///         VpcId = foobar.Id,
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
/// 			Region: pulumi.String("atl1"),
/// 			Name:   pulumi.String("example-nfs"),
/// 			Size:   pulumi.Int(50),
/// 			VpcId:  foobar.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfsAttachment(ctx, "foobar", &digitalocean.NfsAttachmentArgs{
/// 			ShareId: foobarNfs.ID(),
/// 			VpcId:   foobar.ID(),
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
/// import com.pulumi.digitalocean.Nfs;
/// import com.pulumi.digitalocean.NfsArgs;
/// import com.pulumi.digitalocean.NfsAttachment;
/// import com.pulumi.digitalocean.NfsAttachmentArgs;
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
///             .build());
///
///         var foobarNfsAttachment = new NfsAttachment("foobarNfsAttachment", NfsAttachmentArgs.builder()
///             .shareId(foobarNfs.id())
///             .vpcId(foobar.id())
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
///   foobarNfsAttachment:
///     type: digitalocean:NfsAttachment
///     name: foobar
///     properties:
///       shareId: ${foobarNfs.id}
///       vpcId: ${foobar.id}
/// ```
///
///
/// ## Import
///
/// NFS attachments can be imported using the `share_id` and `vpc_id` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/nfsAttachment:NfsAttachment foobar 506f78a4-e098-11e5-ad9f-000f53306ae1,d1ebc5a4-e098-11e5-ad9f-000f53306ae1
/// ```
class NfsAttachment extends pulumi.CustomResource {
  late final pulumi.Output<String> region;
  /// The ID of the NFS share to attach.
  late final pulumi.Output<String> shareId;
  /// The ID of the vpc to attach the NFS share to.
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
    this.region = registerOutput<String>('region');
    this.shareId = registerOutput<String>('shareId');
    this.vpcId = registerOutput<String>('vpcId');
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
    this.region = registerOutput<String>('region');
    this.shareId = registerOutput<String>('shareId');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
