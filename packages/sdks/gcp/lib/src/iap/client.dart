import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_args.dart';
import 'client_state.dart';

/// ## Example Usage
///
/// ### Iap Client
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const projectService = new gcp.projects.Service("project_service", {
///     project: project.projectId,
///     service: "iap.googleapis.com",
/// });
/// const projectBrand = new gcp.iap.Brand("project_brand", {
///     supportEmail: "support@example.com",
///     applicationTitle: "Cloud IAP protected Application",
///     project: projectService.project,
/// });
/// const projectClient = new gcp.iap.Client("project_client", {
///     displayName: "Test Client",
///     brand: projectBrand.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// project_service = gcp.projects.Service("project_service",
///     project=project.project_id,
///     service="iap.googleapis.com")
/// project_brand = gcp.iap.Brand("project_brand",
///     support_email="support@example.com",
///     application_title="Cloud IAP protected Application",
///     project=project_service.project)
/// project_client = gcp.iap.Client("project_client",
///     display_name="Test Client",
///     brand=project_brand.name)
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
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var projectService = new Gcp.Projects.Service("project_service", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "iap.googleapis.com",
///     });
///
///     var projectBrand = new Gcp.Iap.Brand("project_brand", new()
///     {
///         SupportEmail = "support@example.com",
///         ApplicationTitle = "Cloud IAP protected Application",
///         Project = projectService.Project,
///     });
///
///     var projectClient = new Gcp.Iap.Client("project_client", new()
///     {
///         DisplayName = "Test Client",
///         Brand = projectBrand.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		projectService, err := projects.NewService(ctx, "project_service", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("iap.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		projectBrand, err := iap.NewBrand(ctx, "project_brand", &iap.BrandArgs{
/// 			SupportEmail:     pulumi.String("support@example.com"),
/// 			ApplicationTitle: pulumi.String("Cloud IAP protected Application"),
/// 			Project:          projectService.Project,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewClient(ctx, "project_client", &iap.ClientArgs{
/// 			DisplayName: pulumi.String("Test Client"),
/// 			Brand:       projectBrand.Name,
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.iap.Brand;
/// import com.pulumi.gcp.iap.BrandArgs;
/// import com.pulumi.gcp.iap.Client;
/// import com.pulumi.gcp.iap.ClientArgs;
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
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var projectService = new Service("projectService", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("iap.googleapis.com")
///             .build());
///
///         var projectBrand = new Brand("projectBrand", BrandArgs.builder()
///             .supportEmail("support@example.com")
///             .applicationTitle("Cloud IAP protected Application")
///             .project(projectService.project())
///             .build());
///
///         var projectClient = new Client("projectClient", ClientArgs.builder()
///             .displayName("Test Client")
///             .brand(projectBrand.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   projectService:
///     type: gcp:projects:Service
///     name: project_service
///     properties:
///       project: ${project.projectId}
///       service: iap.googleapis.com
///   projectBrand:
///     type: gcp:iap:Brand
///     name: project_brand
///     properties:
///       supportEmail: support@example.com
///       applicationTitle: Cloud IAP protected Application
///       project: ${projectService.project}
///   projectClient:
///     type: gcp:iap:Client
///     name: project_client
///     properties:
///       displayName: Test Client
///       brand: ${projectBrand.name}
/// ```
///
///
/// ## Import
///
/// Client can be imported using any of these accepted formats:
///
/// * `{{brand}}/identityAwareProxyClients/{{client_id}}`
///
/// * `{{brand}}/{{client_id}}`
///
/// When using the `pulumi import` command, Client can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/client:Client default {{brand}}/identityAwareProxyClients/{{client_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/client:Client default {{brand}}/{{client_id}}
/// ```
class Client extends pulumi.CustomResource {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  late final pulumi.Output<String> brand;
  /// Output only. Unique identifier of the OAuth client.
  late final pulumi.Output<String> clientId;
  /// Human-friendly name given to the OAuth client.
  late final pulumi.Output<String> displayName;
  /// Output only. Client secret of the OAuth client.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> secret;

  /// Creates a new [Client].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Client]. {@macro pulumi_iap_client_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Client(
    String name, {
    ClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/client:Client',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.brand = registerOutput<String>('brand');
    this.clientId = registerOutput<String>('clientId');
    this.displayName = registerOutput<String>('displayName');
    this.secret = registerOutput<String>('secret');
  }

  /// Gets an existing [Client] resource's state with the given [name] and [id].
  static Client get(
    String name,
    pulumi.Input<String> id, {
    ClientState? state,
  }) {
    return Client._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Client._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/client:Client',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.brand = registerOutput<String>('brand');
    this.clientId = registerOutput<String>('clientId');
    this.displayName = registerOutput<String>('displayName');
    this.secret = registerOutput<String>('secret');
  }
}
