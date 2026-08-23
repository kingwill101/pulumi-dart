import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_app_args.dart';
import 'developer_app_state.dart';

/// Creates an app associated with a developer.
/// This API associates the developer app with the specified API product
/// and auto-generates an API key for the app to use in calls to API proxies
/// inside that API product.
///
///
/// To get more information about DeveloperApp, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.developers.apps)
/// * How-to Guides
/// * [Creating a developer](https://cloud.google.com/apigee/docs/api-platform/publish/creating-apps-surface-your-api)
///
///
///
/// ## Example Usage
///
/// ### Apigee Developer App Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: projectGoogleProject.projectId,
///     disableVpcPeering: true,
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "instance",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
/// });
/// const apiProduct = new gcp.apigee.ApiProduct("api_product", {
///     orgId: apigeeOrg.id,
///     name: "sample-api",
///     displayName: "A sample API Product",
///     approvalType: "auto",
///     scopes: [
///         "read:weather",
///         "write:reports",
///     ],
/// }, {
///     dependsOn: [apigeeInstance],
/// });
/// const developer = new gcp.apigee.Developer("developer", {
///     email: "john.doe@acme.com",
///     firstName: "John",
///     lastName: "Doe",
///     userName: "john.doe",
///     orgId: apigeeOrg.id,
/// }, {
///     dependsOn: [apigeeInstance],
/// });
/// const apigeeDeveloperApp = new gcp.apigee.DeveloperApp("apigee_developer_app", {
///     name: "sample-app",
///     orgId: apigeeOrg.id,
///     developerId: developer.id,
///     developerEmail: developer.email,
///     callbackUrl: "https://example-call.url",
///     apiProducts: [apiProduct.name],
///     scopes: apiProduct.scopes,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=project_google_project["projectId"],
///     disable_vpc_peering=True)
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="instance",
///     location="us-central1",
///     org_id=apigee_org.id)
/// api_product = gcp.apigee.ApiProduct("api_product",
///     org_id=apigee_org.id,
///     name="sample-api",
///     display_name="A sample API Product",
///     approval_type="auto",
///     scopes=[
///         "read:weather",
///         "write:reports",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[apigee_instance]))
/// developer = gcp.apigee.Developer("developer",
///     email="john.doe@acme.com",
///     first_name="John",
///     last_name="Doe",
///     user_name="john.doe",
///     org_id=apigee_org.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_instance]))
/// apigee_developer_app = gcp.apigee.DeveloperApp("apigee_developer_app",
///     name="sample-app",
///     org_id=apigee_org.id,
///     developer_id=developer.id,
///     developer_email=developer.email,
///     callback_url="https://example-call.url",
///     api_products=[api_product.name],
///     scopes=api_product.scopes)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = projectGoogleProject.ProjectId,
///         DisableVpcPeering = true,
///     });
///
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "instance",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///     });
///
///     var apiProduct = new Gcp.Apigee.ApiProduct("api_product", new()
///     {
///         OrgId = apigeeOrg.Id,
///         Name = "sample-api",
///         DisplayName = "A sample API Product",
///         ApprovalType = "auto",
///         Scopes = new[]
///         {
///             "read:weather",
///             "write:reports",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeInstance,
///         },
///     });
///
///     var developer = new Gcp.Apigee.Developer("developer", new()
///     {
///         Email = "john.doe@acme.com",
///         FirstName = "John",
///         LastName = "Doe",
///         UserName = "john.doe",
///         OrgId = apigeeOrg.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeInstance,
///         },
///     });
///
///     var apigeeDeveloperApp = new Gcp.Apigee.DeveloperApp("apigee_developer_app", new()
///     {
///         Name = "sample-app",
///         OrgId = apigeeOrg.Id,
///         DeveloperId = developer.Id,
///         DeveloperEmail = developer.Email,
///         CallbackUrl = "https://example-call.url",
///         ApiProducts = new[]
///         {
///             apiProduct.Name,
///         },
///         Scopes = apiProduct.Scopes,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.Any(projectGoogleProject.ProjectId),
/// 			DisableVpcPeering: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:     pulumi.String("instance"),
/// 			Location: pulumi.String("us-central1"),
/// 			OrgId:    apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apiProduct, err := apigee.NewApiProduct(ctx, "api_product", &apigee.ApiProductArgs{
/// 			OrgId:        apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			Name:         pulumi.String("sample-api"),
/// 			DisplayName:  pulumi.String("A sample API Product"),
/// 			ApprovalType: pulumi.String("auto"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("read:weather"),
/// 				pulumi.String("write:reports"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		developer, err := apigee.NewDeveloper(ctx, "developer", &apigee.DeveloperArgs{
/// 			Email:     pulumi.String("john.doe@acme.com"),
/// 			FirstName: pulumi.String("John"),
/// 			LastName:  pulumi.String("Doe"),
/// 			UserName:  pulumi.String("john.doe"),
/// 			OrgId:     apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewDeveloperApp(ctx, "apigee_developer_app", &apigee.DeveloperAppArgs{
/// 			Name:           pulumi.String("sample-app"),
/// 			OrgId:          apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DeveloperId:    developer.ID(),
/// 			DeveloperEmail: developer.Email,
/// 			CallbackUrl:    pulumi.String("https://example-call.url"),
/// 			ApiProducts: pulumi.StringArray{
/// 				apiProduct.Name,
/// 			},
/// 			Scopes: apiProduct.Scopes,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_apigee_developerapp" "apigee_developer_app" {
///   name            = "sample-app"
///   org_id          = gcp_apigee_organization.apigee_org.id
///   developer_id    = gcp_apigee_developer.developer.id
///   developer_email = gcp_apigee_developer.developer.email
///   callback_url    = "https://example-call.url"
///   api_products    = [gcp_apigee_apiproduct.api_product.name]
///   scopes          = gcp_apigee_apiproduct.api_product.scopes
/// }
/// resource "gcp_apigee_apiproduct" "api_product" {
///   depends_on    = [gcp_apigee_instance.apigee_instance]
///   org_id        = gcp_apigee_organization.apigee_org.id
///   name          = "sample-api"
///   display_name  = "A sample API Product"
///   approval_type = "auto"
///   scopes        = ["read:weather", "write:reports"]
/// }
/// resource "gcp_apigee_developer" "developer" {
///   depends_on = [gcp_apigee_instance.apigee_instance]
///   email      = "john.doe@acme.com"
///   first_name = "John"
///   last_name  = "Doe"
///   user_name  = "john.doe"
///   org_id     = gcp_apigee_organization.apigee_org.id
/// }
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name     = "instance"
///   location = "us-central1"
///   org_id   = gcp_apigee_organization.apigee_org.id
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   analytics_region    = "us-central1"
///   project_id          = projectGoogleProject.projectId
///   disable_vpc_peering = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.ApiProduct;
/// import com.pulumi.gcp.apigee.ApiProductArgs;
/// import com.pulumi.gcp.apigee.Developer;
/// import com.pulumi.gcp.apigee.DeveloperArgs;
/// import com.pulumi.gcp.apigee.DeveloperApp;
/// import com.pulumi.gcp.apigee.DeveloperAppArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(projectGoogleProject.get("projectId"))
///             .disableVpcPeering(true)
///             .build());
///
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("instance")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .build());
///
///         var apiProduct = new ApiProduct("apiProduct", ApiProductArgs.builder()
///             .orgId(apigeeOrg.id())
///             .name("sample-api")
///             .displayName("A sample API Product")
///             .approvalType("auto")
///             .scopes(
///                 "read:weather",
///                 "write:reports")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeInstance)
///                 .build());
///
///         var developer = new Developer("developer", DeveloperArgs.builder()
///             .email("john.doe@acme.com")
///             .firstName("John")
///             .lastName("Doe")
///             .userName("john.doe")
///             .orgId(apigeeOrg.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeInstance)
///                 .build());
///
///         var apigeeDeveloperApp = new DeveloperApp("apigeeDeveloperApp", DeveloperAppArgs.builder()
///             .name("sample-app")
///             .orgId(apigeeOrg.id())
///             .developerId(developer.id())
///             .developerEmail(developer.email())
///             .callbackUrl("https://example-call.url")
///             .apiProducts(apiProduct.name())
///             .scopes(apiProduct.scopes())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeDeveloperApp:
///     type: gcp:apigee:DeveloperApp
///     name: apigee_developer_app
///     properties:
///       name: sample-app
///       orgId: ${apigeeOrg.id}
///       developerId: ${developer.id}
///       developerEmail: ${developer.email}
///       callbackUrl: https://example-call.url
///       apiProducts:
///         - ${apiProduct.name}
///       scopes: ${apiProduct.scopes}
///   apiProduct:
///     type: gcp:apigee:ApiProduct
///     name: api_product
///     properties:
///       orgId: ${apigeeOrg.id}
///       name: sample-api
///       displayName: A sample API Product
///       approvalType: auto
///       scopes:
///         - read:weather
///         - write:reports
///     options:
///       dependsOn:
///         - ${apigeeInstance}
///   developer:
///     type: gcp:apigee:Developer
///     properties:
///       email: john.doe@acme.com
///       firstName: John
///       lastName: Doe
///       userName: john.doe
///       orgId: ${apigeeOrg.id}
///     options:
///       dependsOn:
///         - ${apigeeInstance}
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: instance
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${projectGoogleProject.projectId}
///       disableVpcPeering: true
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Apigee Developer App Basic Test
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "prj",
///     name: "prj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const apigee = new gcp.projects.Service("apigee", {
///     project: project.projectId,
///     service: "apigee.googleapis.com",
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: project.projectId,
///     disableVpcPeering: true,
/// }, {
///     dependsOn: [apigee],
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "instance",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
/// });
/// const apiProduct = new gcp.apigee.ApiProduct("api_product", {
///     name: "sample-api",
///     orgId: apigeeOrg.id,
///     displayName: "A sample API Product",
///     approvalType: "auto",
///     scopes: [
///         "read:weather",
///         "write:reports",
///         "write:files",
///     ],
/// }, {
///     dependsOn: [apigeeInstance],
/// });
/// const developer = new gcp.apigee.Developer("developer", {
///     email: "john.doe@acme.com",
///     firstName: "John",
///     lastName: "Doe",
///     userName: "john.doe",
///     orgId: apigeeOrg.id,
/// }, {
///     dependsOn: [apigeeInstance],
/// });
/// const apigeeDeveloperApp = new gcp.apigee.DeveloperApp("apigee_developer_app", {
///     name: "sample-app",
///     appFamily: "default",
///     developerEmail: developer.email,
///     orgId: apigeeOrg.id,
///     callbackUrl: "https://example-call.url",
///     keyExpiresIn: "-1",
///     status: "approved",
///     apiProducts: [apiProduct.name],
///     scopes: apiProduct.scopes,
///     attributes: [{
///         name: "sample_name",
///         value: "sample_value",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="prj",
///     name="prj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// apigee = gcp.projects.Service("apigee",
///     project=project.project_id,
///     service="apigee.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=project.project_id,
///     disable_vpc_peering=True,
///     opts = pulumi.ResourceOptions(depends_on=[apigee]))
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="instance",
///     location="us-central1",
///     org_id=apigee_org.id)
/// api_product = gcp.apigee.ApiProduct("api_product",
///     name="sample-api",
///     org_id=apigee_org.id,
///     display_name="A sample API Product",
///     approval_type="auto",
///     scopes=[
///         "read:weather",
///         "write:reports",
///         "write:files",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[apigee_instance]))
/// developer = gcp.apigee.Developer("developer",
///     email="john.doe@acme.com",
///     first_name="John",
///     last_name="Doe",
///     user_name="john.doe",
///     org_id=apigee_org.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_instance]))
/// apigee_developer_app = gcp.apigee.DeveloperApp("apigee_developer_app",
///     name="sample-app",
///     app_family="default",
///     developer_email=developer.email,
///     org_id=apigee_org.id,
///     callback_url="https://example-call.url",
///     key_expires_in="-1",
///     status="approved",
///     api_products=[api_product.name],
///     scopes=api_product.scopes,
///     attributes=[{
///         "name": "sample_name",
///         "value": "sample_value",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "prj",
///         Name = "prj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var apigee = new Gcp.Projects.Service("apigee", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apigee.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = project.ProjectId,
///         DisableVpcPeering = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigee,
///         },
///     });
///
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "instance",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///     });
///
///     var apiProduct = new Gcp.Apigee.ApiProduct("api_product", new()
///     {
///         Name = "sample-api",
///         OrgId = apigeeOrg.Id,
///         DisplayName = "A sample API Product",
///         ApprovalType = "auto",
///         Scopes = new[]
///         {
///             "read:weather",
///             "write:reports",
///             "write:files",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeInstance,
///         },
///     });
///
///     var developer = new Gcp.Apigee.Developer("developer", new()
///     {
///         Email = "john.doe@acme.com",
///         FirstName = "John",
///         LastName = "Doe",
///         UserName = "john.doe",
///         OrgId = apigeeOrg.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeInstance,
///         },
///     });
///
///     var apigeeDeveloperApp = new Gcp.Apigee.DeveloperApp("apigee_developer_app", new()
///     {
///         Name = "sample-app",
///         AppFamily = "default",
///         DeveloperEmail = developer.Email,
///         OrgId = apigeeOrg.Id,
///         CallbackUrl = "https://example-call.url",
///         KeyExpiresIn = "-1",
///         Status = "approved",
///         ApiProducts = new[]
///         {
///             apiProduct.Name,
///         },
///         Scopes = apiProduct.Scopes,
///         Attributes = new[]
///         {
///             new Gcp.Apigee.Inputs.DeveloperAppAttributeArgs
///             {
///                 Name = "sample_name",
///                 Value = "sample_value",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("prj"),
/// 			Name:           pulumi.String("prj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigee2, err := projects.NewService(ctx, "apigee", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("apigee.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         project.ProjectId,
/// 			DisableVpcPeering: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigee2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:     pulumi.String("instance"),
/// 			Location: pulumi.String("us-central1"),
/// 			OrgId:    apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apiProduct, err := apigee.NewApiProduct(ctx, "api_product", &apigee.ApiProductArgs{
/// 			Name:         pulumi.String("sample-api"),
/// 			OrgId:        apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName:  pulumi.String("A sample API Product"),
/// 			ApprovalType: pulumi.String("auto"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("read:weather"),
/// 				pulumi.String("write:reports"),
/// 				pulumi.String("write:files"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		developer, err := apigee.NewDeveloper(ctx, "developer", &apigee.DeveloperArgs{
/// 			Email:     pulumi.String("john.doe@acme.com"),
/// 			FirstName: pulumi.String("John"),
/// 			LastName:  pulumi.String("Doe"),
/// 			UserName:  pulumi.String("john.doe"),
/// 			OrgId:     apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewDeveloperApp(ctx, "apigee_developer_app", &apigee.DeveloperAppArgs{
/// 			Name:           pulumi.String("sample-app"),
/// 			AppFamily:      pulumi.String("default"),
/// 			DeveloperEmail: developer.Email,
/// 			OrgId:          apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			CallbackUrl:    pulumi.String("https://example-call.url"),
/// 			KeyExpiresIn:   pulumi.String("-1"),
/// 			Status:         pulumi.String("approved"),
/// 			ApiProducts: pulumi.StringArray{
/// 				apiProduct.Name,
/// 			},
/// 			Scopes: apiProduct.Scopes,
/// 			Attributes: apigee.DeveloperAppAttributeArray{
/// 				&apigee.DeveloperAppAttributeArgs{
/// 					Name:  pulumi.String("sample_name"),
/// 					Value: pulumi.String("sample_value"),
/// 				},
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_apigee_developerapp" "apigee_developer_app" {
///   name            = "sample-app"
///   app_family      = "default"
///   developer_email = gcp_apigee_developer.developer.email
///   org_id          = gcp_apigee_organization.apigee_org.id
///   callback_url    = "https://example-call.url"
///   key_expires_in  = "-1"
///   status          = "approved"
///   api_products    = [gcp_apigee_apiproduct.api_product.name]
///   scopes          = gcp_apigee_apiproduct.api_product.scopes
///   attributes {
///     name  = "sample_name"
///     value = "sample_value"
///   }
/// }
/// resource "gcp_apigee_apiproduct" "api_product" {
///   depends_on    = [gcp_apigee_instance.apigee_instance]
///   name          = "sample-api"
///   org_id        = gcp_apigee_organization.apigee_org.id
///   display_name  = "A sample API Product"
///   approval_type = "auto"
///   scopes        = ["read:weather", "write:reports", "write:files"]
/// }
/// resource "gcp_apigee_developer" "developer" {
///   depends_on = [gcp_apigee_instance.apigee_instance]
///   email      = "john.doe@acme.com"
///   first_name = "John"
///   last_name  = "Doe"
///   user_name  = "john.doe"
///   org_id     = gcp_apigee_organization.apigee_org.id
/// }
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name     = "instance"
///   location = "us-central1"
///   org_id   = gcp_apigee_organization.apigee_org.id
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on          = [gcp_projects_service.apigee]
///   analytics_region    = "us-central1"
///   project_id          = gcp_organizations_project.project.project_id
///   disable_vpc_peering = true
/// }
/// resource "gcp_projects_service" "apigee" {
///   depends_on = [time_sleep.wait_60_seconds]
///   project    = gcp_organizations_project.project.project_id
///   service    = "apigee.googleapis.com"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_organizations_project.project]
///   create_duration = "60s"
/// }
/// resource "gcp_organizations_project" "project" {
///   project_id      = "prj"
///   name            = "prj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.ApiProduct;
/// import com.pulumi.gcp.apigee.ApiProductArgs;
/// import com.pulumi.gcp.apigee.Developer;
/// import com.pulumi.gcp.apigee.DeveloperArgs;
/// import com.pulumi.gcp.apigee.DeveloperApp;
/// import com.pulumi.gcp.apigee.DeveloperAppArgs;
/// import com.pulumi.gcp.apigee.inputs.DeveloperAppAttributeArgs;
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
///             .projectId("prj")
///             .name("prj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var apigee = new Service("apigee", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apigee.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(project.projectId())
///             .disableVpcPeering(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigee)
///                 .build());
///
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("instance")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .build());
///
///         var apiProduct = new ApiProduct("apiProduct", ApiProductArgs.builder()
///             .name("sample-api")
///             .orgId(apigeeOrg.id())
///             .displayName("A sample API Product")
///             .approvalType("auto")
///             .scopes(
///                 "read:weather",
///                 "write:reports",
///                 "write:files")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeInstance)
///                 .build());
///
///         var developer = new Developer("developer", DeveloperArgs.builder()
///             .email("john.doe@acme.com")
///             .firstName("John")
///             .lastName("Doe")
///             .userName("john.doe")
///             .orgId(apigeeOrg.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeInstance)
///                 .build());
///
///         var apigeeDeveloperApp = new DeveloperApp("apigeeDeveloperApp", DeveloperAppArgs.builder()
///             .name("sample-app")
///             .appFamily("default")
///             .developerEmail(developer.email())
///             .orgId(apigeeOrg.id())
///             .callbackUrl("https://example-call.url")
///             .keyExpiresIn("-1")
///             .status("approved")
///             .apiProducts(apiProduct.name())
///             .scopes(apiProduct.scopes())
///             .attributes(DeveloperAppAttributeArgs.builder()
///                 .name("sample_name")
///                 .value("sample_value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeDeveloperApp:
///     type: gcp:apigee:DeveloperApp
///     name: apigee_developer_app
///     properties:
///       name: sample-app
///       appFamily: default
///       developerEmail: ${developer.email}
///       orgId: ${apigeeOrg.id}
///       callbackUrl: https://example-call.url
///       keyExpiresIn: '-1'
///       status: approved
///       apiProducts:
///         - ${apiProduct.name}
///       scopes: ${apiProduct.scopes}
///       attributes:
///         - name: sample_name
///           value: sample_value
///   apiProduct:
///     type: gcp:apigee:ApiProduct
///     name: api_product
///     properties:
///       name: sample-api
///       orgId: ${apigeeOrg.id}
///       displayName: A sample API Product
///       approvalType: auto
///       scopes:
///         - read:weather
///         - write:reports
///         - write:files
///     options:
///       dependsOn:
///         - ${apigeeInstance}
///   developer:
///     type: gcp:apigee:Developer
///     properties:
///       email: john.doe@acme.com
///       firstName: John
///       lastName: Doe
///       userName: john.doe
///       orgId: ${apigeeOrg.id}
///     options:
///       dependsOn:
///         - ${apigeeInstance}
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: instance
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${project.projectId}
///       disableVpcPeering: true
///     options:
///       dependsOn:
///         - ${apigee}
///   apigee:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: apigee.googleapis.com
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: prj
///       name: prj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
/// ```
///
///
/// ## Import
///
/// DeveloperApp can be imported using any of these accepted formats:
///
/// * `{{org_id}}/developers/{{developer_email}}/apps/{{name}}`
/// * `{{org_id}}/{{developer_email}}/{{name}}`
///
///
/// When using the `pulumi import` command, DeveloperApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/developerApp:DeveloperApp default {{org_id}}/developers/{{developer_email}}/apps/{{name}}
/// $ pulumi import gcp:apigee/developerApp:DeveloperApp default {{org_id}}/{{developer_email}}/{{name}}
/// ```
class DeveloperApp extends pulumi.CustomResource {
  /// List of API products associated with the developer app.
  late final pulumi.Output<List<String>?> apiProducts;
  /// Developer app family.
  late final pulumi.Output<String> appFamily;
  /// ID of the developer app. This ID is not user specified but is
  /// automatically generated on app creation. appId is a UUID.
  late final pulumi.Output<String> appId;
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to developer apps.
  late final pulumi.Output<String> callbackUrl;
  /// Optionally specify a static consumer key for the developer app's credential.
  /// If not set, the API auto-generates a key. The consumer key must be unique
  /// across all developer apps in an organization. Changing this field forces the
  /// resource to be recreated.
  /// This is a write-only input used at create time: the provider creates the
  /// credential with this key via the keys API and removes the auto-generated
  /// one. The effective key is exposed in the `credentials` output.
  late final pulumi.Output<String?> consumerKey;
  /// Optionally specify a static consumer secret for the developer app's
  /// credential. Required if `consumerKey` is specified. If not set, the API
  /// auto-generates a secret. Changing this field forces the resource to be
  /// recreated.
  /// This is a write-only input used at create time; the effective secret is
  /// exposed in the `credentials` output.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> consumerSecret;
  /// Time at which the developer was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// Output only. Set of credentials for the developer app consisting of
  /// the consumer key/secret pairs associated with the API products.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> credentials;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Email address of the developer.
  /// This value is used to uniquely identify the developer in Apigee hybrid.
  /// Note that the email address has to be in lowercase only.
  late final pulumi.Output<String> developerEmail;
  /// ID of the developer.
  late final pulumi.Output<String> developerId;
  /// Expiration time, in milliseconds, for the consumer key that is generated
  /// for the developer app. If not set or left to the default value of -1,
  /// the API key never expires. The expiration time can't be updated after it is set.
  late final pulumi.Output<String?> keyExpiresIn;
  /// Time at which the developer was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// Name of the developer app.
  late final pulumi.Output<String> name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  late final pulumi.Output<List<String>?> scopes;
  /// Status of the credential. Valid values include approved or revoked.
  late final pulumi.Output<String> status;

