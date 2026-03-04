import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_vpchost_project_args.dart';
import 'shared_vpchost_project_state.dart';

/// Enables the Google Compute Engine
/// [Shared VPC](https://cloud.google.com/compute/docs/shared-vpc)
/// feature for a project, assigning it as a Shared VPC host project.
///
/// For more information, see,
/// [the Project API documentation](https://cloud.google.com/compute/docs/reference/latest/projects),
/// where the Shared VPC feature is referred to by its former name "XPN".
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // A host project provides network resources to associated service projects.
/// const host = new gcp.compute.SharedVPCHostProject("host", {project: "host-project-id"});
/// // A service project gains access to network resources provided by its
/// // associated host project.
/// const service1 = new gcp.compute.SharedVPCServiceProject("service1", {
///     hostProject: host.project,
///     serviceProject: "service-project-id-1",
/// });
/// const service2 = new gcp.compute.SharedVPCServiceProject("service2", {
///     hostProject: host.project,
///     serviceProject: "service-project-id-2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # A host project provides network resources to associated service projects.
/// host = gcp.compute.SharedVPCHostProject("host", project="host-project-id")
/// # A service project gains access to network resources provided by its
/// # associated host project.
/// service1 = gcp.compute.SharedVPCServiceProject("service1",
///     host_project=host.project,
///     service_project="service-project-id-1")
/// service2 = gcp.compute.SharedVPCServiceProject("service2",
///     host_project=host.project,
///     service_project="service-project-id-2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // A host project provides network resources to associated service projects.
///     var host = new Gcp.Compute.SharedVPCHostProject("host", new()
///     {
///         Project = "host-project-id",
///     });
///
///     // A service project gains access to network resources provided by its
///     // associated host project.
///     var service1 = new Gcp.Compute.SharedVPCServiceProject("service1", new()
///     {
///         HostProject = host.Project,
///         ServiceProject = "service-project-id-1",
///     });
///
///     var service2 = new Gcp.Compute.SharedVPCServiceProject("service2", new()
///     {
///         HostProject = host.Project,
///         ServiceProject = "service-project-id-2",
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
/// 		// A host project provides network resources to associated service projects.
/// 		host, err := compute.NewSharedVPCHostProject(ctx, "host", &compute.SharedVPCHostProjectArgs{
/// 			Project: pulumi.String("host-project-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// A service project gains access to network resources provided by its
/// 		// associated host project.
/// 		_, err = compute.NewSharedVPCServiceProject(ctx, "service1", &compute.SharedVPCServiceProjectArgs{
/// 			HostProject:    host.Project,
/// 			ServiceProject: pulumi.String("service-project-id-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSharedVPCServiceProject(ctx, "service2", &compute.SharedVPCServiceProjectArgs{
/// 			HostProject:    host.Project,
/// 			ServiceProject: pulumi.String("service-project-id-2"),
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
/// import com.pulumi.gcp.compute.SharedVPCHostProject;
/// import com.pulumi.gcp.compute.SharedVPCHostProjectArgs;
/// import com.pulumi.gcp.compute.SharedVPCServiceProject;
/// import com.pulumi.gcp.compute.SharedVPCServiceProjectArgs;
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
///         // A host project provides network resources to associated service projects.
///         var host = new SharedVPCHostProject("host", SharedVPCHostProjectArgs.builder()
///             .project("host-project-id")
///             .build());
///
///         // A service project gains access to network resources provided by its
///         // associated host project.
///         var service1 = new SharedVPCServiceProject("service1", SharedVPCServiceProjectArgs.builder()
///             .hostProject(host.project())
///             .serviceProject("service-project-id-1")
///             .build());
///
///         var service2 = new SharedVPCServiceProject("service2", SharedVPCServiceProjectArgs.builder()
///             .hostProject(host.project())
///             .serviceProject("service-project-id-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # A host project provides network resources to associated service projects.
///   host:
///     type: gcp:compute:SharedVPCHostProject
///     properties:
///       project: host-project-id
///   # A service project gains access to network resources provided by its
///   # associated host project.
///   service1:
///     type: gcp:compute:SharedVPCServiceProject
///     properties:
///       hostProject: ${host.project}
///       serviceProject: service-project-id-1
///   service2:
///     type: gcp:compute:SharedVPCServiceProject
///     properties:
///       hostProject: ${host.project}
///       serviceProject: service-project-id-2
/// ```
///
///
/// ## Import
///
/// Google Compute Engine Shared VPC host project feature can be imported using `project`, e.g.
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, Google Compute Engine Shared VPC host projects can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/sharedVPCHostProject:SharedVPCHostProject default {{project_id}}
/// ```
class SharedVPCHostProject extends pulumi.CustomResource {
  /// The ID of the project that will serve as a Shared VPC host project
  late final pulumi.Output<String> project;

  /// Creates a new [SharedVPCHostProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedVPCHostProject]. {@macro pulumi_compute_shared_vpchost_project_shared_vpchost_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedVPCHostProject(
    String name, {
    SharedVPCHostProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/sharedVPCHostProject:SharedVPCHostProject',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    project = registerOutput<String>('project');
  }

  /// Gets an existing [SharedVPCHostProject] resource's state with the given [name] and [id].
  static SharedVPCHostProject get(
    String name,
    pulumi.Input<String> id, {
    SharedVPCHostProjectState? state,
  }) {
    return SharedVPCHostProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedVPCHostProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/sharedVPCHostProject:SharedVPCHostProject',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    project = registerOutput<String>('project');
  }
}
