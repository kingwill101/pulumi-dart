import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';

/// Provides a DigitalOcean Project resource.
///
/// Projects allow you to organize your resources into groups that fit the way you work.
/// You can group resources (like Droplets, Spaces, Load Balancers, domains, and Floating IPs)
/// in ways that align with the applications you host on DigitalOcean.
///
/// The following resource types can be associated with a project:
///
/// * App Platform Apps
/// * Database Clusters
/// * Domains
/// * Droplets
/// * Floating IPs
/// * Kubernetes Clusters
/// * Load Balancers
/// * Spaces Buckets
/// * Volumes
///
/// **Note:** A Terraform managed project cannot be set as a default project.
///
/// ## Example Usage
///
/// The following example demonstrates the creation of an empty project:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const playground = new digitalocean.Project("playground", {
///     name: "playground",
///     description: "A project to represent development resources.",
///     purpose: "Web Application",
///     environment: "Development",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// playground = digitalocean.Project("playground",
///     name="playground",
///     description="A project to represent development resources.",
///     purpose="Web Application",
///     environment="Development")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var playground = new DigitalOcean.Project("playground", new()
///     {
///         Name = "playground",
///         Description = "A project to represent development resources.",
///         Purpose = "Web Application",
///         Environment = "Development",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewProject(ctx, "playground", &digitalocean.ProjectArgs{
/// 			Name:        pulumi.String("playground"),
/// 			Description: pulumi.String("A project to represent development resources."),
/// 			Purpose:     pulumi.String("Web Application"),
/// 			Environment: pulumi.String("Development"),
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
/// import com.pulumi.digitalocean.Project;
/// import com.pulumi.digitalocean.ProjectArgs;
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
///         var playground = new Project("playground", ProjectArgs.builder()
///             .name("playground")
///             .description("A project to represent development resources.")
///             .purpose("Web Application")
///             .environment("Development")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   playground:
///     type: digitalocean:Project
///     properties:
///       name: playground
///       description: A project to represent development resources.
///       purpose: Web Application
///       environment: Development
/// ```
///
///
/// The following example demonstrates the creation of a project with a Droplet resource:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.Droplet("foobar", {
///     name: "example",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-22-04-x64",
///     region: digitalocean.Region.NYC3,
/// });
/// const playground = new digitalocean.Project("playground", {
///     name: "playground",
///     description: "A project to represent development resources.",
///     purpose: "Web Application",
///     environment: "Development",
///     resources: [foobar.dropletUrn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.Droplet("foobar",
///     name="example",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-22-04-x64",
///     region=digitalocean.Region.NYC3)
/// playground = digitalocean.Project("playground",
///     name="playground",
///     description="A project to represent development resources.",
///     purpose="Web Application",
///     environment="Development",
///     resources=[foobar.droplet_urn])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.Droplet("foobar", new()
///     {
///         Name = "example",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-22-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var playground = new DigitalOcean.Project("playground", new()
///     {
///         Name = "playground",
///         Description = "A project to represent development resources.",
///         Purpose = "Web Application",
///         Environment = "Development",
///         Resources = new[]
///         {
///             foobar.DropletUrn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := digitalocean.NewDroplet(ctx, "foobar", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("example"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-22-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewProject(ctx, "playground", &digitalocean.ProjectArgs{
/// 			Name:        pulumi.String("playground"),
/// 			Description: pulumi.String("A project to represent development resources."),
/// 			Purpose:     pulumi.String("Web Application"),
/// 			Environment: pulumi.String("Development"),
/// 			Resources: pulumi.StringArray{
/// 				foobar.DropletUrn,
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
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.Project;
/// import com.pulumi.digitalocean.ProjectArgs;
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
///         var foobar = new Droplet("foobar", DropletArgs.builder()
///             .name("example")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-22-04-x64")
///             .region("nyc3")
///             .build());
///
///         var playground = new Project("playground", ProjectArgs.builder()
///             .name("playground")
///             .description("A project to represent development resources.")
///             .purpose("Web Application")
///             .environment("Development")
///             .resources(foobar.dropletUrn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:Droplet
///     properties:
///       name: example
///       size: s-1vcpu-1gb
///       image: ubuntu-22-04-x64
///       region: nyc3
///   playground:
///     type: digitalocean:Project
///     properties:
///       name: playground
///       description: A project to represent development resources.
///       purpose: Web Application
///       environment: Development
///       resources:
///         - ${foobar.dropletUrn}
/// ```
///
///
/// ## Import
///
/// Projects can be imported using the `id` returned from DigitalOcean, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/project:Project myproject 245bcfd0-7f31-4ce6-a2bc-475a116cca97
/// ```
class Project extends pulumi.CustomResource {
  /// the date and time when the project was created, (ISO8601)
  late final pulumi.Output<String> createdAt;
  /// the description of the project
  late final pulumi.Output<String?> description;
  /// the environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`)
  late final pulumi.Output<String?> environment;
  /// a boolean indicating whether or not the project is the default project. (Default: "false")
  late final pulumi.Output<bool?> isDefault;
  /// The name of the Project
  late final pulumi.Output<String> name;
  /// the id of the project owner.
  late final pulumi.Output<int> ownerId;
  /// the unique universal identifier of the project owner.
  late final pulumi.Output<String> ownerUuid;
  /// the purpose of the project, (Default: "Web Application")
  late final pulumi.Output<String?> purpose;
  /// a list of uniform resource names (URNs) for the resources associated with the project
  late final pulumi.Output<List<String>> resources;
  /// the date and time when the project was last updated, (ISO8601)
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_index_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    environment = registerOutput<String?>('environment');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<int>('ownerId');
    ownerUuid = registerOutput<String>('ownerUuid');
    purpose = registerOutput<String?>('purpose');
    resources = registerOutput<List<String>>('resources');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    environment = registerOutput<String?>('environment');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<int>('ownerId');
    ownerUuid = registerOutput<String>('ownerUuid');
    purpose = registerOutput<String?>('purpose');
    resources = registerOutput<List<String>>('resources');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
