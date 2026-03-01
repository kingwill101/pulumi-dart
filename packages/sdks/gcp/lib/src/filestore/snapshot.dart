import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// A Google Cloud Filestore snapshot.
///
///
/// To get more information about Snapshot, see:
///
/// * [API documentation](https://cloud.google.com/filestore/docs/reference/rest/v1/projects.locations.instances.snapshots)
/// * How-to Guides
/// * [Creating Snapshots](https://cloud.google.com/filestore/docs/create-snapshots)
/// * [Official Documentation](https://cloud.google.com/filestore/docs/snapshots)
///
/// ## Example Usage
///
/// ### Filestore Snapshot Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.filestore.Instance("instance", {
///     name: "test-instance-for-snapshot",
///     location: "us-east1",
///     tier: "ENTERPRISE",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// const snapshot = new gcp.filestore.Snapshot("snapshot", {
///     name: "test-snapshot",
///     instance: instance.name,
///     location: "us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.filestore.Instance("instance",
///     name="test-instance-for-snapshot",
///     location="us-east1",
///     tier="ENTERPRISE",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
///     }])
/// snapshot = gcp.filestore.Snapshot("snapshot",
///     name="test-snapshot",
///     instance=instance.name,
///     location="us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Filestore.Instance("instance", new()
///     {
///         Name = "test-instance-for-snapshot",
///         Location = "us-east1",
///         Tier = "ENTERPRISE",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///             },
///         },
///     });
///
///     var snapshot = new Gcp.Filestore.Snapshot("snapshot", new()
///     {
///         Name = "test-snapshot",
///         Instance = instance.Name,
///         Location = "us-east1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := filestore.NewInstance(ctx, "instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("test-instance-for-snapshot"),
/// 			Location: pulumi.String("us-east1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = filestore.NewSnapshot(ctx, "snapshot", &filestore.SnapshotArgs{
/// 			Name:     pulumi.String("test-snapshot"),
/// 			Instance: instance.Name,
/// 			Location: pulumi.String("us-east1"),
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
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.filestore.Snapshot;
/// import com.pulumi.gcp.filestore.SnapshotArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("test-instance-for-snapshot")
///             .location("us-east1")
///             .tier("ENTERPRISE")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .name("test-snapshot")
///             .instance(instance.name())
///             .location("us-east1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: gcp:filestore:Snapshot
///     properties:
///       name: test-snapshot
///       instance: ${instance.name}
///       location: us-east1
///   instance:
///     type: gcp:filestore:Instance
///     properties:
///       name: test-instance-for-snapshot
///       location: us-east1
///       tier: ENTERPRISE
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
/// ```
///
/// ### Filestore Snapshot Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.filestore.Instance("instance", {
///     name: "test-instance-for-snapshot",
///     location: "us-west1",
///     tier: "ENTERPRISE",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// const snapshot = new gcp.filestore.Snapshot("snapshot", {
///     name: "test-snapshot",
///     instance: instance.name,
///     location: "us-west1",
///     description: "Snapshot of test-instance-for-snapshot",
///     labels: {
///         my_label: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.filestore.Instance("instance",
///     name="test-instance-for-snapshot",
///     location="us-west1",
///     tier="ENTERPRISE",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
///     }])
/// snapshot = gcp.filestore.Snapshot("snapshot",
///     name="test-snapshot",
///     instance=instance.name,
///     location="us-west1",
///     description="Snapshot of test-instance-for-snapshot",
///     labels={
///         "my_label": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Filestore.Instance("instance", new()
///     {
///         Name = "test-instance-for-snapshot",
///         Location = "us-west1",
///         Tier = "ENTERPRISE",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///             },
///         },
///     });
///
///     var snapshot = new Gcp.Filestore.Snapshot("snapshot", new()
///     {
///         Name = "test-snapshot",
///         Instance = instance.Name,
///         Location = "us-west1",
///         Description = "Snapshot of test-instance-for-snapshot",
///         Labels =
///         {
///             { "my_label", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := filestore.NewInstance(ctx, "instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("test-instance-for-snapshot"),
/// 			Location: pulumi.String("us-west1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = filestore.NewSnapshot(ctx, "snapshot", &filestore.SnapshotArgs{
/// 			Name:        pulumi.String("test-snapshot"),
/// 			Instance:    instance.Name,
/// 			Location:    pulumi.String("us-west1"),
/// 			Description: pulumi.String("Snapshot of test-instance-for-snapshot"),
/// 			Labels: pulumi.StringMap{
/// 				"my_label": pulumi.String("value"),
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
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.filestore.Snapshot;
/// import com.pulumi.gcp.filestore.SnapshotArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("test-instance-for-snapshot")
///             .location("us-west1")
///             .tier("ENTERPRISE")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .name("test-snapshot")
///             .instance(instance.name())
///             .location("us-west1")
///             .description("Snapshot of test-instance-for-snapshot")
///             .labels(Map.of("my_label", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: gcp:filestore:Snapshot
///     properties:
///       name: test-snapshot
///       instance: ${instance.name}
///       location: us-west1
///       description: Snapshot of test-instance-for-snapshot
///       labels:
///         my_label: value
///   instance:
///     type: gcp:filestore:Instance
///     properties:
///       name: test-instance-for-snapshot
///       location: us-west1
///       tier: ENTERPRISE
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
/// ```
///
///
/// ## Import
///
/// Snapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/snapshots/{{name}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{name}}`
///
/// * `{{location}}/{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, Snapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:filestore/snapshot:Snapshot default projects/{{project}}/locations/{{location}}/instances/{{instance}}/snapshots/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/snapshot:Snapshot default {{project}}/{{location}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/snapshot:Snapshot default {{location}}/{{instance}}/{{name}}
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The time when the snapshot was created in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The amount of bytes needed to allocate a full copy of the snapshot content.
  late final pulumi.Output<String> filesystemUsedBytes;
  /// The resource name of the filestore instance.
  late final pulumi.Output<String> instance;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  late final pulumi.Output<String> location;
  /// The resource name of the snapshot. The name must be unique within the specified instance.
  /// The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The snapshot state.
  late final pulumi.Output<String> state;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_filestore_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.filesystemUsedBytes = registerOutput<String>('filesystemUsedBytes');
    this.instance = registerOutput<String>('instance');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.filesystemUsedBytes = registerOutput<String>('filesystemUsedBytes');
    this.instance = registerOutput<String>('instance');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }
}
