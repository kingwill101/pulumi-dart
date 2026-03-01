import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_type_v3_args.dart';
import 'volume_type_v3_state.dart';

/// Manages a V3 block storage volume type resource within OpenStack.
///
/// > **Note:** This usually requires admin privileges.
///
///
/// ## Example Usage
///
/// ### Basic Volume Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const volumeType1 = new openstack.blockstorage.VolumeTypeV3("volume_type_1", {
///     name: "volume_type_1",
///     description: "Volume type 1",
///     extraSpecs: {
///         capabilities: "gpu",
///         volume_backend_name: "ssd",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// volume_type1 = openstack.blockstorage.VolumeTypeV3("volume_type_1",
///     name="volume_type_1",
///     description="Volume type 1",
///     extra_specs={
///         "capabilities": "gpu",
///         "volume_backend_name": "ssd",
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
///     var volumeType1 = new OpenStack.BlockStorage.VolumeTypeV3("volume_type_1", new()
///     {
///         Name = "volume_type_1",
///         Description = "Volume type 1",
///         ExtraSpecs =
///         {
///             { "capabilities", "gpu" },
///             { "volume_backend_name", "ssd" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.NewVolumeTypeV3(ctx, "volume_type_1", &blockstorage.VolumeTypeV3Args{
/// 			Name:        pulumi.String("volume_type_1"),
/// 			Description: pulumi.String("Volume type 1"),
/// 			ExtraSpecs: pulumi.StringMap{
/// 				"capabilities":        pulumi.String("gpu"),
/// 				"volume_backend_name": pulumi.String("ssd"),
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
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3;
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3Args;
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
///         var volumeType1 = new VolumeTypeV3("volumeType1", VolumeTypeV3Args.builder()
///             .name("volume_type_1")
///             .description("Volume type 1")
///             .extraSpecs(Map.ofEntries(
///                 Map.entry("capabilities", "gpu"),
///                 Map.entry("volume_backend_name", "ssd")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   volumeType1:
///     type: openstack:blockstorage:VolumeTypeV3
///     name: volume_type_1
///     properties:
///       name: volume_type_1
///       description: Volume type 1
///       extraSpecs:
///         capabilities: gpu
///         volume_backend_name: ssd
/// ```
///
///
/// ### Volume Type with multiattach enabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const multiattach = new openstack.blockstorage.VolumeTypeV3("multiattach", {
///     name: "multiattach",
///     description: "Multiattach-enabled volume type",
///     extraSpecs: {
///         multiattach: "<is> True",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// multiattach = openstack.blockstorage.VolumeTypeV3("multiattach",
///     name="multiattach",
///     description="Multiattach-enabled volume type",
///     extra_specs={
///         "multiattach": "<is> True",
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
///     var multiattach = new OpenStack.BlockStorage.VolumeTypeV3("multiattach", new()
///     {
///         Name = "multiattach",
///         Description = "Multiattach-enabled volume type",
///         ExtraSpecs =
///         {
///             { "multiattach", "<is> True" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.NewVolumeTypeV3(ctx, "multiattach", &blockstorage.VolumeTypeV3Args{
/// 			Name:        pulumi.String("multiattach"),
/// 			Description: pulumi.String("Multiattach-enabled volume type"),
/// 			ExtraSpecs: pulumi.StringMap{
/// 				"multiattach": pulumi.String("<is> True"),
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
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3;
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3Args;
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
///         var multiattach = new VolumeTypeV3("multiattach", VolumeTypeV3Args.builder()
///             .name("multiattach")
///             .description("Multiattach-enabled volume type")
///             .extraSpecs(Map.of("multiattach", "<is> True"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   multiattach:
///     type: openstack:blockstorage:VolumeTypeV3
///     properties:
///       name: multiattach
///       description: Multiattach-enabled volume type
///       extraSpecs:
///         multiattach: <is> True
/// ```
///
///
/// ## Import
///
/// Volume types can be imported using the `volume_type_id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:blockstorage/volumeTypeV3:VolumeTypeV3 volume_type_1 941793f0-0a34-4bc4-b72e-a6326ae58283
/// ```
class VolumeTypeV3 extends pulumi.CustomResource {
  /// Human-readable description of the port. Changing
  /// this updates the `description` of an existing volume type.
  late final pulumi.Output<String> description;
  /// Key/Value pairs of metadata for the volume type.
  late final pulumi.Output<Map<String, String>> extraSpecs;
  /// Whether the volume type is public. Changing
  /// this updates the `is_public` of an existing volume type.
  late final pulumi.Output<bool> isPublic;
  /// Name of the volume type.  Changing this
  /// updates the `name` of an existing volume type.
  late final pulumi.Output<String> name;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> region;

  /// Creates a new [VolumeTypeV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeTypeV3]. {@macro pulumi_blockstorage_volume_type_v3_volume_type_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeTypeV3(
    String name, {
    VolumeTypeV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:blockstorage/volumeTypeV3:VolumeTypeV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.extraSpecs = registerOutput<Map<String, String>>('extraSpecs');
    this.isPublic = registerOutput<bool>('isPublic');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [VolumeTypeV3] resource's state with the given [name] and [id].
  static VolumeTypeV3 get(
    String name,
    pulumi.Input<String> id, {
    VolumeTypeV3State? state,
  }) {
    return VolumeTypeV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeTypeV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:blockstorage/volumeTypeV3:VolumeTypeV3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.extraSpecs = registerOutput<Map<String, String>>('extraSpecs');
    this.isPublic = registerOutput<bool>('isPublic');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
