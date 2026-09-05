import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_args.dart';
import 'disk_async_primary_disk.dart';
import 'disk_disk_encryption_key.dart';
import 'disk_guest_os_feature.dart';
import 'disk_params.dart';
import 'disk_source_image_encryption_key.dart';
import 'disk_source_snapshot_encryption_key.dart';
import 'disk_state.dart';

/// Persistent disks are durable storage devices that function similarly to
/// the physical disks in a desktop or a server. Compute Engine manages the
/// hardware behind these devices to ensure data redundancy and optimize
/// performance for you. Persistent disks are available as either standard
/// hard disk drives (HDD) or solid-state drives (SSD).
///
/// Persistent disks are located independently from your virtual machine
/// instances, so you can detach or move persistent disks to keep your data
/// even after you delete your instances. Persistent disk performance scales
/// automatically with size, so you can resize your existing persistent disks
/// or add more persistent disks to an instance to meet your performance and
/// storage space requirements.
///
/// Add a persistent disk to your instance when you need reliable and
/// affordable storage with consistent performance characteristics.
///
///
/// To get more information about Disk, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/disks)
/// * How-to Guides
/// * [Adding a persistent disk](https://cloud.google.com/compute/docs/disks/add-persistent-disk)
///
///
///
/// ## Example Usage
///
/// ### Disk Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Disk("default", {
///     name: "test-disk",
///     type: "pd-ssd",
///     zone: "us-central1-a",
///     image: "debian-11-bullseye-v20220719",
///     labels: {
///         environment: "dev",
///     },
///     physicalBlockSizeBytes: 4096,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Disk("default",
///     name="test-disk",
///     type="pd-ssd",
///     zone="us-central1-a",
///     image="debian-11-bullseye-v20220719",
///     labels={
///         "environment": "dev",
///     },
///     physical_block_size_bytes=4096)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Disk("default", new()
///     {
///         Name = "test-disk",
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///         Image = "debian-11-bullseye-v20220719",
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///         PhysicalBlockSizeBytes = 4096,
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
/// 		_, err := compute.NewDisk(ctx, "default", &compute.DiskArgs{
/// 			Name:  pulumi.String("test-disk"),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 			Image: pulumi.String("debian-11-bullseye-v20220719"),
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
/// 			},
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_disk" "default" {
///   name  = "test-disk"
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
///   image = "debian-11-bullseye-v20220719"
///   labels = {
///     "environment" = "dev"
///   }
///   physical_block_size_bytes = 4096
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
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
///         var default_ = new Disk("default", DiskArgs.builder()
///             .name("test-disk")
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .image("debian-11-bullseye-v20220719")
///             .labels(Map.of("environment", "dev"))
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Disk
///     properties:
///       name: test-disk
///       type: pd-ssd
///       zone: us-central1-a
///       image: debian-11-bullseye-v20220719
///       labels:
///         environment: dev
///       physicalBlockSizeBytes: 4096
/// ```
///
/// ### Disk Async
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.compute.Disk("primary", {
///     name: "async-test-disk",
///     type: "pd-ssd",
///     zone: "us-central1-a",
///     physicalBlockSizeBytes: 4096,
/// });
/// const secondary = new gcp.compute.Disk("secondary", {
///     name: "async-secondary-test-disk",
///     type: "pd-ssd",
///     zone: "us-east1-c",
///     asyncPrimaryDisk: {
///         disk: primary.id,
///     },
///     physicalBlockSizeBytes: 4096,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.compute.Disk("primary",
///     name="async-test-disk",
///     type="pd-ssd",
///     zone="us-central1-a",
///     physical_block_size_bytes=4096)
/// secondary = gcp.compute.Disk("secondary",
///     name="async-secondary-test-disk",
///     type="pd-ssd",
///     zone="us-east1-c",
///     async_primary_disk={
///         "disk": primary.id,
///     },
///     physical_block_size_bytes=4096)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Compute.Disk("primary", new()
///     {
///         Name = "async-test-disk",
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///         PhysicalBlockSizeBytes = 4096,
///     });
///
///     var secondary = new Gcp.Compute.Disk("secondary", new()
///     {
///         Name = "async-secondary-test-disk",
///         Type = "pd-ssd",
///         Zone = "us-east1-c",
///         AsyncPrimaryDisk = new Gcp.Compute.Inputs.DiskAsyncPrimaryDiskArgs
///         {
///             Disk = primary.Id,
///         },
///         PhysicalBlockSizeBytes = 4096,
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
/// 		primary, err := compute.NewDisk(ctx, "primary", &compute.DiskArgs{
/// 			Name:                   pulumi.String("async-test-disk"),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Zone:                   pulumi.String("us-central1-a"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewDisk(ctx, "secondary", &compute.DiskArgs{
/// 			Name: pulumi.String("async-secondary-test-disk"),
/// 			Type: pulumi.String("pd-ssd"),
/// 			Zone: pulumi.String("us-east1-c"),
/// 			AsyncPrimaryDisk: &compute.DiskAsyncPrimaryDiskArgs{
/// 				Disk: primary.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_disk" "primary" {
///   name                      = "async-test-disk"
///   type                      = "pd-ssd"
///   zone                      = "us-central1-a"
///   physical_block_size_bytes = 4096
/// }
/// resource "gcp_compute_disk" "secondary" {
///   name = "async-secondary-test-disk"
///   type = "pd-ssd"
///   zone = "us-east1-c"
///   async_primary_disk = {
///     disk = gcp_compute_disk.primary.id
///   }
///   physical_block_size_bytes = 4096
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.inputs.DiskAsyncPrimaryDiskArgs;
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
///         var primary = new Disk("primary", DiskArgs.builder()
///             .name("async-test-disk")
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///         var secondary = new Disk("secondary", DiskArgs.builder()
///             .name("async-secondary-test-disk")
///             .type("pd-ssd")
///             .zone("us-east1-c")
///             .asyncPrimaryDisk(DiskAsyncPrimaryDiskArgs.builder()
///                 .disk(primary.id())
///                 .build())
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:compute:Disk
///     properties:
///       name: async-test-disk
///       type: pd-ssd
///       zone: us-central1-a
///       physicalBlockSizeBytes: 4096
///   secondary:
///     type: gcp:compute:Disk
///     properties:
///       name: async-secondary-test-disk
///       type: pd-ssd
///       zone: us-east1-c
///       asyncPrimaryDisk:
///         disk: ${primary.id}
///       physicalBlockSizeBytes: 4096
/// ```
///
/// ### Disk Features
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Disk("default", {
///     name: "test-disk-features",
///     type: "pd-ssd",
///     zone: "us-central1-a",
///     labels: {
///         environment: "dev",
///     },
///     guestOsFeatures: [
///         {
///             type: "SECURE_BOOT",
///         },
///         {
///             type: "MULTI_IP_SUBNET",
///         },
///         {
///             type: "WINDOWS",
///         },
///     ],
///     licenses: ["https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"],
///     physicalBlockSizeBytes: 4096,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Disk("default",
///     name="test-disk-features",
///     type="pd-ssd",
///     zone="us-central1-a",
///     labels={
///         "environment": "dev",
///     },
///     guest_os_features=[
///         {
///             "type": "SECURE_BOOT",
///         },
///         {
///             "type": "MULTI_IP_SUBNET",
///         },
///         {
///             "type": "WINDOWS",
///         },
///     ],
///     licenses=["https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"],
///     physical_block_size_bytes=4096)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Disk("default", new()
///     {
///         Name = "test-disk-features",
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///         GuestOsFeatures = new[]
///         {
///             new Gcp.Compute.Inputs.DiskGuestOsFeatureArgs
///             {
///                 Type = "SECURE_BOOT",
///             },
///             new Gcp.Compute.Inputs.DiskGuestOsFeatureArgs
///             {
///                 Type = "MULTI_IP_SUBNET",
///             },
///             new Gcp.Compute.Inputs.DiskGuestOsFeatureArgs
///             {
///                 Type = "WINDOWS",
///             },
///         },
///         Licenses = new[]
///         {
///             "https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core",
///         },
///         PhysicalBlockSizeBytes = 4096,
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
/// 		_, err := compute.NewDisk(ctx, "default", &compute.DiskArgs{
/// 			Name: pulumi.String("test-disk-features"),
/// 			Type: pulumi.String("pd-ssd"),
/// 			Zone: pulumi.String("us-central1-a"),
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
/// 			},
/// 			GuestOsFeatures: compute.DiskGuestOsFeatureArray{
/// 				&compute.DiskGuestOsFeatureArgs{
/// 					Type: pulumi.String("SECURE_BOOT"),
/// 				},
/// 				&compute.DiskGuestOsFeatureArgs{
/// 					Type: pulumi.String("MULTI_IP_SUBNET"),
/// 				},
/// 				&compute.DiskGuestOsFeatureArgs{
/// 					Type: pulumi.String("WINDOWS"),
/// 				},
/// 			},
/// 			Licenses: pulumi.StringArray{
/// 				pulumi.String("https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"),
/// 			},
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_disk" "default" {
///   name = "test-disk-features"
///   type = "pd-ssd"
///   zone = "us-central1-a"
///   labels = {
///     "environment" = "dev"
///   }
///   guest_os_features {
///     type = "SECURE_BOOT"
///   }
///   guest_os_features {
///     type = "MULTI_IP_SUBNET"
///   }
///   guest_os_features {
///     type = "WINDOWS"
///   }
///   licenses                  = ["https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"]
///   physical_block_size_bytes = 4096
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.inputs.DiskGuestOsFeatureArgs;
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
///         var default_ = new Disk("default", DiskArgs.builder()
///             .name("test-disk-features")
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .labels(Map.of("environment", "dev"))
///             .guestOsFeatures(
///                 DiskGuestOsFeatureArgs.builder()
///                     .type("SECURE_BOOT")
///                     .build(),
///                 DiskGuestOsFeatureArgs.builder()
///                     .type("MULTI_IP_SUBNET")
///                     .build(),
///                 DiskGuestOsFeatureArgs.builder()
///                     .type("WINDOWS")
///                     .build())
///             .licenses("https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core")
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Disk
///     properties:
///       name: test-disk-features
///       type: pd-ssd
///       zone: us-central1-a
///       labels:
///         environment: dev
///       guestOsFeatures:
///         - type: SECURE_BOOT
///         - type: MULTI_IP_SUBNET
///         - type: WINDOWS
///       licenses:
///         - https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core
///       physicalBlockSizeBytes: 4096
/// ```
///
///
/// ## Import
///
/// Disk can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/disks/{{name}}`
/// * `{{project}}/{{zone}}/{{name}}`
/// * `{{zone}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Disk can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/disk:Disk default projects/{{project}}/zones/{{zone}}/disks/{{name}}
/// $ pulumi import gcp:compute/disk:Disk default {{project}}/{{zone}}/{{name}}
/// $ pulumi import gcp:compute/disk:Disk default {{zone}}/{{name}}
/// $ pulumi import gcp:compute/disk:Disk default {{name}}
/// ```
class Disk extends pulumi.CustomResource {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  late final pulumi.Output<String> accessMode;
  /// The architecture of the disk. Values include `X86_64`, `ARM64`.
  late final pulumi.Output<String?> architecture;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<DiskAsyncPrimaryDisk?> asyncPrimaryDisk;
  /// If set to true, a snapshot of the disk will be created before it is destroyed.
  /// If your disk is encrypted with customer managed encryption keys these will be reused for the snapshot creation.
  /// The name of the snapshot by default will be `{{disk-name}}-YYYYMMDD-HHmm`
  late final pulumi.Output<bool?> createSnapshotBeforeDestroy;
  /// This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  late final pulumi.Output<String?> createSnapshotBeforeDestroyPrefix;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;
  /// Encrypts the disk using a customer-supplied encryption key.
  /// After you encrypt a disk with a customer-supplied key, you must
  /// provide the same key if you use the disk later (e.g. to create a disk
  /// snapshot or an image, or to attach the disk to a virtual machine).
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the disk.
  /// If you do not provide an encryption key when creating the disk, then
  /// the disk will be encrypted using an automatically generated key and
  /// you do not need to provide a key to use the disk later.
  /// Structure is documented below.
  late final pulumi.Output<DiskDiskEncryptionKey?> diskEncryptionKey;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> diskId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Whether this disk is using confidential compute mode.
  /// Note: Only supported on hyperdisk skus, diskEncryptionKey is required when setting to true
  late final pulumi.Output<bool> enableConfidentialCompute;
  /// (Optional, Beta)
  /// Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  late final pulumi.Output<bool?> eraseWindowsVssSignature;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  late final pulumi.Output<List<DiskGuestOsFeature>> guestOsFeatures;
  /// The image from which to initialize this disk. This can be
  /// one of: the image's `selfLink`, `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`. If referred by family, the
  /// images names must include the family name. If they don't, use the
  /// [gcp.compute.Image data source](https://www.terraform.io/docs/providers/google/d/compute_image.html).
  /// For instance, the image `centos-6-v20180104` includes its family name `centos-6`.
  /// These images can be referred by family name here.
  late final pulumi.Output<String?> image;
  /// (Optional, Beta, Deprecated)
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  ///
  /// &gt; **Warning:** `interface` is deprecated and will be removed in a future major release. This field is no longer used and can be safely removed from your configurations; disk interfaces are automatically determined on attachment.
  late final pulumi.Output<String?> interface;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;
  /// Labels to apply to this disk.  A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Last attach timestamp in RFC3339 text format.
  late final pulumi.Output<String> lastAttachTimestamp;
  /// Last detach timestamp in RFC3339 text format.
  late final pulumi.Output<String> lastDetachTimestamp;
  /// Any applicable license URI.
  late final pulumi.Output<List<String>> licenses;
  /// (Optional, Beta)
  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  late final pulumi.Output<bool?> multiWriter;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<DiskParams?> params;
  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  late final pulumi.Output<int> physicalBlockSizeBytes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Indicates how many IOPS must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  late final pulumi.Output<int> provisionedIops;
  /// Indicates how much Throughput must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  late final pulumi.Output<int> provisionedThroughput;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// (Optional, Beta)
  /// Resource policies applied to this disk for automatic snapshot creations.
  /// ~&gt;**NOTE** This value does not support updating the
  /// resource policy, as resource policies can not be updated more than
  /// one at a time. Use
  /// `gcp.compute.DiskResourcePolicyAttachment`
  /// to allow for updating the resource policy attached to the disk.
  late final pulumi.Output<List<String>> resourcePolicies;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the `image` or
  /// `snapshot` parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with `image` or `snapshot`,
  /// the value must not be less than the size of the image
  /// or the size of the snapshot.
  /// ~&gt;**NOTE** If you change the size, the provider updates the disk size
  /// if upsizing is detected but recreates the disk if downsizing is requested.
  /// You can add `lifecycle.prevent_destroy` in the config to prevent destroying
  /// and recreating.
  late final pulumi.Output<int> size;
  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. If the snapshot is in another
  /// project than this disk, you must supply a full URL. For example, the
  /// following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot`
  /// * `projects/project/global/snapshots/snapshot`
  /// * `global/snapshots/snapshot`
  late final pulumi.Output<String?> snapshot;
  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
  /// * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
  /// * projects/{project}/zones/{zone}/disks/{disk}
  /// * projects/{project}/regions/{region}/disks/{disk}
  /// * zones/{zone}/disks/{disk}
  /// * regions/{region}/disks/{disk}
  late final pulumi.Output<String?> sourceDisk;
  /// The ID value of the disk used to create this image. This value may
  /// be used to determine whether the image was taken from the current
  /// or a previous instance of a given disk name.
  late final pulumi.Output<String> sourceDiskId;
  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<DiskSourceImageEncryptionKey?> sourceImageEncryptionKey;
  /// The ID value of the image used to create this disk. This value
  /// identifies the exact image that was used to create this persistent
  /// disk. For example, if you created the persistent disk from an image
  /// that was later deleted and recreated under the same name, the source
  /// image ID would identify the exact version of the image that was used.
  late final pulumi.Output<String> sourceImageId;
  /// The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `zones/zone/instantSnapshots/instantSnapshot`
  late final pulumi.Output<String?> sourceInstantSnapshot;
  /// The unique ID of the instant snapshot used to create this disk. This value identifies
  /// the exact instant snapshot that was used to create this persistent disk.
  /// For example, if you created the persistent disk from an instant snapshot that was later
  /// deleted and recreated under the same name, the source instant snapshot ID would identify
  /// the exact version of the instant snapshot that was used.
  late final pulumi.Output<String> sourceInstantSnapshotId;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  late final pulumi.Output<DiskSourceSnapshotEncryptionKey?> sourceSnapshotEncryptionKey;
  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  late final pulumi.Output<String> sourceSnapshotId;
  /// The full Google Cloud Storage URI where the disk image is stored.
  /// This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk.
  /// Valid URIs may start with gs:// or https://storage.googleapis.com/.
  /// This flag is not optimized for creating multiple disks from a source storage object.
  /// To create many disks from a source storage object, use gcloud compute images import instead.
  late final pulumi.Output<String?> sourceStorageObject;
  /// The URL or the name of the storage pool in which the new disk is created.
  /// For example:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /zones/{zone}/storagePools/{storagePool}
  /// * /{storagePool}
  late final pulumi.Output<String?> storagePool;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  late final pulumi.Output<String?> type;
  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  late final pulumi.Output<List<String>> users;
  /// A reference to the zone where the disk resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [Disk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Disk]. {@macro pulumi_compute_disk_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Disk(
    String name, {
    DiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/disk:Disk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accessMode = registerOutput<String>('accessMode');
    architecture = registerOutput<String?>('architecture');
    asyncPrimaryDisk = registerOutput<DiskAsyncPrimaryDisk?>('asyncPrimaryDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskAsyncPrimaryDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createSnapshotBeforeDestroy = registerOutput<bool?>('createSnapshotBeforeDestroy');
    createSnapshotBeforeDestroyPrefix = registerOutput<String?>('createSnapshotBeforeDestroyPrefix');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKey = registerOutput<DiskDiskEncryptionKey?>('diskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskId = registerOutput<String>('diskId');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableConfidentialCompute = registerOutput<bool>('enableConfidentialCompute');
    eraseWindowsVssSignature = registerOutput<bool?>('eraseWindowsVssSignature');
    guestOsFeatures = registerOutput<List<DiskGuestOsFeature>>('guestOsFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiskGuestOsFeature>(guardedValue, (value) => DiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())); });
    image = registerOutput<String?>('image');
    interface = registerOutput<String?>('interface');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastAttachTimestamp = registerOutput<String>('lastAttachTimestamp');
    lastDetachTimestamp = registerOutput<String>('lastDetachTimestamp');
    licenses = registerOutput<List<String>>('licenses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    multiWriter = registerOutput<bool?>('multiWriter');
    this.name = registerOutput<String>('name');
    params = registerOutput<DiskParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    physicalBlockSizeBytes = registerOutput<int>('physicalBlockSizeBytes');
    project = registerOutput<String>('project');
    provisionedIops = registerOutput<int>('provisionedIops');
    provisionedThroughput = registerOutput<int>('provisionedThroughput');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourcePolicies = registerOutput<List<String>>('resourcePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    snapshot = registerOutput<String?>('snapshot');
    sourceDisk = registerOutput<String?>('sourceDisk');
    sourceDiskId = registerOutput<String>('sourceDiskId');
    sourceImageEncryptionKey = registerOutput<DiskSourceImageEncryptionKey?>('sourceImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceImageId = registerOutput<String>('sourceImageId');
    sourceInstantSnapshot = registerOutput<String?>('sourceInstantSnapshot');
    sourceInstantSnapshotId = registerOutput<String>('sourceInstantSnapshotId');
    sourceSnapshotEncryptionKey = registerOutput<DiskSourceSnapshotEncryptionKey?>('sourceSnapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    sourceStorageObject = registerOutput<String?>('sourceStorageObject');
    storagePool = registerOutput<String?>('storagePool');
    type = registerOutput<String?>('type');
    users = registerOutput<List<String>>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [Disk] resource's state with the given [name] and [id].
  static Disk get(
    String name,
    pulumi.Input<String> id, {
    DiskState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Disk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Disk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/disk:Disk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessMode = registerOutput<String>('accessMode');
    architecture = registerOutput<String?>('architecture');
    asyncPrimaryDisk = registerOutput<DiskAsyncPrimaryDisk?>('asyncPrimaryDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskAsyncPrimaryDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createSnapshotBeforeDestroy = registerOutput<bool?>('createSnapshotBeforeDestroy');
    createSnapshotBeforeDestroyPrefix = registerOutput<String?>('createSnapshotBeforeDestroyPrefix');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKey = registerOutput<DiskDiskEncryptionKey?>('diskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskId = registerOutput<String>('diskId');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableConfidentialCompute = registerOutput<bool>('enableConfidentialCompute');
    eraseWindowsVssSignature = registerOutput<bool?>('eraseWindowsVssSignature');
    guestOsFeatures = registerOutput<List<DiskGuestOsFeature>>('guestOsFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiskGuestOsFeature>(guardedValue, (value) => DiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())); });
    image = registerOutput<String?>('image');
    interface = registerOutput<String?>('interface');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastAttachTimestamp = registerOutput<String>('lastAttachTimestamp');
    lastDetachTimestamp = registerOutput<String>('lastDetachTimestamp');
    licenses = registerOutput<List<String>>('licenses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    multiWriter = registerOutput<bool?>('multiWriter');
    this.name = registerOutput<String>('name');
    params = registerOutput<DiskParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    physicalBlockSizeBytes = registerOutput<int>('physicalBlockSizeBytes');
    project = registerOutput<String>('project');
    provisionedIops = registerOutput<int>('provisionedIops');
    provisionedThroughput = registerOutput<int>('provisionedThroughput');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourcePolicies = registerOutput<List<String>>('resourcePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    snapshot = registerOutput<String?>('snapshot');
    sourceDisk = registerOutput<String?>('sourceDisk');
    sourceDiskId = registerOutput<String>('sourceDiskId');
    sourceImageEncryptionKey = registerOutput<DiskSourceImageEncryptionKey?>('sourceImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceImageId = registerOutput<String>('sourceImageId');
    sourceInstantSnapshot = registerOutput<String?>('sourceInstantSnapshot');
    sourceInstantSnapshotId = registerOutput<String>('sourceInstantSnapshotId');
    sourceSnapshotEncryptionKey = registerOutput<DiskSourceSnapshotEncryptionKey?>('sourceSnapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    sourceStorageObject = registerOutput<String?>('sourceStorageObject');
    storagePool = registerOutput<String?>('storagePool');
    type = registerOutput<String?>('type');
    users = registerOutput<List<String>>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [Disk] resource.
  Disk.reference(String urn)
    : super(
        'gcp:compute/disk:Disk',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accessMode = registerOutput<String>('accessMode');
    architecture = registerOutput<String?>('architecture');
    asyncPrimaryDisk = registerOutput<DiskAsyncPrimaryDisk?>('asyncPrimaryDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskAsyncPrimaryDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createSnapshotBeforeDestroy = registerOutput<bool?>('createSnapshotBeforeDestroy');
    createSnapshotBeforeDestroyPrefix = registerOutput<String?>('createSnapshotBeforeDestroyPrefix');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKey = registerOutput<DiskDiskEncryptionKey?>('diskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskId = registerOutput<String>('diskId');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableConfidentialCompute = registerOutput<bool>('enableConfidentialCompute');
    eraseWindowsVssSignature = registerOutput<bool?>('eraseWindowsVssSignature');
    guestOsFeatures = registerOutput<List<DiskGuestOsFeature>>('guestOsFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiskGuestOsFeature>(guardedValue, (value) => DiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())); });
    image = registerOutput<String?>('image');
    interface = registerOutput<String?>('interface');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastAttachTimestamp = registerOutput<String>('lastAttachTimestamp');
    lastDetachTimestamp = registerOutput<String>('lastDetachTimestamp');
    licenses = registerOutput<List<String>>('licenses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    multiWriter = registerOutput<bool?>('multiWriter');
    this.name = registerOutput<String>('name');
    params = registerOutput<DiskParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    physicalBlockSizeBytes = registerOutput<int>('physicalBlockSizeBytes');
    project = registerOutput<String>('project');
    provisionedIops = registerOutput<int>('provisionedIops');
    provisionedThroughput = registerOutput<int>('provisionedThroughput');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourcePolicies = registerOutput<List<String>>('resourcePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    snapshot = registerOutput<String?>('snapshot');
    sourceDisk = registerOutput<String?>('sourceDisk');
    sourceDiskId = registerOutput<String>('sourceDiskId');
    sourceImageEncryptionKey = registerOutput<DiskSourceImageEncryptionKey?>('sourceImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceImageId = registerOutput<String>('sourceImageId');
    sourceInstantSnapshot = registerOutput<String?>('sourceInstantSnapshot');
    sourceInstantSnapshotId = registerOutput<String>('sourceInstantSnapshotId');
    sourceSnapshotEncryptionKey = registerOutput<DiskSourceSnapshotEncryptionKey?>('sourceSnapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    sourceStorageObject = registerOutput<String?>('sourceStorageObject');
    storagePool = registerOutput<String?>('storagePool');
    type = registerOutput<String?>('type');
    users = registerOutput<List<String>>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zone = registerOutput<String>('zone');
  }
}
