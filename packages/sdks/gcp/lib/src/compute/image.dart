import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_image_encryption_key.dart';
import 'image_raw_disk.dart';
import 'image_shielded_instance_initial_state.dart';
import 'image_source_disk_encryption_key.dart';
import 'image_source_image_encryption_key.dart';
import 'image_source_snapshot_encryption_key.dart';
import 'image_state.dart';

/// Represents an Image resource.
///
/// Google Compute Engine uses operating system images to create the root
/// persistent disks for your instances. You specify an image when you create
/// an instance. Images contain a boot loader, an operating system, and a
/// root file system. Linux operating system images are also capable of
/// running containers on Compute Engine.
///
/// Images can be either public or custom.
///
/// Public images are provided and maintained by Google, open-source
/// communities, and third-party vendors. By default, all projects have
/// access to these images and can use them to create instances.  Custom
/// images are available only to your project. You can create a custom image
/// from root persistent disks and other images. Then, use the custom image
/// to create an instance.
///
///
/// To get more information about Image, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/images)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/images)
///
///
///
/// ## Example Usage
///
/// ### Image Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
///     family: "debian-12",
///     project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
///     name: "example-disk",
///     image: debian.then(debian => debian.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const example = new gcp.compute.Image("example", {
///     name: "example-image",
///     sourceDisk: persistent.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-12",
///     project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
///     name="example-disk",
///     image=debian.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// example = gcp.compute.Image("example",
///     name="example-image",
///     source_disk=persistent.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-12",
///         Project = "debian-cloud",
///     });
///
///     var persistent = new Gcp.Compute.Disk("persistent", new()
///     {
///         Name = "example-disk",
///         Image = debian.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var example = new Gcp.Compute.Image("example", new()
///     {
///         Name = "example-image",
///         SourceDisk = persistent.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-12"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// 			Name:  pulumi.String("example-disk"),
/// 			Image: pulumi.String(debian.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewImage(ctx, "example", &compute.ImageArgs{
/// 			Name:       pulumi.String("example-image"),
/// 			SourceDisk: persistent.ID(),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
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
///         final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-12")
///             .project("debian-cloud")
///             .build());
///
///         var persistent = new Disk("persistent", DiskArgs.builder()
///             .name("example-disk")
///             .image(debian.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var example = new Image("example", ImageArgs.builder()
///             .name("example-image")
///             .sourceDisk(persistent.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   persistent:
///     type: gcp:compute:Disk
///     properties:
///       name: example-disk
///       image: ${debian.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
///   example:
///     type: gcp:compute:Image
///     properties:
///       name: example-image
///       sourceDisk: ${persistent.id}
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-12
///         project: debian-cloud
/// ```
///
/// ### Image Guest Os
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
///     family: "debian-12",
///     project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
///     name: "example-disk",
///     image: debian.then(debian => debian.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const example = new gcp.compute.Image("example", {
///     name: "example-image",
///     sourceDisk: persistent.id,
///     guestOsFeatures: [
///         {
///             type: "UEFI_COMPATIBLE",
///         },
///         {
///             type: "VIRTIO_SCSI_MULTIQUEUE",
///         },
///         {
///             type: "GVNIC",
///         },
///         {
///             type: "SEV_CAPABLE",
///         },
///         {
///             type: "SEV_LIVE_MIGRATABLE_V2",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-12",
///     project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
///     name="example-disk",
///     image=debian.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// example = gcp.compute.Image("example",
///     name="example-image",
///     source_disk=persistent.id,
///     guest_os_features=[
///         {
///             "type": "UEFI_COMPATIBLE",
///         },
///         {
///             "type": "VIRTIO_SCSI_MULTIQUEUE",
///         },
///         {
///             "type": "GVNIC",
///         },
///         {
///             "type": "SEV_CAPABLE",
///         },
///         {
///             "type": "SEV_LIVE_MIGRATABLE_V2",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-12",
///         Project = "debian-cloud",
///     });
///
///     var persistent = new Gcp.Compute.Disk("persistent", new()
///     {
///         Name = "example-disk",
///         Image = debian.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var example = new Gcp.Compute.Image("example", new()
///     {
///         Name = "example-image",
///         SourceDisk = persistent.Id,
///         GuestOsFeatures = new[]
///         {
///             new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
///             {
///                 Type = "UEFI_COMPATIBLE",
///             },
///             new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
///             {
///                 Type = "VIRTIO_SCSI_MULTIQUEUE",
///             },
///             new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
///             {
///                 Type = "GVNIC",
///             },
///             new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
///             {
///                 Type = "SEV_CAPABLE",
///             },
///             new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
///             {
///                 Type = "SEV_LIVE_MIGRATABLE_V2",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-12"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// 			Name:  pulumi.String("example-disk"),
/// 			Image: pulumi.String(debian.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewImage(ctx, "example", &compute.ImageArgs{
/// 			Name:       pulumi.String("example-image"),
/// 			SourceDisk: persistent.ID(),
/// 			GuestOsFeatures: compute.ImageGuestOsFeatureArray{
/// 				&compute.ImageGuestOsFeatureArgs{
/// 					Type: pulumi.String("UEFI_COMPATIBLE"),
/// 				},
/// 				&compute.ImageGuestOsFeatureArgs{
/// 					Type: pulumi.String("VIRTIO_SCSI_MULTIQUEUE"),
/// 				},
/// 				&compute.ImageGuestOsFeatureArgs{
/// 					Type: pulumi.String("GVNIC"),
/// 				},
/// 				&compute.ImageGuestOsFeatureArgs{
/// 					Type: pulumi.String("SEV_CAPABLE"),
/// 				},
/// 				&compute.ImageGuestOsFeatureArgs{
/// 					Type: pulumi.String("SEV_LIVE_MIGRATABLE_V2"),
/// 				},
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
/// import com.pulumi.gcp.compute.inputs.ImageGuestOsFeatureArgs;
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
///         final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-12")
///             .project("debian-cloud")
///             .build());
///
///         var persistent = new Disk("persistent", DiskArgs.builder()
///             .name("example-disk")
///             .image(debian.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var example = new Image("example", ImageArgs.builder()
///             .name("example-image")
///             .sourceDisk(persistent.id())
///             .guestOsFeatures(
///                 ImageGuestOsFeatureArgs.builder()
///                     .type("UEFI_COMPATIBLE")
///                     .build(),
///                 ImageGuestOsFeatureArgs.builder()
///                     .type("VIRTIO_SCSI_MULTIQUEUE")
///                     .build(),
///                 ImageGuestOsFeatureArgs.builder()
///                     .type("GVNIC")
///                     .build(),
///                 ImageGuestOsFeatureArgs.builder()
///                     .type("SEV_CAPABLE")
///                     .build(),
///                 ImageGuestOsFeatureArgs.builder()
///                     .type("SEV_LIVE_MIGRATABLE_V2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   persistent:
///     type: gcp:compute:Disk
///     properties:
///       name: example-disk
///       image: ${debian.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
///   example:
///     type: gcp:compute:Image
///     properties:
///       name: example-image
///       sourceDisk: ${persistent.id}
///       guestOsFeatures:
///         - type: UEFI_COMPATIBLE
///         - type: VIRTIO_SCSI_MULTIQUEUE
///         - type: GVNIC
///         - type: SEV_CAPABLE
///         - type: SEV_LIVE_MIGRATABLE_V2
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-12
///         project: debian-cloud
/// ```
///
/// ### Image Basic Storage Location
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
///     family: "debian-12",
///     project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
///     name: "example-disk",
///     image: debian.then(debian => debian.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const example = new gcp.compute.Image("example", {
///     name: "example-sl-image",
///     sourceDisk: persistent.id,
///     storageLocations: ["us-central1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-12",
///     project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
///     name="example-disk",
///     image=debian.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// example = gcp.compute.Image("example",
///     name="example-sl-image",
///     source_disk=persistent.id,
///     storage_locations=["us-central1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-12",
///         Project = "debian-cloud",
///     });
///
///     var persistent = new Gcp.Compute.Disk("persistent", new()
///     {
///         Name = "example-disk",
///         Image = debian.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var example = new Gcp.Compute.Image("example", new()
///     {
///         Name = "example-sl-image",
///         SourceDisk = persistent.Id,
///         StorageLocations = new[]
///         {
///             "us-central1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-12"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// 			Name:  pulumi.String("example-disk"),
/// 			Image: pulumi.String(debian.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewImage(ctx, "example", &compute.ImageArgs{
/// 			Name:       pulumi.String("example-sl-image"),
/// 			SourceDisk: persistent.ID(),
/// 			StorageLocations: pulumi.StringArray{
/// 				pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
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
///         final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-12")
///             .project("debian-cloud")
///             .build());
///
///         var persistent = new Disk("persistent", DiskArgs.builder()
///             .name("example-disk")
///             .image(debian.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var example = new Image("example", ImageArgs.builder()
///             .name("example-sl-image")
///             .sourceDisk(persistent.id())
///             .storageLocations("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   persistent:
///     type: gcp:compute:Disk
///     properties:
///       name: example-disk
///       image: ${debian.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
///   example:
///     type: gcp:compute:Image
///     properties:
///       name: example-sl-image
///       sourceDisk: ${persistent.id}
///       storageLocations:
///         - us-central1
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-12
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// Image can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/images/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Image can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default projects/{{project}}/global/images/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default {{name}}
/// ```
class Image extends pulumi.CustomResource {
  /// Size of the image tar.gz archive stored in Google Cloud Storage (in
  /// bytes).
  late final pulumi.Output<int> archiveSizeBytes;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// Size of the image when restored onto a persistent disk (in GB).
  late final pulumi.Output<int> diskSizeGb;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The name of the image family to which this image belongs. You can
  /// create disks by specifying an image family instead of a specific
  /// image name. The image family always returns its latest image that is
  /// not deprecated. The name of the image family must comply with
  /// RFC1035.
  late final pulumi.Output<String?> family;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable images.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> guestOsFeatures;

