import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_resources_args.dart';
import 'project_resources_state.dart';

/// Assign resources to a DigitalOcean Project. This is useful if you need to assign resources
/// managed in Terraform to a DigitalOcean Project managed outside of Terraform.
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
/// ## Example Usage
///
/// The following example assigns a droplet to a Project managed outside of Terraform:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const playground = digitalocean.getProject({
///     name: "playground",
/// });
/// const foobar = new digitalocean.Droplet("foobar", {
///     name: "example",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-22-04-x64",
///     region: digitalocean.Region.NYC3,
/// });
/// const barfoo = new digitalocean.ProjectResources("barfoo", {
///     project: playground.then(playground => playground.id),
///     resources: [foobar.dropletUrn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// playground = digitalocean.get_project(name="playground")
/// foobar = digitalocean.Droplet("foobar",
///     name="example",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-22-04-x64",
///     region=digitalocean.Region.NYC3)
/// barfoo = digitalocean.ProjectResources("barfoo",
///     project=playground.id,
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
///     var playground = DigitalOcean.GetProject.Invoke(new()
///     {
///         Name = "playground",
///     });
///
///     var foobar = new DigitalOcean.Droplet("foobar", new()
///     {
///         Name = "example",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-22-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var barfoo = new DigitalOcean.ProjectResources("barfoo", new()
///     {
///         Project = playground.Apply(getProjectResult => getProjectResult.Id),
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
/// 		playground, err := digitalocean.LookupProject(ctx, &digitalocean.LookupProjectArgs{
/// 			Name: pulumi.StringRef("playground"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobar, err := digitalocean.NewDroplet(ctx, "foobar", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("example"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-22-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewProjectResources(ctx, "barfoo", &digitalocean.ProjectResourcesArgs{
/// 			Project: pulumi.String(playground.Id),
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
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetProjectArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.ProjectResources;
/// import com.pulumi.digitalocean.ProjectResourcesArgs;
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
///         final var playground = DigitaloceanFunctions.getProject(GetProjectArgs.builder()
///             .name("playground")
///             .build());
///
///         var foobar = new Droplet("foobar", DropletArgs.builder()
///             .name("example")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-22-04-x64")
///             .region("nyc3")
///             .build());
///
///         var barfoo = new ProjectResources("barfoo", ProjectResourcesArgs.builder()
///             .project(playground.id())
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
///   barfoo:
///     type: digitalocean:ProjectResources
///     properties:
///       project: ${playground.id}
///       resources:
///         - ${foobar.dropletUrn}
/// variables:
///   playground:
///     fn::invoke:
///       function: digitalocean:getProject
///       arguments:
///         name: playground
/// ```
///
///
/// ## Import
///
/// Importing this resource is not supported.
class ProjectResources extends pulumi.CustomResource {
  /// the ID of the project
  late final pulumi.Output<String> project;
  /// a list of uniform resource names (URNs) for the resources associated with the project
  late final pulumi.Output<List<String>> resources;

  /// Creates a new [ProjectResources].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectResources]. {@macro pulumi_index_project_resources_project_resources_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectResources(
    String name, {
    ProjectResourcesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/projectResources:ProjectResources',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    project = registerOutput<String>('project');
    resources = registerOutput<List<String>>('resources');
  }

  /// Gets an existing [ProjectResources] resource's state with the given [name] and [id].
  static ProjectResources get(
    String name,
    pulumi.Input<String> id, {
    ProjectResourcesState? state,
  }) {
    return ProjectResources._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectResources._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/projectResources:ProjectResources',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    project = registerOutput<String>('project');
    resources = registerOutput<List<String>>('resources');
  }
}
