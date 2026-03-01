import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'fleet_default_cluster_config.dart';
import 'fleet_gkehub_state.dart';
import 'fleet_state.dart';

/// Fleet contains information about a group of clusters.
///
///
/// To get more information about Fleet, see:
///
/// * [API documentation](https://cloud.google.com/anthos/multicluster-management/reference/rest/v1/projects.locations.fleets)
/// * How-to Guides
/// * [Registering a Cluster to a Fleet](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Fleet Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.gkehub.Fleet("default", {
///     displayName: "my production fleet",
///     defaultClusterConfig: {
///         securityPostureConfig: {
///             mode: "DISABLED",
///             vulnerabilityMode: "VULNERABILITY_DISABLED",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.gkehub.Fleet("default",
///     display_name="my production fleet",
///     default_cluster_config={
///         "security_posture_config": {
///             "mode": "DISABLED",
///             "vulnerability_mode": "VULNERABILITY_DISABLED",
///         },
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
///     var @default = new Gcp.GkeHub.Fleet("default", new()
///     {
///         DisplayName = "my production fleet",
///         DefaultClusterConfig = new Gcp.GkeHub.Inputs.FleetDefaultClusterConfigArgs
///         {
///             SecurityPostureConfig = new Gcp.GkeHub.Inputs.FleetDefaultClusterConfigSecurityPostureConfigArgs
///             {
///                 Mode = "DISABLED",
///                 VulnerabilityMode = "VULNERABILITY_DISABLED",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFleet(ctx, "default", &gkehub.FleetArgs{
/// 			DisplayName: pulumi.String("my production fleet"),
/// 			DefaultClusterConfig: &gkehub.FleetDefaultClusterConfigArgs{
/// 				SecurityPostureConfig: &gkehub.FleetDefaultClusterConfigSecurityPostureConfigArgs{
/// 					Mode:              pulumi.String("DISABLED"),
/// 					VulnerabilityMode: pulumi.String("VULNERABILITY_DISABLED"),
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
/// import com.pulumi.gcp.gkehub.Fleet;
/// import com.pulumi.gcp.gkehub.FleetArgs;
/// import com.pulumi.gcp.gkehub.inputs.FleetDefaultClusterConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FleetDefaultClusterConfigSecurityPostureConfigArgs;
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
///         var default_ = new Fleet("default", FleetArgs.builder()
///             .displayName("my production fleet")
///             .defaultClusterConfig(FleetDefaultClusterConfigArgs.builder()
///                 .securityPostureConfig(FleetDefaultClusterConfigSecurityPostureConfigArgs.builder()
///                     .mode("DISABLED")
///                     .vulnerabilityMode("VULNERABILITY_DISABLED")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:gkehub:Fleet
///     properties:
///       displayName: my production fleet
///       defaultClusterConfig:
///         securityPostureConfig:
///           mode: DISABLED
///           vulnerabilityMode: VULNERABILITY_DISABLED
/// ```
///
///
/// ## Import
///
/// Fleet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/fleets/default`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Fleet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/fleet:Fleet default projects/{{project}}/locations/global/fleets/default
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/fleet:Fleet default {{project}}
/// ```
class Fleet extends pulumi.CustomResource {
  /// The time the fleet was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  late final pulumi.Output<FleetDefaultClusterConfig?> defaultClusterConfig;
  /// The time the fleet was deleted, in RFC3339 text format.
  late final pulumi.Output<String> deleteTime;
  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  late final pulumi.Output<String?> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The state of the fleet resource.
  /// Structure is documented below.
  late final pulumi.Output<List<FleetState>> states;
  /// Google-generated UUID for this resource. This is unique across all
  /// Fleet resources. If a Fleet resource is deleted and another
  /// resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;
  /// The time the fleet was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_gkehub_fleet_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(
    String name, {
    FleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.defaultClusterConfig = registerOutput<FleetDefaultClusterConfig?>('defaultClusterConfig');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.project = registerOutput<String>('project');
    this.states = registerOutput<List<FleetState>>('states');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Fleet] resource's state with the given [name] and [id].
  static Fleet get(
    String name,
    pulumi.Input<String> id, {
    FleetGkehubState? state,
  }) {
    return Fleet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Fleet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.defaultClusterConfig = registerOutput<FleetDefaultClusterConfig?>('defaultClusterConfig');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.project = registerOutput<String>('project');
    this.states = registerOutput<List<FleetState>>('states');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