  /// Creates a new [DeveloperApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeveloperApp]. {@macro pulumi_apigee_developer_app_developer_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeveloperApp(
    String name, {
    DeveloperAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/developerApp:DeveloperApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiProducts = registerOutput<List<String>?>('apiProducts');
    appFamily = registerOutput<String>('appFamily');
    appId = registerOutput<String>('appId');
    attributes = registerOutput<List<Map<String, dynamic>>?>('attributes');
    callbackUrl = registerOutput<String>('callbackUrl');
    consumerKey = registerOutput<String?>('consumerKey');
    consumerSecret = registerOutput<String?>('consumerSecret');
    createdAt = registerOutput<String>('createdAt');
    credentials = registerOutput<List<Map<String, dynamic>>>('credentials');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    developerEmail = registerOutput<String>('developerEmail');
    developerId = registerOutput<String>('developerId');
    keyExpiresIn = registerOutput<String?>('keyExpiresIn');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    scopes = registerOutput<List<String>?>('scopes');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [DeveloperApp] resource's state with the given [name] and [id].
  static DeveloperApp get(
    String name,
    pulumi.Input<String> id, {
    DeveloperAppState? state,
  }) {
    return DeveloperApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeveloperApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/developerApp:DeveloperApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiProducts = registerOutput<List<String>?>('apiProducts');
    appFamily = registerOutput<String>('appFamily');
    appId = registerOutput<String>('appId');
    attributes = registerOutput<List<Map<String, dynamic>>?>('attributes');
    callbackUrl = registerOutput<String>('callbackUrl');
    consumerKey = registerOutput<String?>('consumerKey');
    consumerSecret = registerOutput<String?>('consumerSecret');
    createdAt = registerOutput<String>('createdAt');
    credentials = registerOutput<List<Map<String, dynamic>>>('credentials');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    developerEmail = registerOutput<String>('developerEmail');
    developerId = registerOutput<String>('developerId');
    keyExpiresIn = registerOutput<String?>('keyExpiresIn');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    scopes = registerOutput<List<String>?>('scopes');
    status = registerOutput<String>('status');
  }
}