  /// Encrypts the image using a customer-supplied encryption key.
  /// After you encrypt an image with a customer-supplied key, you must
  /// provide the same key if you use the image later (e.g. to create a
  /// disk from the image)
  /// Structure is documented below.
  late final pulumi.Output<ImageImageEncryptionKey?> imageEncryptionKey;

  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this Image.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Any applicable license URI.
  late final pulumi.Output<List<String>> licenses;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The parameters of the raw disk image.
  /// Structure is documented below.
  late final pulumi.Output<ImageRawDisk?> rawDisk;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Set the secure boot keys of shielded instance.
  /// Structure is documented below.
  late final pulumi.Output<ImageShieldedInstanceInitialState>
  shieldedInstanceInitialState;

  /// The source disk to create this image based on.
  /// You must provide either this property or the
  /// rawDisk.source property but not both to create an image.
  late final pulumi.Output<String?> sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if
  /// the source disk is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<ImageSourceDiskEncryptionKey?>
  sourceDiskEncryptionKey;

  /// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  late final pulumi.Output<String?> sourceImage;

  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<ImageSourceImageEncryptionKey?>
  sourceImageEncryptionKey;

  /// URL of the source snapshot used to create this image.
  /// In order to create an image, you must provide the full or partial URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The sourceImage URL
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  late final pulumi.Output<String?> sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if
  /// the source snapshot is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<ImageSourceSnapshotEncryptionKey?>
  sourceSnapshotEncryptionKey;

