import 'package:pulumi/pulumi.dart' as pulumi;
import 'flavor_access_args.dart';
import 'flavor_access_state.dart';

/// Manages a project access for flavor V2 resource within OpenStack.
///
/// > **Note:** You _must_ have admin privileges in your OpenStack cloud to use
/// this resource.
///
/// ---
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const project1 = new openstack.identity.Project("project_1", {name: "my-project"});
/// const flavor1 = new openstack.compute.Flavor("flavor_1", {
///     name: "my-flavor",
///     ram: 8096,
///     vcpus: 2,
///     disk: 20,
///     isPublic: false,
/// });
/// const access1 = new openstack.compute.FlavorAccess("access_1", {
///     tenantId: project1.id,
///     flavorId: flavor1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.Project("project_1", name="my-project")
/// flavor1 = openstack.compute.Flavor("flavor_1",
///     name="my-flavor",
///     ram=8096,
///     vcpus=2,
///     disk=20,
///     is_public=False)
/// access1 = openstack.compute.FlavorAccess("access_1",
///     tenant_id=project1.id,
///     flavor_id=flavor1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project1 = new OpenStack.Identity.Project("project_1", new()
///     {
///         Name = "my-project",
///     });
///
///     var flavor1 = new OpenStack.Compute.Flavor("flavor_1", new()
///     {
///         Name = "my-flavor",
///         Ram = 8096,
///         Vcpus = 2,
///         Disk = 20,
///         IsPublic = false,
///     });
///
///     var access1 = new OpenStack.Compute.FlavorAccess("access_1", new()
///     {
///         TenantId = project1.Id,
///         FlavorId = flavor1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project1, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name: pulumi.String("my-project"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		flavor1, err := compute.NewFlavor(ctx, "flavor_1", &compute.FlavorArgs{
/// 			Name:     pulumi.String("my-flavor"),
/// 			Ram:      pulumi.Int(8096),
/// 			Vcpus:    pulumi.Int(2),
/// 			Disk:     pulumi.Int(20),
/// 			IsPublic: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFlavorAccess(ctx, "access_1", &compute.FlavorAccessArgs{
/// 			TenantId: project1.ID(),
/// 			FlavorId: flavor1.ID(),
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
/// import com.pulumi.openstack.identity.Project;
/// import com.pulumi.openstack.identity.ProjectArgs;
/// import com.pulumi.openstack.compute.Flavor;
/// import com.pulumi.openstack.compute.FlavorArgs;
/// import com.pulumi.openstack.compute.FlavorAccess;
/// import com.pulumi.openstack.compute.FlavorAccessArgs;
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
///         var project1 = new Project("project1", ProjectArgs.builder()
///             .name("my-project")
///             .build());
///
///         var flavor1 = new Flavor("flavor1", FlavorArgs.builder()
///             .name("my-flavor")
///             .ram(8096)
///             .vcpus(2)
///             .disk(20)
///             .isPublic(false)
///             .build());
///
///         var access1 = new FlavorAccess("access1", FlavorAccessArgs.builder()
///             .tenantId(project1.id())
///             .flavorId(flavor1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project1:
///     type: openstack:identity:Project
///     name: project_1
///     properties:
///       name: my-project
///   flavor1:
///     type: openstack:compute:Flavor
///     name: flavor_1
///     properties:
///       name: my-flavor
///       ram: '8096'
///       vcpus: '2'
///       disk: '20'
///       isPublic: false
///   access1:
///     type: openstack:compute:FlavorAccess
///     name: access_1
///     properties:
///       tenantId: ${project1.id}
///       flavorId: ${flavor1.id}
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying all two arguments, separated
/// by a forward slash:
///
/// ```sh
/// $ pulumi import openstack:compute/flavorAccess:FlavorAccess access_1 flavor_id/tenant_id
/// ```
class FlavorAccess extends pulumi.CustomResource {
  /// The UUID of flavor to use. Changing this creates a new flavor access.
  late final pulumi.Output<String> flavorId;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new flavor access.
  late final pulumi.Output<String> region;
  /// The UUID of tenant which is allowed to use the flavor.
  /// Changing this creates a new flavor access.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [FlavorAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlavorAccess]. {@macro pulumi_compute_flavor_access_flavor_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlavorAccess(
    String name, {
    FlavorAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/flavorAccess:FlavorAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.flavorId = registerOutput<String>('flavorId');
    this.region = registerOutput<String>('region');
    this.tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [FlavorAccess] resource's state with the given [name] and [id].
  static FlavorAccess get(
    String name,
    pulumi.Input<String> id, {
    FlavorAccessState? state,
  }) {
    return FlavorAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlavorAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/flavorAccess:FlavorAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.flavorId = registerOutput<String>('flavorId');
    this.region = registerOutput<String>('region');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
