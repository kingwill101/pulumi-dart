import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_plane_access_args.dart';
import 'control_plane_access_state.dart';

/// Authorize the Runtime components to access directly with Apigee Control Plane.
///
///
/// To get more information about ControlPlaneAccess, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations/updateControlPlaneAccess)
/// * How-to Guides
/// * [Enable ControlPlane access](https://cloud.google.com/apigee/docs/hybrid/v1.14/install-enable-control-plane-access)
///
/// ## Example Usage
///
/// ### Apigee Control Plane Access Basic Test
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
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const apigee = new gcp.projects.Service("apigee", {
///     project: project.projectId,
///     service: "apigee.googleapis.com",
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: project.projectId,
///     runtimeType: "HYBRID",
/// }, {
///     dependsOn: [apigee],
/// });
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const synchronizer_iam = new gcp.projects.IAMMember("synchronizer-iam", {
///     project: project.projectId,
///     role: "roles/apigee.synchronizerManager",
///     member: pulumi.interpolate`serviceAccount:${serviceAccount.email}`,
/// });
/// const apigeeControlPlaneAccess = new gcp.apigee.ControlPlaneAccess("apigee_control_plane_access", {
///     name: apigeeOrg.name,
///     synchronizerIdentities: [pulumi.interpolate`serviceAccount:${serviceAccount.email}`],
///     analyticsPublisherIdentities: [pulumi.interpolate`serviceAccount:${serviceAccount.email}`],
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
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// apigee = gcp.projects.Service("apigee",
///     project=project.project_id,
///     service="apigee.googleapis.com")
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=project.project_id,
///     runtime_type="HYBRID",
///     opts = pulumi.ResourceOptions(depends_on=[apigee]))
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="my-account",
///     display_name="Service Account")
/// synchronizer_iam = gcp.projects.IAMMember("synchronizer-iam",
///     project=project.project_id,
///     role="roles/apigee.synchronizerManager",
///     member=service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// apigee_control_plane_access = gcp.apigee.ControlPlaneAccess("apigee_control_plane_access",
///     name=apigee_org.name,
///     synchronizer_identities=[service_account.email.apply(lambda email: f"serviceAccount:{email}")],
///     analytics_publisher_identities=[service_account.email.apply(lambda email: f"serviceAccount:{email}")])
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
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var apigee = new Gcp.Projects.Service("apigee", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apigee.googleapis.com",
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = project.ProjectId,
///         RuntimeType = "HYBRID",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigee,
///         },
///     });
///
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Service Account",
///     });
///
///     var synchronizer_iam = new Gcp.Projects.IAMMember("synchronizer-iam", new()
///     {
///         Project = project.ProjectId,
///         Role = "roles/apigee.synchronizerManager",
///         Member = serviceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var apigeeControlPlaneAccess = new Gcp.Apigee.ControlPlaneAccess("apigee_control_plane_access", new()
///     {
///         Name = apigeeOrg.Name,
///         SynchronizerIdentities = new[]
///         {
///             serviceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///         },
///         AnalyticsPublisherIdentities = new[]
///         {
///             serviceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigee2, err := projects.NewService(ctx, "apigee", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("apigee.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion: pulumi.String("us-central1"),
/// 			ProjectId:       project.ProjectId,
/// 			RuntimeType:     pulumi.String("HYBRID"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigee2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "synchronizer-iam", &projects.IAMMemberArgs{
/// 			Project: project.ProjectId,
/// 			Role:    pulumi.String("roles/apigee.synchronizerManager"),
/// 			Member: serviceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewControlPlaneAccess(ctx, "apigee_control_plane_access", &apigee.ControlPlaneAccessArgs{
/// 			Name: apigeeOrg.Name,
/// 			SynchronizerIdentities: pulumi.StringArray{
/// 				serviceAccount.Email.ApplyT(func(email string) (string, error) {
/// 					return fmt.Sprintf("serviceAccount:%v", email), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			AnalyticsPublisherIdentities: pulumi.StringArray{
/// 				serviceAccount.Email.ApplyT(func(email string) (string, error) {
/// 					return fmt.Sprintf("serviceAccount:%v", email), nil
/// 				}).(pulumi.StringOutput),
/// 			},
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
/// resource "gcp_organizations_project" "project" {
///   project_id      = "my-project"
///   name            = "my-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "apigee" {
///   project = gcp_organizations_project.project.project_id
///   service = "apigee.googleapis.com"
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on       = [gcp_projects_service.apigee]
///   analytics_region = "us-central1"
///   project_id       = gcp_organizations_project.project.project_id
///   runtime_type     = "HYBRID"
/// }
/// resource "gcp_serviceaccount_account" "service_account" {
///   account_id   = "my-account"
///   display_name = "Service Account"
/// }
/// resource "gcp_projects_iammember" "synchronizer-iam" {
///   project = gcp_organizations_project.project.project_id
///   role    = "roles/apigee.synchronizerManager"
///   member  ="serviceAccount:${gcp_serviceaccount_account.service_account.email}"
/// }
/// resource "gcp_apigee_controlplaneaccess" "apigee_control_plane_access" {
///   name                           = gcp_apigee_organization.apigee_org.name
///   synchronizer_identities        = ["serviceAccount:${gcp_serviceaccount_account.service_account.email}"]
///   analytics_publisher_identities = ["serviceAccount:${gcp_serviceaccount_account.service_account.email}"]
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
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.apigee.ControlPlaneAccess;
/// import com.pulumi.gcp.apigee.ControlPlaneAccessArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var apigee = new Service("apigee", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apigee.googleapis.com")
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(project.projectId())
///             .runtimeType("HYBRID")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigee)
///                 .build());
///
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Service Account")
///             .build());
///
///         var synchronizer_iam = new IAMMember("synchronizer-iam", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/apigee.synchronizerManager")
///             .member(serviceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var apigeeControlPlaneAccess = new ControlPlaneAccess("apigeeControlPlaneAccess", ControlPlaneAccessArgs.builder()
///             .name(apigeeOrg.name())
///             .synchronizerIdentities(serviceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .analyticsPublisherIdentities(serviceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
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
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   apigee:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: apigee.googleapis.com
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${project.projectId}
///       runtimeType: HYBRID
///     options:
///       dependsOn:
///         - ${apigee}
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: my-account
///       displayName: Service Account
///   synchronizer-iam:
///     type: gcp:projects:IAMMember
///     properties:
///       project: ${project.projectId}
///       role: roles/apigee.synchronizerManager
///       member: serviceAccount:${serviceAccount.email}
///   apigeeControlPlaneAccess:
///     type: gcp:apigee:ControlPlaneAccess
///     name: apigee_control_plane_access
///     properties:
///       name: ${apigeeOrg.name}
///       synchronizerIdentities:
///         - serviceAccount:${serviceAccount.email}
///       analyticsPublisherIdentities:
///         - serviceAccount:${serviceAccount.email}
/// ```
///
///
/// ## Import
///
/// ControlPlaneAccess can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}/controlPlaneAccess`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ControlPlaneAccess can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/controlPlaneAccess:ControlPlaneAccess default organizations/{{name}}/controlPlaneAccess
/// $ pulumi import gcp:apigee/controlPlaneAccess:ControlPlaneAccess default {{name}}
/// ```
class ControlPlaneAccess extends pulumi.CustomResource {
  /// Array of service accounts authorized to publish analytics data to the control plane, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  late final pulumi.Output<List<String>?> analyticsPublisherIdentities;
  /// Name of the Apigee organization.
  late final pulumi.Output<String> name;
  /// Array of service accounts to grant access to control plane resources (for the Synchronizer component), each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  late final pulumi.Output<List<String>?> synchronizerIdentities;

  /// Creates a new [ControlPlaneAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlPlaneAccess]. {@macro pulumi_apigee_control_plane_access_control_plane_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlPlaneAccess(
    String name, {
    ControlPlaneAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/controlPlaneAccess:ControlPlaneAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyticsPublisherIdentities = registerOutput<List<String>?>('analyticsPublisherIdentities');
    this.name = registerOutput<String>('name');
    synchronizerIdentities = registerOutput<List<String>?>('synchronizerIdentities');
  }

  /// Gets an existing [ControlPlaneAccess] resource's state with the given [name] and [id].
  static ControlPlaneAccess get(
    String name,
    pulumi.Input<String> id, {
    ControlPlaneAccessState? state,
  }) {
    return ControlPlaneAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ControlPlaneAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/controlPlaneAccess:ControlPlaneAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyticsPublisherIdentities = registerOutput<List<String>?>('analyticsPublisherIdentities');
    this.name = registerOutput<String>('name');
    synchronizerIdentities = registerOutput<List<String>?>('synchronizerIdentities');
  }
}
