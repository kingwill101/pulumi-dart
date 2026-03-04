import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_default_network_tier_args.dart';
import 'project_default_network_tier_state.dart';

/// Configures the Google Compute Engine
/// [Default Network Tier](https://cloud.google.com/network-tiers/docs/using-network-service-tiers#setting_the_tier_for_all_resources_in_a_project)
/// for a project.
///
/// For more information, see,
/// [the Project API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setDefaultNetworkTier).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.ProjectDefaultNetworkTier("default", {networkTier: "PREMIUM"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.ProjectDefaultNetworkTier("default", network_tier="PREMIUM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.ProjectDefaultNetworkTier("default", new()
///     {
///         NetworkTier = "PREMIUM",
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
/// 		_, err := compute.NewProjectDefaultNetworkTier(ctx, "default", &compute.ProjectDefaultNetworkTierArgs{
/// 			NetworkTier: pulumi.String("PREMIUM"),
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
/// import com.pulumi.gcp.compute.ProjectDefaultNetworkTier;
/// import com.pulumi.gcp.compute.ProjectDefaultNetworkTierArgs;
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
///         var default_ = new ProjectDefaultNetworkTier("default", ProjectDefaultNetworkTierArgs.builder()
///             .networkTier("PREMIUM")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:ProjectDefaultNetworkTier
///     properties:
///       networkTier: PREMIUM
/// ```
///
///
/// ## Import
///
/// Compute Engine Default Network Tier can be imported using any of these accepted formats:
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, Compute Engine Default Network Tier can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectDefaultNetworkTier:ProjectDefaultNetworkTier default {{project_id}}
/// ```
class ProjectDefaultNetworkTier extends pulumi.CustomResource {
  /// The default network tier to be configured for the project.
  /// This field can take the following values: `PREMIUM` or `STANDARD`.
  ///
  /// - - -
  late final pulumi.Output<String> networkTier;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectDefaultNetworkTier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectDefaultNetworkTier]. {@macro pulumi_compute_project_default_network_tier_project_default_network_tier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectDefaultNetworkTier(
    String name, {
    ProjectDefaultNetworkTierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/projectDefaultNetworkTier:ProjectDefaultNetworkTier',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    networkTier = registerOutput<String>('networkTier');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectDefaultNetworkTier] resource's state with the given [name] and [id].
  static ProjectDefaultNetworkTier get(
    String name,
    pulumi.Input<String> id, {
    ProjectDefaultNetworkTierState? state,
  }) {
    return ProjectDefaultNetworkTier._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectDefaultNetworkTier._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/projectDefaultNetworkTier:ProjectDefaultNetworkTier',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    networkTier = registerOutput<String>('networkTier');
    project = registerOutput<String>('project');
  }
}
