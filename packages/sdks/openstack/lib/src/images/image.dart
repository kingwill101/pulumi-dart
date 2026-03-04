import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_state.dart';

/// Manages a V2 Image resource within OpenStack Glance.
///
/// &gt; **Note:** All arguments including the source image URL password will be
/// stored in the raw state as plain-text. Read more about sensitive data in
/// state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const rancheros = new openstack.images.Image("rancheros", {
///     name: "RancherOS",
///     imageSourceUrl: "https://releases.rancher.com/os/latest/rancheros-openstack.img",
///     containerFormat: "bare",
///     diskFormat: "qcow2",
///     properties: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rancheros = openstack.images.Image("rancheros",
///     name="RancherOS",
///     image_source_url="https://releases.rancher.com/os/latest/rancheros-openstack.img",
///     container_format="bare",
///     disk_format="qcow2",
///     properties={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rancheros = new OpenStack.Images.Image("rancheros", new()
///     {
///         Name = "RancherOS",
///         ImageSourceUrl = "https://releases.rancher.com/os/latest/rancheros-openstack.img",
///         ContainerFormat = "bare",
///         DiskFormat = "qcow2",
///         Properties =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/images"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := images.NewImage(ctx, "rancheros", &images.ImageArgs{
/// 			Name:            pulumi.String("RancherOS"),
/// 			ImageSourceUrl:  pulumi.String("https://releases.rancher.com/os/latest/rancheros-openstack.img"),
/// 			ContainerFormat: pulumi.String("bare"),
/// 			DiskFormat:      pulumi.String("qcow2"),
/// 			Properties: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.openstack.images.Image;
/// import com.pulumi.openstack.images.ImageArgs;
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
///         var rancheros = new Image("rancheros", ImageArgs.builder()
///             .name("RancherOS")
///             .imageSourceUrl("https://releases.rancher.com/os/latest/rancheros-openstack.img")
///             .containerFormat("bare")
///             .diskFormat("qcow2")
///             .properties(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rancheros:
///     type: openstack:images:Image
///     properties:
///       name: RancherOS
///       imageSourceUrl: https://releases.rancher.com/os/latest/rancheros-openstack.img
///       containerFormat: bare
///       diskFormat: qcow2
///       properties:
///         key: value
/// ```
///
///
/// ## Notes
///
/// ### Properties
///
/// This resource supports the ability to add properties to a resource during
/// creation as well as add, update, and delete properties during an update of this
/// resource.
///
/// Newer versions of OpenStack are adding some read-only properties to each image.
/// These properties start with the prefix `os_`. If these properties are detected,
/// this resource will automatically reconcile these with the user-provided
/// properties.
///
/// In addition, the `direct_url` and `stores` properties are also automatically reconciled if the
/// Image Service set it.
///
/// ## Import
///
/// Images can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:images/image:Image rancheros 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class Image extends pulumi.CustomResource {
  /// The checksum of the data associated with the image.
  late final pulumi.Output<String> checksum;

  /// The container format. Must be one of "bare",
  /// "ovf", "aki", "ari", "ami", "ova", "docker", "compressed".
  late final pulumi.Output<String> containerFormat;

  /// The date the image was created.
  late final pulumi.Output<String> createdAt;

  /// If true, this provider will decompress downloaded
  /// image before uploading it to OpenStack. Decompression algorithm is chosen by
  /// checking "Content-Type" or `Content-Disposition` header to detect the
  /// filename extension. Supported algorithms are: gzip, bzip2, xz and zst.
  /// Defaults to false. Changing this creates a new Image.
  late final pulumi.Output<bool?> decompress;

  /// The disk format. Must be one of "raw", "vhd",
  /// "vhdx", "vmdk", "vdi", "iso", "ploop", "qcow2", "aki", "ari", "ami"
  late final pulumi.Output<String> diskFormat;

  /// the trailing path after the glance
  /// endpoint that represent the location of the image
  /// or the path to retrieve it.
  late final pulumi.Output<String> file;

  /// If true, image will be hidden from public list.
  /// Defaults to false.
  late final pulumi.Output<bool?> hidden;
  late final pulumi.Output<String?> imageCachePath;

  /// Unique ID (valid UUID) of image to create. Changing
  /// this creates a new image.
  late final pulumi.Output<String> imageId;

  /// The password of basic auth to download
  /// `image_source_url`.
  late final pulumi.Output<String?> imageSourcePassword;

  /// This is the url of the raw image. If
  /// `web_download` is not used, then the image will be downloaded in the
  /// `image_cache_path` before being uploaded to Glance. Conflicts with
  /// `local_file_path`.
  late final pulumi.Output<String?> imageSourceUrl;

  /// The username of basic auth to download
  /// `image_source_url`.
  late final pulumi.Output<String?> imageSourceUsername;

  /// This is the filepath of the raw image file
  /// that will be uploaded to Glance. Conflicts with `image_source_url` and
  /// `web_download`.
  late final pulumi.Output<String?> localFilePath;

  /// The metadata associated with the image.
  /// Image metadata allow for meaningfully define the image properties
  /// and tags. See https://docs.openstack.org/glance/latest/user/metadefs-concepts.html.
  late final pulumi.Output<Map<String, String>> metadata;

  /// Amount of disk space (in GB) required to boot
  /// image. Defaults to 0.
  late final pulumi.Output<int?> minDiskGb;

  /// Amount of ram (in MB) required to boot image.
  /// Defauts to 0.
  late final pulumi.Output<int?> minRamMb;

  /// The name of the image.
  late final pulumi.Output<String> name;

  /// The id of the openstack user who owns the image.
  late final pulumi.Output<String> owner;

  /// A map of key/value pairs to set freeform
  /// information about an image. See the "Notes" section for further information
  /// about properties.
  late final pulumi.Output<Map<String, String>> properties;

  /// If true, image will not be deletable. Defaults to
  /// false.
  late final pulumi.Output<bool?> protected;

  /// The region in which to obtain the V2 Glance client. A
  /// Glance client is needed to create an Image that can be used with a compute
  /// instance. If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new Image.
  late final pulumi.Output<String> region;

  /// The path to the JSON-schema that represent
  /// the image or image
  late final pulumi.Output<String> schema;

  /// The size in bytes of the data associated with the image.
  late final pulumi.Output<int> sizeBytes;

  /// The status of the image. It can be "queued", "active"
  /// or "saving".
  late final pulumi.Output<String> status;

  /// The tags of the image. It must be a list of strings. At
  /// this time, it is not possible to delete all tags of an image.
  late final pulumi.Output<List<String>?> tags;

  /// The date the image was last updated.
  late final pulumi.Output<String> updatedAt;

  /// If false, the checksum will not be verified
  /// once the image is finished uploading. Conflicts with `web_download`. Defaults
  /// to true when not using `web_download`.
  late final pulumi.Output<bool?> verifyChecksum;

  /// The visibility of the image. Must be one of
  /// "public", "private", "community", or "shared". The ability to set the
  /// visibility depends upon the configuration of the OpenStack cloud.
  late final pulumi.Output<String?> visibility;

  /// If true, the "web-download" import method will be
  /// used to let Openstack download the image directly from the remote source.
  /// Conflicts with `local_file_path`. Defaults to false.
  late final pulumi.Output<bool?> webDownload;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_images_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(String name, {ImageArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'openstack:images/image:Image',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    checksum = registerOutput<String>('checksum');
    containerFormat = registerOutput<String>('containerFormat');
    createdAt = registerOutput<String>('createdAt');
    decompress = registerOutput<bool?>('decompress');
    diskFormat = registerOutput<String>('diskFormat');
    file = registerOutput<String>('file');
    hidden = registerOutput<bool?>('hidden');
    imageCachePath = registerOutput<String?>('imageCachePath');
    imageId = registerOutput<String>('imageId');
    imageSourcePassword = registerOutput<String?>('imageSourcePassword');
    imageSourceUrl = registerOutput<String?>('imageSourceUrl');
    imageSourceUsername = registerOutput<String?>('imageSourceUsername');
    localFilePath = registerOutput<String?>('localFilePath');
    metadata = registerOutput<Map<String, String>>('metadata');
    minDiskGb = registerOutput<int?>('minDiskGb');
    minRamMb = registerOutput<int?>('minRamMb');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    properties = registerOutput<Map<String, String>>('properties');
    protected = registerOutput<bool?>('protected');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
    sizeBytes = registerOutput<int>('sizeBytes');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    verifyChecksum = registerOutput<bool?>('verifyChecksum');
    visibility = registerOutput<String?>('visibility');
    webDownload = registerOutput<bool?>('webDownload');
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
         'openstack:images/image:Image',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    checksum = registerOutput<String>('checksum');
    containerFormat = registerOutput<String>('containerFormat');
    createdAt = registerOutput<String>('createdAt');
    decompress = registerOutput<bool?>('decompress');
    diskFormat = registerOutput<String>('diskFormat');
    file = registerOutput<String>('file');
    hidden = registerOutput<bool?>('hidden');
    imageCachePath = registerOutput<String?>('imageCachePath');
    imageId = registerOutput<String>('imageId');
    imageSourcePassword = registerOutput<String?>('imageSourcePassword');
    imageSourceUrl = registerOutput<String?>('imageSourceUrl');
    imageSourceUsername = registerOutput<String?>('imageSourceUsername');
    localFilePath = registerOutput<String?>('localFilePath');
    metadata = registerOutput<Map<String, String>>('metadata');
    minDiskGb = registerOutput<int?>('minDiskGb');
    minRamMb = registerOutput<int?>('minRamMb');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    properties = registerOutput<Map<String, String>>('properties');
    protected = registerOutput<bool?>('protected');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
    sizeBytes = registerOutput<int>('sizeBytes');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    verifyChecksum = registerOutput<bool?>('verifyChecksum');
    visibility = registerOutput<String?>('visibility');
    webDownload = registerOutput<bool?>('webDownload');
  }
}
