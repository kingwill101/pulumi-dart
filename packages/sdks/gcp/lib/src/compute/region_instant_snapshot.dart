import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instant_snapshot_args.dart';
import 'region_instant_snapshot_params.dart';
import 'region_instant_snapshot_state.dart';

/// Represents an instant snapshot resource.
///
/// An instant snapshot is an in-place backup of a disk that can be used to rapidly create a new disk in minutes.
///
/// Instant snapshots capture data at a specific point in time. They are optimized for rapidly restoring captured
/// data to a new disk. Use instant snapshots to quickly recover data in cases where the zone and disk are still intact
/// but the data on the disk has been lost or corrupted
///
///
/// To get more information about RegionInstantSnapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/instant-snapshots)
///
/// ## Example Usage
///
/// ### Region Instant Snapshot Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = new gcp.compute.RegionDisk("foo", {
///     name: "example-disk",
///     type: "pd-ssd",
///     region: "us-central1",
///     size: 10,
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
/// });
/// const _default = new gcp.compute.RegionInstantSnapshot("default", {
///     name: "instant-snapshot",
///     region: "us-central1",
///     sourceDisk: foo.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.compute.RegionDisk("foo",
///     name="example-disk",
///     type="pd-ssd",
///     region="us-central1",
///     size=10,
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ])
/// default = gcp.compute.RegionInstantSnapshot("default",
///     name="instant-snapshot",
///     region="us-central1",
///     source_disk=foo.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Gcp.Compute.RegionDisk("foo", new()
///     {
///         Name = "example-disk",
///         Type = "pd-ssd",
///         Region = "us-central1",
///         Size = 10,
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionInstantSnapshot("default", new()
///     {
///         Name = "instant-snapshot",
///         Region = "us-central1",
///         SourceDisk = foo.SelfLink,
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
/// 		foo, err := compute.NewRegionDisk(ctx, "foo", &compute.RegionDiskArgs{
/// 			Name:   pulumi.String("example-disk"),
/// 			Type:   pulumi.String("pd-ssd"),
/// 			Region: pulumi.String("us-central1"),
/// 			Size:   pulumi.Int(10),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionInstantSnapshot(ctx, "default", &compute.RegionInstantSnapshotArgs{
/// 			Name:       pulumi.String("instant-snapshot"),
/// 			Region:     pulumi.String("us-central1"),
/// 			SourceDisk: foo.SelfLink,
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
/// resource "gcp_compute_regiondisk" "foo" {
///   name          = "example-disk"
///   type          = "pd-ssd"
///   region        = "us-central1"
///   size          = 10
///   replica_zones = ["us-central1-a", "us-central1-f"]
/// }
/// resource "gcp_compute_regioninstantsnapshot" "default" {
///   name        = "instant-snapshot"
///   region      = "us-central1"
///   source_disk = gcp_compute_regiondisk.foo.self_link
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionDisk;
/// import com.pulumi.gcp.compute.RegionDiskArgs;
/// import com.pulumi.gcp.compute.RegionInstantSnapshot;
/// import com.pulumi.gcp.compute.RegionInstantSnapshotArgs;
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
///         var foo = new RegionDisk("foo", RegionDiskArgs.builder()
///             .name("example-disk")
///             .type("pd-ssd")
///             .region("us-central1")
///             .size(10)
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-f")
///             .build());
///
///         var default_ = new RegionInstantSnapshot("default", RegionInstantSnapshotArgs.builder()
///             .name("instant-snapshot")
///             .region("us-central1")
///             .sourceDisk(foo.selfLink())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: gcp:compute:RegionDisk
///     properties:
///       name: example-disk
///       type: pd-ssd
///       region: us-central1
///       size: 10
///       replicaZones:
///         - us-central1-a
///         - us-central1-f
///   default:
///     type: gcp:compute:RegionInstantSnapshot
///     properties:
///       name: instant-snapshot
///       region: us-central1
///       sourceDisk: ${foo.selfLink}
/// ```
///
///
/// ## Import
///
/// RegionInstantSnapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/instantSnapshots/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionInstantSnapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstantSnapshot:RegionInstantSnapshot default projects/{{project}}/regions/{{region}}/instantSnapshots/{{name}}
/// $ pulumi import gcp:compute/regionInstantSnapshot:RegionInstantSnapshot default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionInstantSnapshot:RegionInstantSnapshot default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionInstantSnapshot:RegionInstantSnapshot default {{name}}
/// ```
class RegionInstantSnapshot extends pulumi.CustomResource {
  /// The architecture of the instant snapshot.
  late final pulumi.Output<String> architecture;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Size of the snapshot, specified in GB.
  late final pulumi.Output<int> diskSizeGb;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;
  /// Labels to apply to this InstantSnapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<RegionInstantSnapshotParams?> params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A reference to the region where the disk is located.
  late final pulumi.Output<String> region;
  /// Resource status for the instant snapshot.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> resourceStatuses;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The source disk used to create this instant snapshot. You can provide this as a partial or full URL to the resource.
  late final pulumi.Output<String> sourceDisk;
  /// The ID value of the disk used to create this InstantSnapshot.
  late final pulumi.Output<String> sourceDiskId;
  /// URL of the source instant snapshot group.
  late final pulumi.Output<String> sourceInstantSnapshotGroup;
  /// The unique ID of the source instant snapshot group.
  late final pulumi.Output<String> sourceInstantSnapshotGroupId;
  /// The status of the instant snapshot.
  late final pulumi.Output<String> status;

  /// Creates a new [RegionInstantSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionInstantSnapshot]. {@macro pulumi_compute_region_instant_snapshot_region_instant_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionInstantSnapshot(
    String name, {
    RegionInstantSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstantSnapshot:RegionInstantSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String>('architecture');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    params = registerOutput<RegionInstantSnapshotParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstantSnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    resourceStatuses = registerOutput<List<Map<String, dynamic>>>('resourceStatuses');
    selfLink = registerOutput<String>('selfLink');
    sourceDisk = registerOutput<String>('sourceDisk');
    sourceDiskId = registerOutput<String>('sourceDiskId');
    sourceInstantSnapshotGroup = registerOutput<String>('sourceInstantSnapshotGroup');
    sourceInstantSnapshotGroupId = registerOutput<String>('sourceInstantSnapshotGroupId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [RegionInstantSnapshot] resource's state with the given [name] and [id].
  static RegionInstantSnapshot get(
    String name,
    pulumi.Input<String> id, {
    RegionInstantSnapshotState? state,
  }) {
    return RegionInstantSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionInstantSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstantSnapshot:RegionInstantSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String>('architecture');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    params = registerOutput<RegionInstantSnapshotParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstantSnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    resourceStatuses = registerOutput<List<Map<String, dynamic>>>('resourceStatuses');
    selfLink = registerOutput<String>('selfLink');
    sourceDisk = registerOutput<String>('sourceDisk');
    sourceDiskId = registerOutput<String>('sourceDiskId');
    sourceInstantSnapshotGroup = registerOutput<String>('sourceInstantSnapshotGroup');
    sourceInstantSnapshotGroupId = registerOutput<String>('sourceInstantSnapshotGroupId');
    status = registerOutput<String>('status');
  }
}
