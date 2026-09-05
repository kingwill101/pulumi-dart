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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// # A host project provides network resources to associated service projects.
/// resource "gcp_compute_sharedvpchostproject" "host" {
///   project = "host-project-id"
/// }
/// # A service project gains access to network resources provided by its
/// # associated host project.
/// resource "gcp_compute_sharedvpcserviceproject" "service1" {
///   host_project    = gcp_compute_sharedvpchostproject.host.project
///   service_project = "service-project-id-1"
/// }
/// resource "gcp_compute_sharedvpcserviceproject" "service2" {
///   host_project    = gcp_compute_sharedvpchostproject.host.project
///   service_project = "service-project-id-2"
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
///
/// When using the `pulumi import` command, Google Compute Engine Shared VPC host projects can be imported using one of the formats above. For example:
///
///
/// ```sh
/// $ pulumi import gcp:compute/sharedVPCHostProject:SharedVPCHostProject default {{project_id}}
/// ```
class SharedVPCHostProject extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
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
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [SharedVPCHostProject] resource's state with the given [name] and [id].
  static SharedVPCHostProject get(
    String name,
    pulumi.Input<String> id, {
    SharedVPCHostProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SharedVPCHostProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [SharedVPCHostProject] resource.
  SharedVPCHostProject.reference(String urn)
    : super(
        'gcp:compute/sharedVPCHostProject:SharedVPCHostProject',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }
}
