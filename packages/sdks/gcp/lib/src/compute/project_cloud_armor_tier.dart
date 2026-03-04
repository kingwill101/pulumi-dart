import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_cloud_armor_tier_args.dart';
import 'project_cloud_armor_tier_state.dart';

/// Sets the Cloud Armor tier of the project.
///
///
/// To get more information about ProjectCloudArmorTier, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setCloudArmorTier)
/// * How-to Guides
/// * [Subscribing to Cloud Armor Enterprise](https://cloud.google.com/armor/docs/managed-protection-overview#subscribing_to_plus)
///
/// ## Example Usage
///
/// ### Compute Project Cloud Armor Tier Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudArmorTierConfig = new gcp.compute.ProjectCloudArmorTier("cloud_armor_tier_config", {cloudArmorTier: "CA_STANDARD"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloud_armor_tier_config = gcp.compute.ProjectCloudArmorTier("cloud_armor_tier_config", cloud_armor_tier="CA_STANDARD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudArmorTierConfig = new Gcp.Compute.ProjectCloudArmorTier("cloud_armor_tier_config", new()
///     {
///         CloudArmorTier = "CA_STANDARD",
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
/// 		_, err := compute.NewProjectCloudArmorTier(ctx, "cloud_armor_tier_config", &compute.ProjectCloudArmorTierArgs{
/// 			CloudArmorTier: pulumi.String("CA_STANDARD"),
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
/// import com.pulumi.gcp.compute.ProjectCloudArmorTier;
/// import com.pulumi.gcp.compute.ProjectCloudArmorTierArgs;
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
///         var cloudArmorTierConfig = new ProjectCloudArmorTier("cloudArmorTierConfig", ProjectCloudArmorTierArgs.builder()
///             .cloudArmorTier("CA_STANDARD")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloudArmorTierConfig:
///     type: gcp:compute:ProjectCloudArmorTier
///     name: cloud_armor_tier_config
///     properties:
///       cloudArmorTier: CA_STANDARD
/// ```
///
/// ### Compute Project Cloud Armor Tier Project Set
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "your_project_id",
///     name: "your_project_id",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const compute = new gcp.projects.Service("compute", {
///     project: project.projectId,
///     service: "compute.googleapis.com",
/// });
/// const cloudArmorTierConfig = new gcp.compute.ProjectCloudArmorTier("cloud_armor_tier_config", {
///     project: project.projectId,
///     cloudArmorTier: "CA_STANDARD",
/// }, {
///     dependsOn: [compute],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="your_project_id",
///     name="your_project_id",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// compute = gcp.projects.Service("compute",
///     project=project.project_id,
///     service="compute.googleapis.com")
/// cloud_armor_tier_config = gcp.compute.ProjectCloudArmorTier("cloud_armor_tier_config",
///     project=project.project_id,
///     cloud_armor_tier="CA_STANDARD",
///     opts = pulumi.ResourceOptions(depends_on=[compute]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "your_project_id",
///         Name = "your_project_id",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var compute = new Gcp.Projects.Service("compute", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "compute.googleapis.com",
///     });
///
///     var cloudArmorTierConfig = new Gcp.Compute.ProjectCloudArmorTier("cloud_armor_tier_config", new()
///     {
///         Project = project.ProjectId,
///         CloudArmorTier = "CA_STANDARD",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             compute,
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("your_project_id"),
/// 			Name:           pulumi.String("your_project_id"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		compute, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("compute.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewProjectCloudArmorTier(ctx, "cloud_armor_tier_config", &compute.ProjectCloudArmorTierArgs{
/// 			Project:        project.ProjectId,
/// 			CloudArmorTier: pulumi.String("CA_STANDARD"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			compute,
/// 		}))
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.compute.ProjectCloudArmorTier;
/// import com.pulumi.gcp.compute.ProjectCloudArmorTierArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("your_project_id")
///             .name("your_project_id")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var compute = new Service("compute", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("compute.googleapis.com")
///             .build());
///
///         var cloudArmorTierConfig = new ProjectCloudArmorTier("cloudArmorTierConfig", ProjectCloudArmorTierArgs.builder()
///             .project(project.projectId())
///             .cloudArmorTier("CA_STANDARD")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(compute)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: your_project_id
///       name: your_project_id
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   compute:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: compute.googleapis.com
///   cloudArmorTierConfig:
///     type: gcp:compute:ProjectCloudArmorTier
///     name: cloud_armor_tier_config
///     properties:
///       project: ${project.projectId}
///       cloudArmorTier: CA_STANDARD
///     options:
///       dependsOn:
///         - ${compute}
/// ```
///
///
/// ## Import
///
/// ProjectCloudArmorTier can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ProjectCloudArmorTier can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectCloudArmorTier:ProjectCloudArmorTier default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/projectCloudArmorTier:ProjectCloudArmorTier default {{project}}
/// ```
class ProjectCloudArmorTier extends pulumi.CustomResource {
  /// Managed protection tier to be set.
  /// Possible values are: `CA_STANDARD`, `CA_ENTERPRISE_PAYGO`, `CA_ENTERPRISE_ANNUAL`.
  late final pulumi.Output<String> cloudArmorTier;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectCloudArmorTier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectCloudArmorTier]. {@macro pulumi_compute_project_cloud_armor_tier_project_cloud_armor_tier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectCloudArmorTier(
    String name, {
    ProjectCloudArmorTierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/projectCloudArmorTier:ProjectCloudArmorTier',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudArmorTier = registerOutput<String>('cloudArmorTier');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectCloudArmorTier] resource's state with the given [name] and [id].
  static ProjectCloudArmorTier get(
    String name,
    pulumi.Input<String> id, {
    ProjectCloudArmorTierState? state,
  }) {
    return ProjectCloudArmorTier._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectCloudArmorTier._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/projectCloudArmorTier:ProjectCloudArmorTier',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudArmorTier = registerOutput<String>('cloudArmorTier');
    project = registerOutput<String>('project');
  }
}
