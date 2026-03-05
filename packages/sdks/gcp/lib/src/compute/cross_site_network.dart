import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_site_network_args.dart';
import 'cross_site_network_state.dart';

/// Represents a cross-site-network resource. A CrossSiteNetwork is used to establish L2 connectivity between groups of Interconnects.
///
///
/// To get more information about CrossSiteNetwork, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/crossSiteNetworks)
/// * How-to Guides
/// * [Create a Cross-Site Interconnect](https://cloud.google.com/network-connectivity/docs/interconnect/how-to/cross-site/create-network)
///
/// ## Example Usage
///
/// ### Compute Cross Site Network Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_cross_site_network = new gcp.compute.CrossSiteNetwork("example-cross-site-network", {
///     name: "test-cross-site-network",
///     description: "Example cross site network",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_cross_site_network = gcp.compute.CrossSiteNetwork("example-cross-site-network",
///     name="test-cross-site-network",
///     description="Example cross site network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_cross_site_network = new Gcp.Compute.CrossSiteNetwork("example-cross-site-network", new()
///     {
///         Name = "test-cross-site-network",
///         Description = "Example cross site network",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewCrossSiteNetwork(ctx, "example-cross-site-network", &compute.CrossSiteNetworkArgs{
/// 			Name:        pulumi.String("test-cross-site-network"),
/// 			Description: pulumi.String("Example cross site network"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.CrossSiteNetwork;
/// import com.pulumi.gcp.compute.CrossSiteNetworkArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_cross_site_network = new CrossSiteNetwork("example-cross-site-network", CrossSiteNetworkArgs.builder()
///             .name("test-cross-site-network")
///             .description("Example cross site network")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-cross-site-network:
///     type: gcp:compute:CrossSiteNetwork
///     properties:
///       name: test-cross-site-network
///       description: Example cross site network
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// CrossSiteNetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/crossSiteNetworks/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, CrossSiteNetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/crossSiteNetwork:CrossSiteNetwork default projects/{{project}}/global/crossSiteNetworks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/crossSiteNetwork:CrossSiteNetwork default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/crossSiteNetwork:CrossSiteNetwork default {{name}}
/// ```
class CrossSiteNetwork extends pulumi.CustomResource {
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [CrossSiteNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CrossSiteNetwork]. {@macro pulumi_compute_cross_site_network_cross_site_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CrossSiteNetwork(
    String name, {
    CrossSiteNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/crossSiteNetwork:CrossSiteNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [CrossSiteNetwork] resource's state with the given [name] and [id].
  static CrossSiteNetwork get(
    String name,
    pulumi.Input<String> id, {
    CrossSiteNetworkState? state,
  }) {
    return CrossSiteNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CrossSiteNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/crossSiteNetwork:CrossSiteNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