  /// Cloud Storage bucket storage location of the image
  /// (regional or multi-regional).
  /// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
  late final pulumi.Output<List<String>> storageLocations;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_compute_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(String name, {ImageArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:compute/image:Image',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    archiveSizeBytes = registerOutput<int>('archiveSizeBytes');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    family = registerOutput<String?>('family');
    guestOsFeatures = registerOutput<List<Map<String, dynamic>>>(
      'guestOsFeatures',
    );
    imageEncryptionKey = registerOutput<ImageImageEncryptionKey?>(
      'imageEncryptionKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageImageEncryptionKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    licenses = registerOutput<List<String>>('licenses');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rawDisk = registerOutput<ImageRawDisk?>(
      'rawDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageRawDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    selfLink = registerOutput<String>('selfLink');
    shieldedInstanceInitialState =
        registerOutput<ImageShieldedInstanceInitialState>(
          'shieldedInstanceInitialState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ImageShieldedInstanceInitialState.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceDisk = registerOutput<String?>('sourceDisk');
    sourceDiskEncryptionKey = registerOutput<ImageSourceDiskEncryptionKey?>(
      'sourceDiskEncryptionKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageSourceDiskEncryptionKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceImage = registerOutput<String?>('sourceImage');
    sourceImageEncryptionKey = registerOutput<ImageSourceImageEncryptionKey?>(
      'sourceImageEncryptionKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageSourceImageEncryptionKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceSnapshot = registerOutput<String?>('sourceSnapshot');
    sourceSnapshotEncryptionKey =
        registerOutput<ImageSourceSnapshotEncryptionKey?>(
          'sourceSnapshotEncryptionKey',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ImageSourceSnapshotEncryptionKey.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    storageLocations = registerOutput<List<String>>('storageLocations');
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
         'gcp:compute/image:Image',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    archiveSizeBytes = registerOutput<int>('archiveSizeBytes');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    family = registerOutput<String?>('family');
    guestOsFeatures = registerOutput<List<Map<String, dynamic>>>(
      'guestOsFeatures',
    );
    imageEncryptionKey = registerOutput<ImageImageEncryptionKey?>(
      'imageEncryptionKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageImageEncryptionKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    licenses = registerOutput<List<String>>('licenses');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rawDisk = registerOutput<ImageRawDisk?>(
      'rawDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageRawDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    selfLink = registerOutput<String>('selfLink');
    shieldedInstanceInitialState =
        registerOutput<ImageShieldedInstanceInitialState>(
          'shieldedInstanceInitialState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ImageShieldedInstanceInitialState.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceDisk = registerOutput<String?>('sourceDisk');
    sourceDiskEncryptionKey = registerOutput<ImageSourceDiskEncryptionKey?>(
      'sourceDiskEncryptionKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageSourceDiskEncryptionKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceImage = registerOutput<String?>('sourceImage');
    sourceImageEncryptionKey = registerOutput<ImageSourceImageEncryptionKey?>(
      'sourceImageEncryptionKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageSourceImageEncryptionKey.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceSnapshot = registerOutput<String?>('sourceSnapshot');
    sourceSnapshotEncryptionKey =
        registerOutput<ImageSourceSnapshotEncryptionKey?>(
          'sourceSnapshotEncryptionKey',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ImageSourceSnapshotEncryptionKey.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    storageLocations = registerOutput<List<String>>('storageLocations');
  }
}
