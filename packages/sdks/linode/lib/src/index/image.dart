import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_image_sharing.dart';
import 'image_state.dart';
import 'image_timeouts.dart';

/// Provides a Linode Image resource.  This can be used to create, modify, and delete Linodes Images.  Linode Images are snapshots of a Linode Instance Disk which can then be used to provision more Linode Instances.  Images can be used across regions.
///
/// For more information, see [Linode's documentation on Images](https://www.linode.com/docs/platform/disk-images/linode-images/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-image).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = new linode.Instance("foo", {
///     type: "g6-nanode-1",
///     region: "us-central",
///     image: "linode/ubuntu22.04",
///     rootPass: "insecure-p4ssw0rd!!",
/// });
/// const bar = new linode.Image("bar", {
///     label: "foo-sda-image",
///     description: "Image taken from foo",
///     diskId: foo.disks.apply(disks => disks[0].id),
///     linodeId: foo.id,
///     tags: [
///         "image-tag",
///         "test",
///     ],
/// });
/// const barBased = new linode.Instance("bar_based", {
///     type: foo.type,
///     region: "eu-west",
///     image: bar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.Instance("foo",
///     type="g6-nanode-1",
///     region="us-central",
///     image="linode/ubuntu22.04",
///     root_pass="insecure-p4ssw0rd!!")
/// bar = linode.Image("bar",
///     label="foo-sda-image",
///     description="Image taken from foo",
///     disk_id=foo.disks[0].id,
///     linode_id=foo.id,
///     tags=[
///         "image-tag",
///         "test",
///     ])
/// bar_based = linode.Instance("bar_based",
///     type=foo.type,
///     region="eu-west",
///     image=bar.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.Instance("foo", new()
///     {
///         Type = "g6-nanode-1",
///         Region = "us-central",
///         Image = "linode/ubuntu22.04",
///         RootPass = "insecure-p4ssw0rd!!",
///     });
///
///     var bar = new Linode.Image("bar", new()
///     {
///         Label = "foo-sda-image",
///         Description = "Image taken from foo",
///         DiskId = foo.Disks.Apply(disks => disks[0].Id),
///         LinodeId = foo.Id,
///         Tags = new[]
///         {
///             "image-tag",
///             "test",
///         },
///     });
///
///     var barBased = new Linode.Instance("bar_based", new()
///     {
///         Type = foo.Type,
///         Region = "eu-west",
///         Image = bar.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := linode.NewInstance(ctx, "foo", &linode.InstanceArgs{
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			Region:   pulumi.String("us-central"),
/// 			Image:    pulumi.String("linode/ubuntu22.04"),
/// 			RootPass: pulumi.String("insecure-p4ssw0rd!!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := linode.NewImage(ctx, "bar", &linode.ImageArgs{
/// 			Label:       pulumi.String("foo-sda-image"),
/// 			Description: pulumi.String("Image taken from foo"),
/// 			DiskId: pulumi.Int(foo.Disks.ApplyT(func(disks []linode.InstanceDiskType) (*int, error) {
/// 				return &disks[0].Id, nil
/// 			}).(pulumi.IntPtrOutput)),
/// 			LinodeId: foo.ID(),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("image-tag"),
/// 				pulumi.String("test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstance(ctx, "bar_based", &linode.InstanceArgs{
/// 			Type:   foo.Type,
/// 			Region: pulumi.String("eu-west"),
/// 			Image:  bar.ID(),
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
/// import com.pulumi.linode.Image;
/// import com.pulumi.linode.ImageArgs;
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
///         var foo = new Instance("foo", InstanceArgs.builder()
///             .type("g6-nanode-1")
///             .region("us-central")
///             .image("linode/ubuntu22.04")
///             .rootPass("insecure-p4ssw0rd!!")
///             .build());
///
///         var bar = new Image("bar", ImageArgs.builder()
///             .label("foo-sda-image")
///             .description("Image taken from foo")
///             .diskId(foo.disks().applyValue(_disks -> _disks[0].id()))
///             .linodeId(foo.id())
///             .tags(
///                 "image-tag",
///                 "test")
///             .build());
///
///         var barBased = new Instance("barBased", InstanceArgs.builder()
///             .type(foo.type())
///             .region("eu-west")
///             .image(bar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:Instance
///     properties:
///       type: g6-nanode-1
///       region: us-central
///       image: linode/ubuntu22.04
///       rootPass: insecure-p4ssw0rd!!
///   bar:
///     type: linode:Image
///     properties:
///       label: foo-sda-image
///       description: Image taken from foo
///       diskId: ${foo.disks[0].id}
///       linodeId: ${foo.id}
///       tags:
///         - image-tag
///         - test
///   barBased:
///     type: linode:Instance
///     name: bar_based
///     properties:
///       type: ${foo.type}
///       region: eu-west
///       image: ${bar.id}
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
/// import * as std from "@pulumi/std";
///
/// const foobar = new linode.Image("foobar", {
///     label: "foobar-image",
///     description: "An image uploaded from Terraform!",
///     region: "us-southeast",
///     tags: [
///         "image-tag",
///         "test",
///     ],
///     filePath: "path/to/image.img.gz",
///     fileHash: std.filemd5({
///         input: "path/to/image.img.gz",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
/// import pulumi_std as std
///
/// foobar = linode.Image("foobar",
///     label="foobar-image",
///     description="An image uploaded from Terraform!",
///     region="us-southeast",
///     tags=[
///         "image-tag",
///         "test",
///     ],
///     file_path="path/to/image.img.gz",
///     file_hash=std.filemd5(input="path/to/image.img.gz").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.Image("foobar", new()
///     {
///         Label = "foobar-image",
///         Description = "An image uploaded from Terraform!",
///         Region = "us-southeast",
///         Tags = new[]
///         {
///             "image-tag",
///             "test",
///         },
///         FilePath = "path/to/image.img.gz",
///         FileHash = Std.Filemd5.Invoke(new()
///         {
///             Input = "path/to/image.img.gz",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilemd5, err := std.Filemd5(ctx, &std.Filemd5Args{
/// 			Input: "path/to/image.img.gz",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewImage(ctx, "foobar", &linode.ImageArgs{
/// 			Label:       pulumi.String("foobar-image"),
/// 			Description: pulumi.String("An image uploaded from Terraform!"),
/// 			Region:      pulumi.String("us-southeast"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("image-tag"),
/// 				pulumi.String("test"),
/// 			},
/// 			FilePath: pulumi.String("path/to/image.img.gz"),
/// 			FileHash: pulumi.String(invokeFilemd5.Result),
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
/// import com.pulumi.linode.Image;
/// import com.pulumi.linode.ImageArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filemd5Args;
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
///         var foobar = new Image("foobar", ImageArgs.builder()
///             .label("foobar-image")
///             .description("An image uploaded from Terraform!")
///             .region("us-southeast")
///             .tags(
///                 "image-tag",
///                 "test")
///             .filePath("path/to/image.img.gz")
///             .fileHash(StdFunctions.filemd5(Filemd5Args.builder()
///                 .input("path/to/image.img.gz")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:Image
///     properties:
///       label: foobar-image
///       description: An image uploaded from Terraform!
///       region: us-southeast
///       tags:
///         - image-tag
///         - test
///       filePath: path/to/image.img.gz
///       fileHash:
///         fn::invoke:
///           function: std:filemd5
///           arguments:
///             input: path/to/image.img.gz
///           return: result
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
/// import * as std from "@pulumi/std";
///
/// const foobar = new linode.Image("foobar", {
///     label: "foobar-image",
///     description: "An image uploaded from Terraform!",
///     region: "us-southeast",
///     tags: [
///         "image-tag",
///         "test",
///     ],
///     filePath: "path/to/image.img.gz",
///     fileHash: std.filemd5({
///         input: "path/to/image.img.gz",
///     }).then(invoke => invoke.result),
///     replicaRegions: [
///         "us-southeast",
///         "us-east",
///         "eu-west",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
/// import pulumi_std as std
///
/// foobar = linode.Image("foobar",
///     label="foobar-image",
///     description="An image uploaded from Terraform!",
///     region="us-southeast",
///     tags=[
///         "image-tag",
///         "test",
///     ],
///     file_path="path/to/image.img.gz",
///     file_hash=std.filemd5(input="path/to/image.img.gz").result,
///     replica_regions=[
///         "us-southeast",
///         "us-east",
///         "eu-west",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.Image("foobar", new()
///     {
///         Label = "foobar-image",
///         Description = "An image uploaded from Terraform!",
///         Region = "us-southeast",
///         Tags = new[]
///         {
///             "image-tag",
///             "test",
///         },
///         FilePath = "path/to/image.img.gz",
///         FileHash = Std.Filemd5.Invoke(new()
///         {
///             Input = "path/to/image.img.gz",
///         }).Apply(invoke => invoke.Result),
///         ReplicaRegions = new[]
///         {
///             "us-southeast",
///             "us-east",
///             "eu-west",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilemd5, err := std.Filemd5(ctx, &std.Filemd5Args{
/// 			Input: "path/to/image.img.gz",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewImage(ctx, "foobar", &linode.ImageArgs{
/// 			Label:       pulumi.String("foobar-image"),
/// 			Description: pulumi.String("An image uploaded from Terraform!"),
/// 			Region:      pulumi.String("us-southeast"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("image-tag"),
/// 				pulumi.String("test"),
/// 			},
/// 			FilePath: pulumi.String("path/to/image.img.gz"),
/// 			FileHash: pulumi.String(invokeFilemd5.Result),
/// 			ReplicaRegions: pulumi.StringArray{
/// 				pulumi.String("us-southeast"),
/// 				pulumi.String("us-east"),
/// 				pulumi.String("eu-west"),
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
/// import com.pulumi.linode.Image;
/// import com.pulumi.linode.ImageArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filemd5Args;
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
///         var foobar = new Image("foobar", ImageArgs.builder()
///             .label("foobar-image")
///             .description("An image uploaded from Terraform!")
///             .region("us-southeast")
///             .tags(
///                 "image-tag",
///                 "test")
///             .filePath("path/to/image.img.gz")
///             .fileHash(StdFunctions.filemd5(Filemd5Args.builder()
///                 .input("path/to/image.img.gz")
///                 .build()).result())
///             .replicaRegions(
///                 "us-southeast",
///                 "us-east",
///                 "eu-west")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:Image
///     properties:
///       label: foobar-image
///       description: An image uploaded from Terraform!
///       region: us-southeast
///       tags:
///         - image-tag
///         - test
///       filePath: path/to/image.img.gz
///       fileHash:
///         fn::invoke:
///           function: std:filemd5
///           arguments:
///             input: path/to/image.img.gz
///           return: result
///       replicaRegions:
///         - us-southeast
///         - us-east
///         - eu-west
/// ```
///
///
/// ## Import
///
/// Linodes Images can be imported using the Linode Image `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/image:Image myimage 1234567
/// ```
class Image extends pulumi.CustomResource {
  /// The capabilities of this Image.
  late final pulumi.Output<List<String>> capabilities;

  /// Whether this image supports cloud-init.
  late final pulumi.Output<bool> cloudInit;

  /// When this Image was created.
  late final pulumi.Output<String> created;

  /// The name of the User who created this Image.
  late final pulumi.Output<String> createdBy;

  /// Whether or not this Image is deprecated. Will only be True for deprecated public Images.
  late final pulumi.Output<bool> deprecated;

  /// A detailed description of this Image.
  late final pulumi.Output<String?> description;

  /// The ID of the Linode Disk that this Image will be created from.
  late final pulumi.Output<int?> diskId;

  /// Only Images created automatically (from a deleted Linode; type=automatic) will expire.
  late final pulumi.Output<String> expiry;

  /// The MD5 hash of the file to be uploaded. This is used to trigger file updates.
  late final pulumi.Output<String?> fileHash;

  /// The path of the image file to be uploaded.
  late final pulumi.Output<String?> filePath;

  /// Details about image sharing, including who the image is shared with and by. (**Note: v4beta only and may not currently be available to all users.**)
  late final pulumi.Output<ImageImageSharing> imageSharing;

  /// True if the Image is public.
  late final pulumi.Output<bool> isPublic;

  /// True if the Image is shared. (**Note: v4beta only and may not currently be available to all users.**)
  late final pulumi.Output<bool> isShared;

  /// A short description of the Image. Labels cannot contain special characters.
  late final pulumi.Output<String> label;

  /// The ID of the Linode that this Image will be created from.
  ///
  /// - - -
  ///
  /// &gt; **NOTICE:** Uploading images is currently in beta. Ensure `LINODE_API_VERSION` is set to `v4beta` in order to use this functionality.
  late final pulumi.Output<int?> linodeId;

  /// The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  late final pulumi.Output<String?> region;

  /// A list of regions that customer wants to replicate this image in. At least one valid region is required and only core regions allowed. Existing images in the regions not passed will be removed. See Replicate an Image [here](https://techdocs.akamai.com/linode-api/reference/post-replicate-image) for more details.
  late final pulumi.Output<List<String>?> replicaRegions;

  /// A list of image replications region and corresponding status.
  late final pulumi.Output<List<Map<String, dynamic>>> replications;

  /// The minimum size this Image needs to deploy. Size is in MB.
  late final pulumi.Output<int> size;

  /// The status of an image replica.
  late final pulumi.Output<String> status;

  /// A list of customized tags.
  late final pulumi.Output<List<String>> tags;
  late final pulumi.Output<ImageTimeouts?> timeouts;

  /// The total size of the image in all available regions.
  late final pulumi.Output<int> totalSize;

  /// How the Image was created. 'Manual' Images can be created at any time. 'Automatic' images are created automatically from a deleted Linode.
  late final pulumi.Output<String> type;

  /// The upstream distribution vendor. Nil for private Images.
  late final pulumi.Output<String> vendor;

  /// Whether to wait for all image replications become `available`. Default to false.
  ///
  /// - - -
  late final pulumi.Output<bool> waitForReplications;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_index_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(String name, {ImageArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'linode:index/image:Image',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    capabilities = registerOutput<List<String>>('capabilities');
    cloudInit = registerOutput<bool>('cloudInit');
    created = registerOutput<String>('created');
    createdBy = registerOutput<String>('createdBy');
    deprecated = registerOutput<bool>('deprecated');
    description = registerOutput<String?>('description');
    diskId = registerOutput<int?>('diskId');
    expiry = registerOutput<String>('expiry');
    fileHash = registerOutput<String?>('fileHash');
    filePath = registerOutput<String?>('filePath');
    imageSharing = registerOutput<ImageImageSharing>('imageSharing');
    isPublic = registerOutput<bool>('isPublic');
    isShared = registerOutput<bool>('isShared');
    label = registerOutput<String>('label');
    linodeId = registerOutput<int?>('linodeId');
    region = registerOutput<String?>('region');
    replicaRegions = registerOutput<List<String>?>('replicaRegions');
    replications = registerOutput<List<Map<String, dynamic>>>('replications');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>>('tags');
    timeouts = registerOutput<ImageTimeouts?>('timeouts');
    totalSize = registerOutput<int>('totalSize');
    type = registerOutput<String>('type');
    vendor = registerOutput<String>('vendor');
    waitForReplications = registerOutput<bool>('waitForReplications');
  }

  /// Gets an existing [Image] resource's state with the given [name] and [id].
  static Image get(String name, pulumi.Input<String> id, {ImageState? state}) {
    return Image._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Image._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/image:Image',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    capabilities = registerOutput<List<String>>('capabilities');
    cloudInit = registerOutput<bool>('cloudInit');
    created = registerOutput<String>('created');
    createdBy = registerOutput<String>('createdBy');
    deprecated = registerOutput<bool>('deprecated');
    description = registerOutput<String?>('description');
    diskId = registerOutput<int?>('diskId');
    expiry = registerOutput<String>('expiry');
    fileHash = registerOutput<String?>('fileHash');
    filePath = registerOutput<String?>('filePath');
    imageSharing = registerOutput<ImageImageSharing>('imageSharing');
    isPublic = registerOutput<bool>('isPublic');
    isShared = registerOutput<bool>('isShared');
    label = registerOutput<String>('label');
    linodeId = registerOutput<int?>('linodeId');
    region = registerOutput<String?>('region');
    replicaRegions = registerOutput<List<String>?>('replicaRegions');
    replications = registerOutput<List<Map<String, dynamic>>>('replications');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>>('tags');
    timeouts = registerOutput<ImageTimeouts?>('timeouts');
    totalSize = registerOutput<int>('totalSize');
    type = registerOutput<String>('type');
    vendor = registerOutput<String>('vendor');
    waitForReplications = registerOutput<bool>('waitForReplications');
  }
}
